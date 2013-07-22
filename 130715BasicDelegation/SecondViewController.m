//
//  SecondViewController.m
//  DelegateFun
//
//  Created by Jessica Sturme on 15/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    
    __weak IBOutlet UITextField *textField;
    
}
- (IBAction)makeRed:(id)sender;
- (IBAction)makeGreen:(id)sender;
- (IBAction)makeWhite:(id)sender;
- (IBAction)makeBlack:(id)sender;
- (IBAction)changeLabel:(id)sender;


@end

@implementation SecondViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeRed:(id)sender {
    [delegate changeColor:[UIColor redColor]];
    
}

- (IBAction)makeGreen:(id)sender {
    [delegate changeColor:[UIColor greenColor]];
    
}

- (IBAction)makeWhite:(id)sender {
    [delegate changeColor:[UIColor whiteColor]];
}

- (IBAction)makeBlack:(id)sender {
    [delegate changeColor:[UIColor blackColor]];
}

- (IBAction)changeLabel:(id)sender {
    if ([textField.text isEqual: @"red"]) {
      [delegate changeText:textField.text];
        [delegate changeColor:[UIColor redColor]];
        }
    else if ([textField.text isEqual: @"green"]) {
        [delegate changeText:textField.text];
        [delegate changeColor:[UIColor greenColor]];
    }
    else if ([textField.text isEqual: @"black"]) {
        [delegate changeText:textField.text];
        [delegate changeColor:[UIColor blackColor]];
        
    }
    else if ([textField.text isEqual: @"white"]) {
        [delegate changeText:textField.text];
        [delegate changeColor:[UIColor whiteColor]];
    }

}
@end
