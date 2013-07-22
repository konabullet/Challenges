//
//  EditViewController.h
//  MyFavoriteTableThingsTWO
//
//  Created by Jessica Sturme on 17/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditDelegate.h"

@interface EditViewController : UIViewController

{
    id delegate;
    
}

@property (strong, nonatomic)NSString *textValue;
@property (strong, nonatomic) id <EditDelegate>delegate;


@end
