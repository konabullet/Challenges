//
//  EditDelegate.h
//  MyFavoriteTableThingsTWO
//
//  Created by Jessica Sturme on 17/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EditDelegate <NSObject>

- (void) valueDidChange:(NSString *) value;

@end
