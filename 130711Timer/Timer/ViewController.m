//
//  ViewController.m
//  Timer
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
    float   timerCount;
    float   timerPause;
    __weak IBOutlet UILabel *timerCountLabel;

    __weak IBOutlet UIButton *switchLabel;
}
- (IBAction)start:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)switchStopwatchTimer:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *switchButton;

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
    if ([switchLabel.titleLabel.text isEqual: @"Timer"]) {
        timerCountLabel.font = [timerCountLabel.font fontWithSize:12 + (30*(timerCount/10000))];
    }else if (timerCount <= 10000){
    timerCountLabel.font = [timerCountLabel.font fontWithSize:42 + (30*(timerCount/10000))];
    }else {
          timerCountLabel.font = [timerCountLabel.font fontWithSize:72];
    }
}

-(void)countDown
{
    if ([switchLabel.titleLabel.text isEqual: @"Timer"]){
    timerCount--;
    [self updateCount];
    
    if (timerCount == 0.0) {
        [timer invalidate];
        
        timerCount = 10000.0;
        [self updateCount];
    }
    } else {
        timerCount++;
        [self updateCount];
    }
}



- (IBAction)start:(id)sender {
    if (timer == nil) {
     timer = [NSTimer scheduledTimerWithTimeInterval:0.01f target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    }
}

- (IBAction)pause:(id)sender {
    if ((timerCount < 10000 && [switchLabel.titleLabel.text isEqual: @"Timer"]) || (timerCount > 0 && [switchLabel.titleLabel.text isEqual: @"Stopwatch"])) {
        timerPause = timerCount;
        [timer invalidate];
        timer = nil;
    }
}

- (IBAction)stop:(id)sender {
    if ((timerCount < 10000 && [switchLabel.titleLabel.text isEqual: @"Timer"])) {
    timerCount = 10000.0;
    } else if ([switchLabel.titleLabel.text isEqual: @"Stopwatch"]){
        timerCount = 0;
    }
    [self updateCount];
        [timer invalidate];
        timer = nil;
    
}

- (IBAction)switchStopwatchTimer:(id)sender {
        if ([switchLabel.titleLabel.text isEqual: @"Timer"]) {
            [switchLabel setTitle:@"Stopwatch" forState:UIControlStateNormal];
            timerCount = 0.0;
            [self updateCount];
        } else {
            [switchLabel setTitle:@"Timer" forState:UIControlStateNormal];
            timerCount = 10000.0;
            [self updateCount];
        }
    [timer invalidate];
    timer = nil;
}
@end
