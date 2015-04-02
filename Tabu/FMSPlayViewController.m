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
@synthesize db;
@synthesize cardCounter;
@synthesize cardCount;
// Game settings
@synthesize customGame;
// View components
@synthesize cardWord;
@synthesize taboo1;
@synthesize taboo2;
@synthesize taboo3;
@synthesize taboo4;
@synthesize taboo5;
@synthesize passCardGestureRecognizer;

const double DEFAULT_TIME = 60.0;

- (id)initWithCustomGame:(FMSCustomGame *)gameConfig {
    self = [super initWithNibName:@"FMSPlayViewController" bundle:nil];
    if (self) {
        customGame = gameConfig;
    }
    return self;
}

- (void)timerTicked:(NSTimer*)timer setTime:(NSNumber *)time {
    // decrement timer 1 … this is your UI, tick down and redraw
    counter -= 1.0;
    if (counter < 0) {
        [db closeDB];
        [self.timer invalidate];
        FMSScoreViewController *scoreViewController = [[FMSScoreViewController alloc]initWithCustomGameConf:customGame];
        [self.navigationController pushViewController:scoreViewController animated:YES];
    } else {
        [self setTimerLabelCurrentTime:counter];
        [progressView setProgress:counter/[time doubleValue] animated:YES];
    }
}

- (void) setTimerLabelCurrentTime:(int)currentTime {
    NSMutableString *timerLabelText = [[NSMutableString alloc]init];
    [timerLabelText appendString:[[NSNumber numberWithFloat:currentTime] stringValue]];
    [timerLabelText appendString:@"''"];
    timerLabel.text = timerLabelText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadPassCardGestureRecognizer];
    db = [FMSTabooDBManager getSharedInstance];
    cardCounter = 1;
    cardCount = [db getCardsCount];
    [self setTimerLabelCurrentTime:customGame.time];
    [self loadCard];
    [self startTimer];
}

- (void)startTimer {
    SEL selector = @selector(timerTicked:setTime:);
    NSMethodSignature *signature = [self methodSignatureForSelector:selector];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    NSNumber *time = [[NSNumber alloc]initWithInt:DEFAULT_TIME];
    counter = DEFAULT_TIME;
    if (customGame != nil) {
        // Custom game
        time = [NSNumber numberWithInt:customGame.time];
        counter = customGame.time;
    }
    
    // Set the arguments
    [invocation setTarget:self];
    [invocation setSelector:selector];
    [invocation setArgument:&time atIndex:3];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1 invocation:invocation repeats:YES];
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
    [customGame incrementTeamScore];
    [self loadCard];
}

- (IBAction)incrementTaboos {
    [customGame incrementTeamTaboos];
    [self loadCard];
}

@end

