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

@interface FMSScoreViewController ()

@end

@implementation FMSScoreViewController

@synthesize scoreLabel;
@synthesize score;
@synthesize taboos;
@synthesize taboosLabel;

- (id)initWithScoreAndTaboos:(int)scoreResult :(int)taboosResult {
    self = [super initWithNibName:@"FMSScoreViewController" bundle:nil];
    if (self) {
        score = scoreResult;
        taboos = taboosResult;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    scoreLabel.text = [[NSNumber numberWithInt:score]stringValue];
    NSMutableString *taboosLabelText = [[NSMutableString alloc]init];
    [taboosLabelText appendString:[[NSNumber numberWithInt:taboos]stringValue]];
    [taboosLabelText appendString:@" tabús"];
    taboosLabel.text = taboosLabelText;
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

@end
