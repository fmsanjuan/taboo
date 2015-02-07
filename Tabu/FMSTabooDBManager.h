//
//  FMSTabooDBManager.h
//  Tabu
//
//  Created by Félix on 5/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "FMSTabooCard.h"

@interface FMSTabooDBManager : NSObject

@property (nonatomic) NSString *dbPath;

+ (FMSTabooDBManager*)getSharedInstance;
- (BOOL)connectDB;
- (FMSTabooCard*) findTabooCardById:(int)cardId;
- (int) getCardsCount;
- (NSString*)getDatabasePath;

@end
