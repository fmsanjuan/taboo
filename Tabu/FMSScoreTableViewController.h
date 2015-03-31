//
//  FMSScoreTableViewController.h
//  Tabu
//
//  Created by Félix on 29/3/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMSCustomGame.h"

@interface FMSScoreTableViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *team1NameLabel;
@property (nonatomic, weak) IBOutlet UILabel *team2NameLabel;
@property (nonatomic, weak) IBOutlet UILabel *team3NameLabel;
@property (nonatomic, weak) IBOutlet UILabel *team4NameLabel;
@property (nonatomic, weak) IBOutlet UILabel *team1ScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *team2ScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *team3ScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *team4ScoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *winnerLabel;
// Game settings
@property (nonatomic, strong) FMSCustomGame *customGame;

- (id)initWithCustomGameConf:(FMSCustomGame *)gameConf;
- (IBAction)backToWelcome;

@end
