//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 4/28/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    int result;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showIsPalindrone
{
    resultLabel.text = @"Is a palindrome!";
}

-(void)showIsNotPalindrone
{
    resultLabel.text = @"Is not a palindrome!";
}


-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}


-(void)showResult
{
    resultLabel.text = [NSString stringWithFormat:@"%i", result];
}


-(void)checkForPalindrome
{
    const char* arrayOfCharacters = [self getCharacterArray];
    BOOL isPalindrome = YES;
    int number = 0;
    int iterator= 0;
    
    while (arrayOfCharacters[number]) {
        number++;
    }
    NSLog(@"%i,", number);
    while (number-1 > iterator) { //-1 because it starts at zero,so there is one
        //letter less
        if(arrayOfCharacters[number-1] != arrayOfCharacters[iterator]) {
                                        isPalindrome =NO;
    }
        ++iterator;
        --number;
                                            
    }
    
    
    if (isPalindrome) {
        [self showIsPalindrone];
    }
    else{
        [self showIsNotPalindrone];
    }    
}


-(void)sumIntegers
{
    const char* arrayOfCharacters = [self getCharacterArray];
    int i = 0;
    
    result=0;
    while (arrayOfCharacters[i] != 0){
        i++;
    }
    
    i--;
    
    while (i>=0){
        if (arrayOfCharacters[i] != ','){
        result = atoi(&arrayOfCharacters[i])+ result;
        }
            i--;
    }
           // parse out the commas, sum up the integers and assign the answer to the variable result
    // i.e.
    // result =
    
    [self showResult];
}

- (IBAction)check:(id)sender
{
    //[self checkForPalindrome];
    
    // Uncomment the following line of code and comment out the previous line of code to run summation
    [self sumIntegers];
}
@end
