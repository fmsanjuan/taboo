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

@implementation FMSTabooDBManager

@synthesize db;

+ (FMSTabooDBManager*)getSharedInstance{
    if (!sharedInstance) {
        sharedInstance = [[super allocWithZone:NULL]init];
    }
    [sharedInstance connectDB];
    return sharedInstance;
}

- (BOOL)connectDB{
    db = [FMDatabase databaseWithPath:[self getDatabasePath]];
    if (![db open]) {
        db = nil;
        return NO;
    } else {
        return YES;
    }
}

- (BOOL)closeDB{
    if (db != nil) {
        [db close];
        return YES;
    } else {
        return NO;
    }
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
    FMResultSet *rs = [db executeQueryWithFormat:@"select card_id, card_word, taboo1, taboo2, taboo3, taboo4, taboo5 from Cards where card_id = %d",cardId];
    while ([rs next]) {
        return [self resultSetRowToCard:rs];
    }
    return nil;
}

- (int) getCardsCount {
    FMResultSet *rs = [db executeQuery:@"select count(*) from Cards"];
    while ([rs next]) {
        return [rs intForColumnIndex:0];
    }
    return -1;
}

- (FMSTabooCard*) resultSetRowToCard:(FMResultSet *)rs {
    FMSTabooCard *card = [[FMSTabooCard alloc]init];
    [card setCardId:[rs intForColumnIndex:0]];
    [card setCardWord:[rs stringForColumnIndex:1]];
    [card setTaboo1:[rs stringForColumnIndex:2]];
    [card setTaboo2:[rs stringForColumnIndex:3]];
    [card setTaboo3:[rs stringForColumnIndex:4]];
    [card setTaboo4:[rs stringForColumnIndex:5]];
    [card setTaboo5:[rs stringForColumnIndex:6]];
    
    return card;
}

@end
