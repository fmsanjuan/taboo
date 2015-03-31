//
//  FMSScoreViewController.m
//  Tabu
//
//  Created by Félix on 1/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSScoreViewController.h"
#import "FMSPreQuickPlayViewController.h"
#import "FMSWelcomeViewController.h"
#import "FMSCountdownViewController.h"
#import "FMSScoreTableViewController.h"

@interface FMSScoreViewController ()

@end

@implementation FMSScoreViewController

@synthesize scoreLabel;
@synthesize taboosLabel;
@synthesize goBackButton;
@synthesize nextRoundButton;
@synthesize repeatButton;
@synthesize nextTeamLabel;
@synthesize finalResultsButton;
// Game settings
@synthesize customGame;

- (id)initWithCustomGameConf:(FMSCustomGame *)gameConf {
    self = [super initWithNibName:@"FMSScoreViewController" bundle:nil];
    if (self) {
        customGame = gameConf;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (customGame.teams > 1) {
        [repeatButton setHidden:YES];
        [goBackButton setHidden:YES];
        nextTeamLabel.text = [customGame getTeamName:customGame.currentTeam];
    } else {
        [nextTeamLabel setHidden:YES];
        [nextRoundButton setHidden:YES];
    }
    if ([customGame isLastRound]) {
        [nextRoundButton setHidden:YES];
    } else {
        [finalResultsButton setHidden:YES];
    }
    scoreLabel.text = [self getScoreLabelText];
    // Taboo label text concatenation
    taboosLabel.text = [self getTabooLabelText];
}

- (NSMutableString *)getScoreLabelText {
    // Score label text concatenation
    NSMutableString *scoreLabelText = [[NSMutableString alloc]init];
    [scoreLabelText appendString:[[NSNumber numberWithInt:[customGame getTeamScore:customGame.currentTeam]]stringValue]];
    [scoreLabelText appendString:@" aciertos"];
    return scoreLabelText;
}

- (NSMutableString *)getTabooLabelText {
    // Taboo label text concatenation
    NSMutableString *taboosLabelText = [[NSMutableString alloc]init];
    [taboosLabelText appendString:[[NSNumber numberWithInt:[customGame getTeamTaboos:customGame.currentTeam]]stringValue]];
    [taboosLabelText appendString:@" tabús"];
    return taboosLabelText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)repeatGame {
    FMSPreQuickPlayViewController *preQuickPlayViewController = [[FMSPreQuickPlayViewController alloc]init];
    [self.navigationController pushViewController:preQuickPlayViewController animated:YES];
}

- (IBAction)backToWelcome {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)nextRound {
    [customGame nextTeam];
    FMSCountdownViewController *countdownViewController = [[FMSCountdownViewController alloc]initWithCustomeGameValues:customGame];
    [self.navigationController pushViewController:countdownViewController animated:YES];
}

- (IBAction)toFinalResults {
    FMSScoreTableViewController *scoreTableViewController = [[FMSScoreTableViewController alloc]initWithCustomGameConf:customGame];
    [self.navigationController pushViewController:scoreTableViewController animated:YES];
}

@end
