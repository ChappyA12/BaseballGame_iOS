//
//  ViewController.m
//  BaseballGame
//
//  Created by Chappy Asel on 8/14/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import "ViewController.h"
#import "UCZProgressView.h"
#import "BGRosterController.h"

@interface ViewController ()

@end

@implementation ViewController

BGRosterController *rosterController;
UCZProgressView *progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    progressView = [[UCZProgressView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    progressView.center = self.view.center;
    progressView.radius = 60.0;
    progressView.textSize = 25.0;
    progressView.showsText = YES;
    [self.view addSubview:progressView];
    
    PFQuery *query = [PFQuery queryWithClassName:@"BGRosterController"];
    [query fromLocalDatastore];
    NSError *error;
    BGRosterController *localRC = (BGRosterController *)[query getFirstObject:&error];
    if (error) NSLog(@"%@",error);
    rosterController = [BGRosterController sharedInstance];
    if (localRC) rosterController = localRC;
    else {
        rosterController = [BGRosterController object];
        [rosterController loadCurrentRosterFromBBRWithProgressBlock:^void(float progress) {
            progressView.progress = progress;
        }];
        [rosterController pinInBackgroundWithName:@"RC"];
    }
    dispatch_queue_t myQueue = dispatch_queue_create("My Queue",NULL);
    dispatch_async(myQueue, ^{
        [rosterController loadCurrentRosterFromBBRWithProgressBlock:^void(float progress) {
            dispatch_async(dispatch_get_main_queue(), ^{
            progressView.progress = progress;
            });
        }]; //temporary
        [rosterController pinInBackgroundWithName:@"RC"];
        [self loadTableView];
    });
}

- (void)loadTableView {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
