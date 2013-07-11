//
//  ViewController.m
//  YouEyeFunHouseRedux
//
//  Created by Jessica Sturme on 10/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
UIButton* button;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(5.0, 5.0, 80, 30);
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    
    
    
    
    [self.view addSubview:button];
    
     
    [super viewDidLoad];
   
     
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
