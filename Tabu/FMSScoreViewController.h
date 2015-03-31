//
//  FMSScoreViewController.h
//  Tabu
//
//  Created by Félix on 1/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMSCustomGame.h"

@interface FMSScoreViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *taboosLabel;
@property (nonatomic, weak) IBOutlet UILabel *nextTeamLabel;
@property (nonatomic, weak) IBOutlet UIButton *repeatButton;
@property (nonatomic, weak) IBOutlet UIButton *goBackButton;
@property (nonatomic, weak) IBOutlet UIButton *nextRoundButton;
@property (nonatomic, weak) IBOutlet UIButton *finalResultsButton;
// Game settings
@property (nonatomic, strong) FMSCustomGame *customGame;

- (id)initWithCustomGameConf:(FMSCustomGame *)gameConf;
- (IBAction)repeatGame;
- (IBAction)backToWelcome;
- (IBAction)toFinalResults;

@end
