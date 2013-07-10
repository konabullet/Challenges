//
//  Judge.m
//  RockPaperScissors
//
//  Created by Jessica Sturme on 9/07/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "Judge.h"

@implementation Judge

-(BOOL) didComputerWin: (NSString *)computerHand againstUser:(NSString *)userHand {
   
    if([computerHand isEqual: @"rock"] && [userHand isEqual: @"rock"])
        return NO;
    
    else if ([computerHand isEqual: @"rock"] && [userHand isEqual: @"paper"])
        return NO;
        
    else if ([computerHand isEqual: @"rock"] && [userHand isEqual: @"scissors"])
        return YES;
        
    else if ([computerHand isEqual: @"paper"] && [userHand isEqual: @"paper"])
        return NO;
        
    else if ([computerHand isEqual: @"paper"] && [userHand isEqual: @"scissors"])
        return NO;
    
    else if ([computerHand isEqual: @"paper"] && [userHand isEqual: @"rock"])
        return YES;
        
    else if ([computerHand isEqual: @"scissors"] && [userHand isEqual: @"rock"])
        return NO;
    
    else if ([computerHand isEqual: @"scissors"] && [userHand isEqual: @"paper"])
        return YES;
    
    else return NO;
    
    
                 
}



@end
