//
//  SettingsViewController.h
//  YueFan
//
//  Created by Xinyu Li on 30/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) IBOutlet UITableView* tableView;

@end
