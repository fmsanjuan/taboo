//
//  FMSCountdownViewController.h
//  Tabu
//
//  Created by Félix on 11/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMSCountdownViewController : UIViewController

@property (nonatomic) int countdown;
@property (nonatomic, weak) IBOutlet UILabel *countdownLabel;
@property (nonatomic, weak) NSTimer *timer;

- (void)startCountdown;
- (IBAction)cancelCountdown;
- (IBAction)startGame;
- (void)countdownTick;

@end
