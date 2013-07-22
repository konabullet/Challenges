//
//  SecondViewController.h
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditDelegate.h"


@interface SecondViewController : UIViewController
{
    id myDelegate;
    
}
@property (strong, nonatomic) id <EditDelegate>myDelegate;

@end
