//
//  FMSPlayingViewController.h
//  Tabu
//
//  Created by Félix on 18/1/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMSTabooDBManager.h"

@interface FMSPlayingViewController : UIViewController

@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic) float counter;
@property (nonatomic) int score;
@property (nonatomic) int taboos;
@property (nonatomic) int cardCounter;
@property (nonatomic) int cardCount;
@property (nonatomic) FMSTabooDBManager *db;

// View components
@property (nonatomic, strong) IBOutlet UIProgressView *progressView;
@property (nonatomic, strong) IBOutlet UILabel *timerLabel;
@property (nonatomic, strong) IBOutlet UILabel *cardWord;
@property (nonatomic, strong) IBOutlet UILabel *taboo1;
@property (nonatomic, strong) IBOutlet UILabel *taboo2;
@property (nonatomic, strong) IBOutlet UILabel *taboo3;
@property (nonatomic, strong) IBOutlet UILabel *taboo4;
@property (nonatomic, strong) IBOutlet UILabel *taboo5;
@property (nonatomic, strong) UISwipeGestureRecognizer *passCardGestureRecognizer;

extern const double DEFAULT_TIME;

@end
