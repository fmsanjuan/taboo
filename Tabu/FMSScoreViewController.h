//
//  FMSScoreViewController.h
//  Tabu
//
//  Created by Félix on 1/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMSScoreViewController : UIViewController

@property (nonatomic) int score;
@property (nonatomic) int taboos;
@property (retain, nonatomic) IBOutlet UILabel *scoreLabel;
@property (retain, nonatomic) IBOutlet UILabel *taboosLabel;

- (id)initWithScoreAndTaboos:(int)scoreResult :(int)taboosResult;
- (IBAction)repeatGame;
- (IBAction)backToWelcome;

@end
