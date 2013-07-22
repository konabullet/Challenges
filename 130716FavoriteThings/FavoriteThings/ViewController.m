//
//  ViewController.m
//  FavoriteThings
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *textField;
    __weak IBOutlet UIButton *addTextButton;
    
    __weak IBOutlet UITextView *textView;
    NSMutableArray * favoriteThings;
    NSCharacterSet * trim;
    NSString *text;
}
- (IBAction)addText:(id)sender;
- (IBAction)removeLine:(id)sender;
- (IBAction)reorderText:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [addTextButton setTitle:@"Add" forState:UIControlStateNormal];
    favoriteThings = [NSMutableArray arrayWithCapacity:10];
    
    
       
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)updateTextField {
    text = [NSString stringWithFormat:@"%@", favoriteThings];
    trim = [NSCharacterSet characterSetWithCharactersInString:@"(,)\""];
    text = [[text componentsSeparatedByCharactersInSet:trim] componentsJoinedByString:@""];
    textView.text = text;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addText:(id)sender {
    [favoriteThings addObject:textField.text];
    [textField resignFirstResponder];
    [self updateTextField];
 }

- (IBAction)removeLine:(id)sender {
    [favoriteThings removeLastObject];
    [self updateTextField];
    }

- (IBAction)reorderText:(id)sender {
    favoriteThings = [NSMutableArray arrayWithArray:[[favoriteThings reverseObjectEnumerator] allObjects]];
    [self updateTextField];
    
}
@end
