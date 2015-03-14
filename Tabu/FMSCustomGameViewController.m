//
//  FMSCustomGameViewController.m
//  Tabu
//
//  Created by Félix on 16/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSCustomGameViewController.h"
#import "FMSCountdownViewController.h"

@interface FMSCustomGameViewController ()

@end

@implementation FMSCustomGameViewController

@synthesize team1Name;
@synthesize team2Name;
@synthesize team3Label;
@synthesize team3Name;
@synthesize team4Label;
@synthesize team4Name;
@synthesize roundsLabel;
@synthesize timeLabel;
@synthesize customGame;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    customGame = [[FMSCustomGame alloc]initEmptyCustomGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)teamValueChanged: (UIStepper *)teamStepper {
    if (teamStepper.value == 4.0) {
        [team3Label setHidden:NO];
        [team3Name setHidden:NO];
        [team4Label setHidden:NO];
        [team4Name setHidden:NO];
    } else if (teamStepper.value == 3.0) {
        [team3Label setHidden:NO];
        [team3Name setHidden:NO];
        [team4Label setHidden:YES];
        [team4Name setHidden:YES];
    } else {
        [team3Label setHidden:YES];
        [team3Name setHidden:YES];
        [team4Label setHidden:YES];
        [team4Name setHidden:YES];
    }
    customGame.teams = teamStepper.value;
}

- (IBAction)roundValueChanged: (UIStepper *)roundStepper {
    roundsLabel.text = [[NSNumber numberWithDouble:roundStepper.value] stringValue];
    customGame.rounds = roundStepper.value;
}

- (IBAction)timeSliderValueChanged:(UISlider *)timeSlider {
    NSMutableString *timeLabelText = [[NSMutableString alloc]initWithString:[[NSNumber numberWithDouble:timeSlider.value] stringValue]];
    [timeLabelText appendString:@"''"];
    timeLabel.text = timeLabelText;
    customGame.time = timeSlider.value;
}

- (IBAction)startGame {
    customGame.teamNames = [NSMutableArray arrayWithObjects:team1Name.text, team2Name.text, nil];
    [customGame fillScoresAndTaboos];
    
    if (customGame.teams == 3) {
        [customGame.teamNames addObject:team3Name.text];
    } else if (customGame.teams == 4) {
        [customGame.teamNames addObject:team3Name.text];
        [customGame.teamNames addObject:team4Name.text];
    }
    
    FMSCountdownViewController *countdownViewController = [[FMSCountdownViewController alloc]initWithCustomeGameValues:customGame];
    [self.navigationController pushViewController:countdownViewController animated:YES];
}

- (IBAction)goBack {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
