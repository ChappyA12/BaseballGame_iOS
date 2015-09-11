//
//  BGBatter.h
//  BaseballGame
//
//  Created by Chappy Asel on 9/3/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class BGTeamDetails;

NS_ASSUME_NONNULL_BEGIN

@interface BGBatter : NSManagedObject

- (void) calculateOverall;

@end

NS_ASSUME_NONNULL_END

#import "BGBatter+CoreDataProperties.h"
