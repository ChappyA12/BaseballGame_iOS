//
//  LeagueSelectionViewController.h
//  BaseballGame
//
//  Created by Chappy Asel on 9/5/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeagueTableViewCell.h"

@class BGLeagueInfo, BGLeagueController;

@protocol LeagueSelectionViewControllerDelegate <NSObject>
@required
- (void) leagueSelectionVCDidChangeSelectedLeague: (BGLeagueInfo *) league;
@end

@interface LeagueSelectionViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,weak) id<LeagueSelectionViewControllerDelegate> delegate;

@property (nonatomic,strong) BGLeagueController *leagueController;

@property NSNumber *selectedYear;

@end
