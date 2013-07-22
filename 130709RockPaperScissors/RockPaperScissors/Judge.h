//
//  Judge.h
//  RockPaperScissors
//
//  Created by Jessica Sturme on 9/07/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Judge : NSObject

-(BOOL) didComputerWin: (NSString *)computerHand againstUser:(NSString *)userHand;


@end
