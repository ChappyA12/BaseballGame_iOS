//
//  PlayerTableViewCell.m
//  BaseballGame
//
//  Created by Chappy Asel on 9/6/15.
//  Copyright © 2015 CD. All rights reserved.
//

#import "PlayerTableViewCell.h"

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)loadPlayer:(id)player {
    int rating = 0;
    if ([player isKindOfClass:[BGBatter class]]) {
        BGBatter *batter = (BGBatter *)player;
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@",batter.firstName, batter.lastName];
        self.statLabel1.text = [NSString stringWithFormat:@"CNT: %@",batter.contact];
        self.statLabel2.text = [NSString stringWithFormat:@"PWR: %@",batter.power];
        self.statLabel3.text = [NSString stringWithFormat:@"SPD: %@",batter.speed];
        self.statLabel4.text = [NSString stringWithFormat:@"VSN: %@",batter.vision];
        self.statLabel5.text = [NSString stringWithFormat:@"CLH: %@",batter.clutch];
        self.statLabel6.text = [NSString stringWithFormat:@"FLD: %@",batter.fielding];
        rating = batter.overall.intValue;
    }
    else if ([player isKindOfClass:[BGPitcher class]]) {
        BGPitcher *pitcher = (BGPitcher *)player;
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@",pitcher.firstName, pitcher.lastName];
        self.statLabel1.text = [NSString stringWithFormat:@"UHT: %@",pitcher.unhittable];
        self.statLabel2.text = [NSString stringWithFormat:@"DCP: %@",pitcher.deception];
        self.statLabel3.text = [NSString stringWithFormat:@"CMP: %@",pitcher.composure];
        self.statLabel4.text = [NSString stringWithFormat:@"VEL: %@",pitcher.velocity];
        self.statLabel5.text = [NSString stringWithFormat:@"ACC: %@",pitcher.accuracy];
        self.statLabel6.text = [NSString stringWithFormat:@"EDC: %@",pitcher.endurance];
        rating = pitcher.overall.intValue;
    }
    else NSLog(@"Passed player object is not batter or pitcher class");
    
    if (rating <= 70) { //bronze
        self.ratingImageView.backgroundColor = [UIColor lightGrayColor];
    }
    else if (rating <= 80) { //silver
        self.ratingImageView.backgroundColor = [UIColor grayColor];
    }
    else if (rating <= 85) { //gold
        self.ratingImageView.backgroundColor = [UIColor darkGrayColor];
    }
    else if (rating <= 95) { //blue
        self.ratingImageView.backgroundColor = [UIColor blueColor];
    }
    else { //red (legend)
        self.ratingImageView.backgroundColor = [UIColor redColor];
    }
    
    MGSwipeExpansionSettings *settings = [[MGSwipeExpansionSettings alloc] init];
    settings.buttonIndex = 0;
    settings.threshold = 1.8;
    self.leftExpansion = settings;
    
    self.leftButtons = @[[MGSwipeButton buttonWithTitle:@"Details" icon:[UIImage imageNamed:@"check.png"] backgroundColor:self.ratingImageView.backgroundColor]];
    self.leftSwipeSettings.transition = MGSwipeTransitionClipCenter;
}

@end
