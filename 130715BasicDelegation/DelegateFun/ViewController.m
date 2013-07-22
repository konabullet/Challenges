//
//  ViewController.m
//  DelegateFun
//
//  Created by Jessica Sturme on 15/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"


@interface ViewController ()
{
    SecondViewController *secondViewController;
    __weak IBOutlet UILabel *labelText;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.view addSubview:secondViewController.view];
    secondViewController.view.center = self.view.center;
    
    secondViewController.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ColourDelegate // A convenience bookmark

- (void) changeColor:(UIColor *)color;
{
    self.view.backgroundColor = color;
    
}
- (void) changeText:(NSString *)text;
{
    labelText.text = text;
}
@end
