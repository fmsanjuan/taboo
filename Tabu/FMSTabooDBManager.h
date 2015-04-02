//
//  FMSTabooDBManager.h
//  Tabu
//
//  Created by Félix on 5/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMSTabooCard.h"
#import <FMDatabase.h>
#import <FMResultSet.h>

@interface FMSTabooDBManager : NSObject

@property (nonatomic) FMDatabase *db;

+ (FMSTabooDBManager*)getSharedInstance;
- (BOOL)connectDB;
- (BOOL)closeDB;
- (FMSTabooCard*) findTabooCardById:(int)cardId;
- (int) getCardsCount;
- (NSString*)getDatabasePath;
- (FMSTabooCard*)resultSetRowToCard:(FMResultSet *)rs;

@end
