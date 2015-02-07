//
//  FMSWelcomeViewController.m
//  Tabu
//
//  Created by Félix on 7/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSWelcomeViewController.h"
#import "FMSPreQuickPlayViewController.h"

@interface FMSWelcomeViewController ()

@end

@implementation FMSWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quickGame {
    FMSPreQuickPlayViewController *preQuickPlayViewController = [[FMSPreQuickPlayViewController alloc]init];
    [[UIApplication sharedApplication].keyWindow setRootViewController:preQuickPlayViewController];
}

@end
