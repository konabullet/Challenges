//
//  ViewController.m
//  Timer
//
//  Created by Yaniv Kerem on 7/12/13.
//  Copyright (c) 2013 Norm Gershon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
    float   timerCount;
    float   timerMidRun;
    __weak IBOutlet UILabel *timerCountLabel;


}
- (IBAction)start:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)stop:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    timerCount = 10000.0;
    [self updateCount];
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)updateCount
{
    int centi = fmod(timerCount, 100);
    int seconds = fmod(timerCount, 6000)/100;
    int minute = timerCount/6000;
    
    timerCountLabel.text = [NSString stringWithFormat:@"%02i:%02i:%02i", minute,seconds, centi];
}


-(void)countDown
{
    timerCount--;
    [self updateCount];
    
    if (timerCount == 0.0) {
        [timer invalidate];
        
        timerCount = 10000.0;
        [self updateCount];
    }
}





- (IBAction)start:(id)sender {
    if (timerCount == 10000 || timerMidRun > 0) {
        //timerCount = timerMidRun;
        timerMidRun = 0;
        [self updateCount];
     timer = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    }
}

- (IBAction)pause:(id)sender {
    if (timerCount < 10000) {
        timerMidRun = timerCount;
        [timer invalidate];
        timer = nil;
    }
}

- (IBAction)stop:(id)sender {
    if (timerCount < 10000) {
    timerCount = 10000.0;
    [self updateCount];
        [timer invalidate];
        timer = nil;
    }
}
@end
