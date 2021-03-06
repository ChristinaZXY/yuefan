//
//  SettingsTableViewCell.m
//  YueFan
//
//  Created by Xinyu Li on 30/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import "SettingsTableViewCell.h"

@implementation SettingsTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

-(void)awakeFromNib{
    
    NSString* boldFontName = @"Avenir-Black";
    
    self.bgView.backgroundColor = [UIColor colorWithRed:51.0/255 green:55.0/255 blue:57.0/255 alpha:1.0];
    self.separatorLineView.backgroundColor = [UIColor colorWithRed:43.0/255 green:47.0/255 blue:49.0/255 alpha:1.0];
    
    self.settingTitle.textColor = [UIColor colorWithWhite:0.7f alpha:1.0f];
    self.settingTitle.font =  [UIFont fontWithName:boldFontName size:15.0f];
    
}

@end
