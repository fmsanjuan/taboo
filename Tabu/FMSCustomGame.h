//
//  FMSCustomGame.h
//  Tabu
//
//  Created by Félix on 19/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMSCustomGame : NSObject

// Game settings
@property (nonatomic) int rounds;
@property (nonatomic) int teams;
@property (nonatomic) int time;
@property (nonatomic) int currentTeam;
@property (nonatomic) int currentRound;
// Team data
@property (nonatomic, strong) NSMutableArray *teamNames;
@property (nonatomic, strong) NSMutableArray *teamScores;
@property (nonatomic, strong) NSMutableArray *teamTaboos;

- (id)initEmptyCustomGame;
- (instancetype)initQuickGameConf;

- (void)incrementTeamScore;
- (void)incrementTeamTaboos;
- (int)getTeamTaboos:(int)teamNumber;
- (int)getTeamScore:(int)teamNumber;
- (NSString*) getTeamName:(int)teamNumber;
- (void)nextTeam;
- (BOOL)isLastRound;
- (void)fillScoresAndTaboos;

@end
