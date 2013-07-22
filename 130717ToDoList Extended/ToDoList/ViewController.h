//
//  ViewController.h
//  ToDoList
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "EditDelegate.h"


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, EditDelegate>


@end
