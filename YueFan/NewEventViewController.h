//
//  NewEventViewController.h
//  YueFan
//
//  Created by Xinyu Li on 31/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewEventViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextViewDelegate>

@property (retain, nonatomic) IBOutlet UITableView *tableView;

@end
