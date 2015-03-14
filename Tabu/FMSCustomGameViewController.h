//
//  FMSCustomGameViewController.h
//  Tabu
//
//  Created by Félix on 16/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMSCustomGame.h"

@interface FMSCustomGameViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *roundsLabel;
@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UITextField *team1Name;
@property (nonatomic, weak) IBOutlet UITextField *team2Name;
@property (nonatomic, weak) IBOutlet UILabel *team3Label;
@property (nonatomic, weak) IBOutlet UITextField *team3Name;
@property (nonatomic, weak) IBOutlet UILabel *team4Label;
@property (nonatomic, weak) IBOutlet UITextField *team4Name;
@property (nonatomic, retain) FMSCustomGame *customGame;

- (IBAction)teamValueChanged: (id)sender;
- (IBAction)roundValueChanged: (id)sender;
- (IBAction)timeSliderValueChanged:(UISlider *)timeSlider;
- (IBAction)startGame;
- (IBAction)goBack;

@end
