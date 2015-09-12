//
//  CustomLeagueTableViewCell.h
//  BaseballGame
//
//  Created by Chappy Asel on 9/10/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLeagueTableViewCell : UITableViewCell

@property NSString *name;
@property BOOL isValid;

@property (weak, nonatomic) IBOutlet UIImageView *checkImageView;
@property (weak, nonatomic) IBOutlet UILabel *textView;
@property (weak, nonatomic) IBOutlet UIButton *editButton;

- (void)updateValid;

@end
