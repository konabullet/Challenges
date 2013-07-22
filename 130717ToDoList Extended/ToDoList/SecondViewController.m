//
//  SecondViewController.m
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    
    __weak IBOutlet UITextField *updateTextField;
}
- (IBAction)updateList:(id)sender;

@end

@implementation SecondViewController

@synthesize myDelegate;


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

- (IBAction)updateList:(id)sender {
    [myDelegate changeText:updateTextField.text];
    [self.navigationController popViewControllerAnimated:YES];
   }


@end
