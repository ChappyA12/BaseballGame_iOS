//
//  BGPlayer.m
//  BaseballGame
//
//  Created by Chappy Asel on 8/14/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import "BGPlayer.h"

@implementation BGPlayer

+ (void)load {
    [self registerSubclass];
}

+ (NSString *)parseClassName {
    return @"BGPlayer";
}

@end
