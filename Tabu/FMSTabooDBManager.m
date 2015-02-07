//
//  FMSTabooDBManager.m
//  Tabu
//
//  Created by Félix on 5/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSTabooDBManager.h"
#import "FMSTabooCard.h"

static FMSTabooDBManager *sharedInstance = nil;
static sqlite3 *db = nil;
static sqlite3_stmt *statement = nil;

@implementation FMSTabooDBManager

@synthesize dbPath;

+ (FMSTabooDBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
        [sharedInstance connectDB];
    }
    return sharedInstance;
}

- (BOOL)connectDB{
    dbPath = self.getDatabasePath;
    BOOL success = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: dbPath ] == NO) {
        const char *dbpath = [dbPath UTF8String];
        if (sqlite3_open(dbpath, &db) == SQLITE_OK) {
            NSLog(@"Database connection established");
            return  success;
        } else {
            success = NO;
            NSLog(@"Failed to open the database");
        }
    }
    return success;
}

- (NSString*)getDatabasePath {
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSString *path = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"taboo.db"];
    BOOL success = [fileMgr fileExistsAtPath:path];
    if(!success) {
       NSLog(@"Cannot find database '%@'.", path);
    }
    return path;
}

- (FMSTabooCard*) findTabooCardById:(int)cardId {
    const char *dbpath = [dbPath UTF8String];
    if (sqlite3_open(dbpath, &db) == SQLITE_OK) {
        NSString *querySQL = [NSString stringWithFormat:@"select card_id, card_word, taboo1, taboo2, taboo3, taboo4, taboo5 from Cards where card_id = %d",cardId];
        NSLog(@"Query SQL: %@",querySQL);
        const char *query_stmt = [querySQL UTF8String];
        if (sqlite3_prepare_v2(db, query_stmt, -1, &statement, NULL) == SQLITE_OK) {
            if (sqlite3_step(statement) == SQLITE_ROW) {
                // Creating taboo card
                FMSTabooCard *card = [[FMSTabooCard alloc]init];
                // Taboo card id and word
                card.cardId = sqlite3_column_int(statement, 0);
                card.cardWord = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 1)];
                // Taboo words
                card.taboo1 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 2)];
                card.taboo2 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 3)];
                card.taboo3 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 4)];
                card.taboo4 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 5)];
                card.taboo5 = [[NSString alloc] initWithUTF8String:(const char *) sqlite3_column_text(statement, 6)];
                // Returning card
                return card;
            } else {
                NSLog(@"Card not found. Error => %s", sqlite3_errmsg(db));
                return nil;
            }
        } else {
            NSLog(@"Could not execute sqlite3_prepare_v2. Error => %s", sqlite3_errmsg(db));
        }
    }
    return nil;
}

- (int) getCardsCount {
    const char *dbpath = [dbPath UTF8String];
    if (sqlite3_open(dbpath, &db) == SQLITE_OK) {
        NSString *querySQL = [NSString stringWithFormat:@"select count(*) from Cards"];
        const char *query_stmt = [querySQL UTF8String];
        if (sqlite3_prepare_v2(db, query_stmt, -1, &statement, NULL) == SQLITE_OK) {
            if (sqlite3_step(statement) == SQLITE_ROW) {
                int cardCount = sqlite3_column_int(statement, 0);
                // Returning card
                return cardCount;
            } else {
                NSLog(@"Cannot get card count. Error => %s", sqlite3_errmsg(db));
                return -1;
            }
        } else {
            NSLog( @"Failed from sqlite3_prepare_v2. Error is:  %s", sqlite3_errmsg(db));
        }
    }
    return -1;
}


@end
