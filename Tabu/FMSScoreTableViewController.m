//
//  FMSScoreTableViewController.m
//  Tabu
//
//  Created by Félix on 29/3/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSScoreTableViewController.h"

@interface FMSScoreTableViewController ()

@end

@implementation FMSScoreTableViewController

@synthesize team1NameLabel;
@synthesize team1ScoreLabel;
@synthesize team2NameLabel;
@synthesize team2ScoreLabel;
@synthesize team3NameLabel;
@synthesize team3ScoreLabel;
@synthesize team4NameLabel;
@synthesize team4ScoreLabel;
@synthesize winnerLabel;
// Game settings
@synthesize customGame;

- (id)initWithCustomGameConf:(FMSCustomGame *)gameConf {
    self = [super initWithNibName:@"FMSScoreTableViewController" bundle:nil];
    if (self) {
        customGame = gameConf;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    team1NameLabel.text = [customGame getTeamName:0];
    team1ScoreLabel.text = [[NSNumber numberWithInt:[customGame getTeamScore:0]]stringValue];
    team2NameLabel.text = [customGame getTeamName:1];
    team2ScoreLabel.text = [[NSNumber numberWithInt:[customGame getTeamScore:1]]stringValue];
    winnerLabel.text = [customGame getTeamName:[customGame getWinnerTeam]];
    if (customGame.teams == 3) {
        team3NameLabel.text = [customGame getTeamName:2];
        team3ScoreLabel.text = [[NSNumber numberWithInt:[customGame getTeamScore:2]]stringValue];
        [team4NameLabel setHidden:YES];
        [team4ScoreLabel setHidden:YES];
    } else if (customGame.teams ==4) {
        team3NameLabel.text = [customGame getTeamName:2];
        team3ScoreLabel.text = [[NSNumber numberWithInt:[customGame getTeamScore:2]]stringValue];
        team4NameLabel.text = [customGame getTeamName:3];
        team4ScoreLabel.text = [[NSNumber numberWithInt:[customGame getTeamScore:3]]stringValue];
    } else {
        [team3NameLabel setHidden:YES];
        [team3ScoreLabel setHidden:YES];
        [team4NameLabel setHidden:YES];
        [team4ScoreLabel setHidden:YES];
    }
}

- (IBAction)backToWelcome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
