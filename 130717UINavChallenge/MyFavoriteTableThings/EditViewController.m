//
//  EditViewController.m
//  MyFavoriteTableThingsTWO
//
//  Created by Jessica Sturme on 17/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()
{
    
    __weak IBOutlet UITextField *textField;
}

- (IBAction)goingButton:(id)sender;

@end

@implementation EditViewController

@synthesize textValue;
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
    textField.text = textValue;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goingButton:(id)sender {
    [delegate valueDidChange:textField.text];
    [self.navigationController popViewControllerAnimated:YES];

}
@end
