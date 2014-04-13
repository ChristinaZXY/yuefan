//
//  SettingsTableViewCell.h
//  YueFan
//
//  Created by Xinyu Li on 30/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIView* bgView;

@property (nonatomic, strong) IBOutlet UIView* separatorLineView;

@property (nonatomic, strong) IBOutlet UILabel* settingTitle;

@end
