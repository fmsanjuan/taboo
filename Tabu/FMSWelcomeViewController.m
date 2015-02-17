//
//  FMSWelcomeViewController.m
//  Tabu
//
//  Created by Félix on 7/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSWelcomeViewController.h"
#import "FMSPreQuickPlayViewController.h"
#import "FMSCustomGameViewController.h"

@interface FMSWelcomeViewController ()

@end

@implementation FMSWelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quickGame {
    FMSPreQuickPlayViewController *preQuickPlayViewController = [[FMSPreQuickPlayViewController alloc]init];
    [self.navigationController pushViewController:preQuickPlayViewController animated:YES];
}

- (IBAction)customGame {
    FMSCustomGameViewController *customGameViewController = [[FMSCustomGameViewController alloc]init];
    [self.navigationController pushViewController:customGameViewController animated:YES];
}

@end
