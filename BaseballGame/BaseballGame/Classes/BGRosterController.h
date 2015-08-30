//
//  BGRosterController.h
//  BaseballGame
//
//  Created by Chappy Asel on 8/14/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BGTeam.h"

@interface BGRosterController : PFObject <PFSubclassing>

+ (NSString *)parseClassName;

@property NSMutableArray <BGTeam *> *teams;

+ (BGRosterController *)sharedInstance;

- (void) loadCurrentRosterFromBBRWithProgressBlock:(void (^)(float progress))blockName;

@end
