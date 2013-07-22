//
//  Magic8Ball.m
//  MagicEightBall
//
//  Created by Jessica Sturme on 9/07/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "Magic8Ball.h"

@implementation Magic8Ball
-(NSString*)random {
    NSArray* answers;
    answers = @[@"yes", @"no", @"maybe", @"Antonio"];
    
return [answers objectAtIndex:arc4random() % 4];
}
@end
