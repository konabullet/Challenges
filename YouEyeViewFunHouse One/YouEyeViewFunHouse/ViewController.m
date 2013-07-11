//
//  ViewController.m
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    __weak IBOutlet UIButton *onOffButton;
    __weak IBOutlet UIButton *downAndBiggerButton;
    __weak IBOutlet UIButton *colorButton;
    __weak IBOutlet UISlider *slider;
    __weak IBOutlet UILabel *sliderLabel;
    __weak IBOutlet UILabel *whiteBoxOne;
    __weak IBOutlet UILabel *whiteBoxTwo;
    __weak IBOutlet UILabel *blueAnswerBox;
    __weak IBOutlet UIImageView *image;
    UIImage * blackAndWhite;
    UIImage * color;
    

}
- (IBAction)changeColor:(id)sender;
- (IBAction)downAndBigger:(id)sender;
- (IBAction)toggleButton:(id)sender;
- (IBAction)slideValue:(id)sender;
- (IBAction)mathButton:(id)sender;
- (IBAction)colorizeButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    blackAndWhite = [UIImage imageNamed:@"MobileMakersLogo_black_and_white.png"];
    color = [UIImage imageNamed:@"MobileMakersLogo_color.png"];
    [image setImage:blackAndWhite];
	// Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)changeColor:(id)sender {
    NSArray* colorArray = [NSArray arrayWithObjects:[UIColor greenColor],[UIColor yellowColor], [UIColor redColor], [UIColor purpleColor], nil];
    self.view.backgroundColor =  [colorArray objectAtIndex:random()%4];
    colorButton.tintColor = [colorArray objectAtIndex:random()%4];
    colorButton.titleLabel.backgroundColor = [colorArray objectAtIndex:random()%4];
}

- (IBAction)downAndBigger:(id)sender {
    float x;
    float y;
    
    x = downAndBiggerButton.center.x;
    y = downAndBiggerButton.center.y;
    
    [downAndBiggerButton setCenter:CGPointMake(x, 93+20)];
    
    [downAndBiggerButton setBounds:CGRectMake(x, y, downAndBiggerButton.frame.size.width, 70)];
}

- (IBAction)toggleButton:(id)sender {
    if([onOffButton.titleLabel.text isEqualToString:@"Off"]){
        [onOffButton setTitle:@"On" forState:UIControlStateNormal];
    }else{
        [onOffButton setTitle:@"Off" forState:UIControlStateNormal];
    }
}

- (IBAction)slideValue:(id)sender {
    
    sliderLabel.text = [NSString stringWithFormat:@"The Value of the Slider is: %.2f",slider.value];
}

- (IBAction)mathButton:(id)sender {

    int a = [whiteBoxOne.text integerValue];
    int b = [whiteBoxTwo.text integerValue];
    
    
    blueAnswerBox.text = [NSString stringWithFormat:@"%i", a+b];
    
}

- (IBAction)colorizeButton:(id)sender {
    [image setImage:color];
    
}
@end
