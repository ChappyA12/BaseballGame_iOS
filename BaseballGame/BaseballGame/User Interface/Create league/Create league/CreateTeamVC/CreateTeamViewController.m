//
//  CreateTeamViewController.m
//  BaseballGame
//
//  Created by Chappy Asel on 9/26/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import "CreateTeamViewController.h"

@interface CreateTeamViewController ()

@end

@implementation CreateTeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButtonPressed:(UIBarButtonItem *)sender {
    if (self.loadExistingSwitch.state == 0) {
        
    }
    else {
        
    }
    [self.delegate createTeamViewControllerWillDismissWithResultTeam:self.customTeam];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
