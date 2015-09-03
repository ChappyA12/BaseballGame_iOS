//
//  ViewController.m
//  BaseballGame
//
//  Created by Chappy Asel on 8/14/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import "ViewController.h"
#import "UCZProgressView.h"
#import "BGLeagueController.h"
#import "BGTeamInfo.h"

@interface ViewController ()

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end

@implementation ViewController

BGLeagueController *rosterController;
UCZProgressView *progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    rosterController = [BGLeagueController sharedInstance];
}

- (void)viewDidAppear:(BOOL)animated {
    progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0, 0, 130, 130)];
    progressView.center = self.view.center;
    progressView.radius = 60.0;
    progressView.textSize = 25.0;
    progressView.showsText = YES;
    [self.view addSubview:progressView];
}

- (void)loadTableView {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
