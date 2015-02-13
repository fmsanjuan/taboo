//
//  FMSPlayViewController.m
//  Tabu
//
//  Created by Félix on 7/2/15.
//  Copyright (c) 2015 fmsanjuan. All rights reserved.
//

#import "FMSPlayViewController.h"
#import "FMSScoreViewController.h"
#import "FMSTabooDBManager.h"
#import "FMSTabooCard.h"

@interface FMSPlayViewController ()

@end

@implementation FMSPlayViewController

@synthesize timer;
@synthesize timerLabel;
@synthesize progressView;
@synthesize counter;
@synthesize score;
@synthesize taboos;
@synthesize db;
@synthesize cardCounter;
@synthesize cardCount;
// View components
@synthesize cardWord;
@synthesize taboo1;
@synthesize taboo2;
@synthesize taboo3;
@synthesize taboo4;
@synthesize taboo5;
@synthesize passCardGestureRecognizer;

const double DEFAULT_TIME = 60.0;


- (void)timerTicked:(NSTimer*)timer {
    // decrement timer 1 … this is your UI, tick down and redraw
    counter -= 1.0;
    if (counter < 0) {
        FMSScoreViewController *scoreViewController = [[FMSScoreViewController alloc]initWithScoreAndTaboos:score :taboos];
        [self.navigationController pushViewController:scoreViewController animated:YES];
        [self.timer invalidate];
    } else {
        NSMutableString *timerLabelText = [[NSMutableString alloc]init];
        [timerLabelText appendString:[[NSNumber numberWithFloat:counter] stringValue]];
        [timerLabelText appendString:@"''"];
        timerLabel.text = timerLabelText;
        [progressView setProgress:counter/DEFAULT_TIME animated:YES];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    db = [FMSTabooDBManager getSharedInstance];
    cardCounter = 1;
    cardCount = [db getCardsCount];
    [self loadCard];
    counter = DEFAULT_TIME;
    score = 0;
    [self.view addSubview:self.progressView];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTicked:) userInfo:nil repeats:YES];
    [self loadPassCardGestureRecognizer];
}

- (void)loadPassCardGestureRecognizer {
    passCardGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(loadCard)];
    [passCardGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
    [[self view]addGestureRecognizer:passCardGestureRecognizer];
}

- (void)loadCard {
    FMSTabooCard *card = [[FMSTabooDBManager getSharedInstance]findTabooCardById:cardCounter];
    cardWord.text = card.cardWord;
    taboo1.text = card.taboo1;
    taboo2.text = card.taboo2;
    taboo3.text = card.taboo3;
    taboo4.text = card.taboo4;
    taboo5.text = card.taboo5;
    if (cardCounter >= cardCount) {
        cardCounter = 1;
    } else {
        cardCounter++;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementScore {
    score++;
    [self loadCard];
}

- (IBAction)incrementTaboos {
    taboos++;
    [self loadCard];
}

@end

