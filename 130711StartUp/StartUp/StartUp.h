//
//  StartUp.h
//  StartUp
//
//  Created by Jessica Sturme on 11/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"

@interface StartUp : NSObject


@property (strong, nonatomic)Manager *boss;
@property (strong, nonatomic)Employee *coder;
@property (strong, nonatomic)Employee *projectManager;
@property (strong, nonatomic)Employee *designer;




@end
