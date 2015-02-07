//
//  FMSPreQuickPlayViewController.m
//  Tabu
//
//  Created by Félix on 7/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSPreQuickPlayViewController.h"
#import "FMSPlayViewController.h"

@interface FMSPreQuickPlayViewController ()

@end

@implementation FMSPreQuickPlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startQuickGame {
    FMSPlayViewController *playViewController = [[FMSPlayViewController alloc]init];
    [[UIApplication sharedApplication].keyWindow setRootViewController:playViewController];
}

@end
