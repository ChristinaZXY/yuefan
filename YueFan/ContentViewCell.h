//
//  ContentViewCell.h
//  YueFan
//
//  Created by Xinyu Li on 30/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewCell : UITableViewCell

@property (nonatomic, retain) UIImageView *headPhoto;
@property (nonatomic, retain) UIImageView *LocationPhoto;
@property (nonatomic, retain) UIImageView *TimePhoto;
@property (nonatomic, retain) UILabel *txtTime;
@property (nonatomic, retain) UILabel *txtLocation;
@property (nonatomic, retain) UILabel *txtAnchor;
@property (nonatomic, retain) UILabel *txtContent;
@property (nonatomic, retain) UIImageView *footView;
@property (nonatomic, retain) UIImageView *centerimageView;

-(void) resizeTheHeight;

@end
