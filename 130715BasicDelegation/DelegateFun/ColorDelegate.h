//
//  ColorDelegate.h
//  DelegateFun
//
//  Created by Jessica Sturme on 15/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol ColorDelegate <NSObject>

- (void) changeColor:(UIColor*)color;
- (void) changeText:(NSString*)text;


@end
