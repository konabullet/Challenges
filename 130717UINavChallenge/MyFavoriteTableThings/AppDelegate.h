//
//  AppDelegate.h
//  MyFavoriteTableThings
//
//  Created by Jessica Sturme on 16/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigationController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
