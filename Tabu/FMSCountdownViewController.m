//
//  FMSCountdownViewController.m
//  Tabu
//
//  Created by Félix on 11/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSCountdownViewController.h"
#import "FMSPlayViewController.h"
#import "FMSPreQuickPlayViewController.h"

@interface FMSCountdownViewController ()

@end

@implementation FMSCountdownViewController

@synthesize countdown;
@synthesize countdownLabel;
@synthesize timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self startCountdown];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)countdownTick {
    if (countdown <= 0) {
        [self startGame];
    } else {
        countdown--;
        countdownLabel.text = [[NSNumber numberWithInteger:countdown]stringValue];
    }
}

- (void)startCountdown {
    countdown = 3;
    countdownLabel.text = [[NSNumber numberWithInteger:countdown]stringValue];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countdownTick) userInfo:nil repeats:YES];
}

- (IBAction)startGame {
    FMSPlayViewController *playViewController = [[FMSPlayViewController alloc]init];
    [self.navigationController pushViewController:playViewController animated:YES];
    [self.timer invalidate];
}

- (IBAction)cancelCountdown {
    [self.navigationController popViewControllerAnimated:YES];
    [self.timer invalidate];
}

@end
