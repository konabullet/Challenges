//
//  EditDelegate.h
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EditDelegate <NSObject>

- (void) changeText:(NSString*)stringForFirst;

@end
