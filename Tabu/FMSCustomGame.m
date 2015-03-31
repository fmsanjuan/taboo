//
//  FMSCustomGame.m
//  Tabu
//
//  Created by Félix on 19/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSCustomGame.h"

@implementation FMSCustomGame

// Game settings
@synthesize rounds;
@synthesize teams;
@synthesize time;
@synthesize currentTeam;
@synthesize currentRound;
// Team data
@synthesize teamNames;
@synthesize teamScores;
@synthesize teamTaboos;

- (id)initEmptyCustomGame {
    self = [super init];
    if (self) {
        teamNames = [[NSMutableArray alloc]initWithCapacity:teams];
        teamScores = [[NSMutableArray alloc]initWithCapacity:teams];
        teamTaboos = [[NSMutableArray alloc]initWithCapacity:teams];
        teams = 2;
    }
    return self;
}

- (id)initQuickGameConf {
    self = [super init];
    if (self) {
        rounds = 1;
        teams = 1;
        time = 60;
        currentTeam = 0;
        currentRound = 1;
        teamNames = [[NSMutableArray alloc]init];
        teamScores = [[NSMutableArray alloc]initWithObjects:[NSNumber numberWithInt:0], nil];
        teamTaboos = [[NSMutableArray alloc]initWithObjects:[NSNumber numberWithInt:0], nil];
    }
    return self;
}

- (void)fillScoresAndTaboos {
    for (int i = 0; i < teams; i++) {
        [teamScores addObject:[NSNumber numberWithInt:0]];
        [teamTaboos addObject:[NSNumber numberWithInt:0]];
    }
}

- (void) incrementTeamScore {
    int currentScore = [[teamScores objectAtIndex:currentTeam]intValue];
    currentScore++;
    [teamScores replaceObjectAtIndex:currentTeam withObject:[NSNumber numberWithInt:currentScore]];
}

- (void) incrementTeamTaboos {
    int currentTaboos = [[teamTaboos objectAtIndex:currentTeam]intValue];
    currentTaboos++;
    [teamTaboos replaceObjectAtIndex:currentTeam withObject:[NSNumber numberWithInt:currentTaboos]];
}

- (int) getTeamTaboos:(int)teamNumber {
    return [[teamTaboos objectAtIndex:teamNumber]intValue];
}

- (int) getTeamScore:(int)teamNumber {
    return [[teamScores objectAtIndex:teamNumber]intValue];
}

- (NSString*) getTeamName:(int)teamNumber {
    return [teamNames objectAtIndex:teamNumber];
}

- (void)nextTeam {
    if (currentTeam >= teams-1) {
        currentTeam = 0;
        currentRound++;
    } else {
        currentTeam++;
    }
}

- (BOOL) isLastRound {
    return currentRound >= rounds-1 && currentTeam >= teams-1;
}

- (int) getWinnerTeam {
    int winnerIndex = 0;
    for (int i = 1; i < teams; i++) {
        if ([[self.teamScores objectAtIndex:i]intValue] > [[teamScores objectAtIndex:winnerIndex]intValue]) {
            winnerIndex = i;
        }
    }
    return winnerIndex;
}

@end
