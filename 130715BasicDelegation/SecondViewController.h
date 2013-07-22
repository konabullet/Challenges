//
//  SecondViewController.h
//  DelegateFun
//
//  Created by Jessica Sturme on 15/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) id <ColorDelegate> delegate;

@end
