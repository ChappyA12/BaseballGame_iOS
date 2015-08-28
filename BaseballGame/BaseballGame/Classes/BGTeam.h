//
//  BGTeam.h
//  BaseballGame
//
//  Created by Chappy Asel on 8/14/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BGPlayer.h"

@interface BGTeam : PFObject <PFSubclassing>
+ (NSString *)parseClassName;

@property NSString *name;
@property NSString *abbreviation;
@property int year;

@property NSMutableArray <BGPlayer *> *hitters;
@property NSMutableArray <BGPlayer *> *pitchers;

- (instancetype) initWithAbbreviation: (NSString *) abbrev;

@end
