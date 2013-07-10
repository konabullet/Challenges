//
//  Generator.m
//  RockPaperScissors
//
//  Created by Jessica Sturme on 9/07/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "Generator.h"


@implementation Generator

-(NSString*)random {
    NSArray* choices;
    choices = @[@"rock", @"paper", @"scissors"];
    
return [choices objectAtIndex:arc4random() % 3];
    
    
}
@end
