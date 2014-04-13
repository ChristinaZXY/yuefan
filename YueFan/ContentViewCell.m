//
//  ContentViewCell.m
//  YueFan
//
//  Created by Xinyu Li on 30/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import "ContentViewCell.h"

@implementation ContentViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    UIColor* mainColor = [UIColor colorWithRed:7.0/255 green:61.0/255 blue:48.0/255 alpha:1.0f];
    if (self) {
        UIImage *centerimage = [UIImage imageNamed:@"block_center_background.png"];
        self.centerimageView = [[UIImageView alloc]initWithImage:centerimage];
        [self.centerimageView setFrame:CGRectMake(0, 0, 320, 220)];
        [self addSubview:self.centerimageView];
        
        self.txtContent = [[UILabel alloc]init];
        [self.txtContent setBackgroundColor:[UIColor clearColor]];
        [self.txtContent setFrame:CGRectMake(20, 28, 280, 220)];
        [self.txtContent setFont:[UIFont fontWithName:@"Arial" size:14]];
        [self addSubview:self.txtContent];
        
        /*imgPhoto = [[EGOImageButton alloc]initWithPlaceholderImage:[UIImage imageNamed:@"thumb_pic.png"] delegate:self];
        [imgPhoto setFrame:CGRectMake(0, 0, 0, 0)];
        
        [imgPhoto addTarget:self action:@selector(ImageBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:imgPhoto];*/
        
        self.headPhoto = [[UIImageView alloc]initWithFrame:CGRectMake(15, 5, 24, 24)];
        [self.headPhoto setImage:[UIImage imageNamed:@"account"]];
        [self addSubview: self.headPhoto];
        
        self.txtAnchor = [[UILabel alloc]initWithFrame:CGRectMake(45,5, 200, 30)];
        [self.txtAnchor setText:@"匿名"];
        [self.txtAnchor setFont:[UIFont fontWithName:@"Arial" size:14]];
        [self.txtAnchor setBackgroundColor:[UIColor clearColor]];
        [self.txtAnchor setTextColor:mainColor];
        [self addSubview:self.txtAnchor];
        
        self.txtLocation = [[UILabel alloc]initWithFrame:CGRectMake(45,200, 200, 30)];
        [self.txtLocation setText:@""];
        [self.txtLocation setFont:[UIFont fontWithName:@"Arial" size:14]];
        [self.txtLocation setBackgroundColor:[UIColor clearColor]];
        [self.txtLocation setTextColor:mainColor];
        [self addSubview:self.txtLocation];
        
        self.LocationPhoto = [[UIImageView alloc]initWithFrame:CGRectMake(15, 200, 24, 24)];
        [self.LocationPhoto setImage:[UIImage imageNamed:@"location"]];
        [self addSubview:self.LocationPhoto];
        
        self.txtTime = [[UILabel alloc]initWithFrame:CGRectMake(145,200, 200, 30)];
        [self.txtTime setText:@"11.59pm"];
        [self.txtTime setFont:[UIFont fontWithName:@"Arial" size:14]];
        [self.txtTime setBackgroundColor:[UIColor clearColor]];
        [self.txtTime setTextColor:mainColor];
        [self addSubview:self.txtTime];
        
        self.TimePhoto = [[UIImageView alloc]initWithFrame:CGRectMake(115, 200, 24, 24)];
        [self.TimePhoto setImage:[UIImage imageNamed:@"clock"]];
        [self addSubview:self.TimePhoto];
        
        UIImage *footimage = [UIImage imageNamed:@"block_foot_background.png"];
        self.footView = [[UIImageView alloc]initWithImage:footimage];
        [self.footView setFrame:CGRectMake(0, self.txtContent.frame.size.height, 320, 15)];
        [self addSubview:self.footView];
        
        //添加Button，顶，踩，评论
        /*
        goodbtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [goodbtn setFrame:CGRectMake(10,txtContent.frame.size.height-30,70,32)];
        [goodbtn setBackgroundImage:[UIImage imageNamed:@"button_vote.png"] forState:UIControlStateNormal];
        [goodbtn setBackgroundImage:[UIImage imageNamed:@"button_vote_active.png"] forState:UIControlStateHighlighted];
        [goodbtn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 25)];
        [goodbtn setImage:[UIImage imageNamed:@"icon_for_good.png"] forState:UIControlStateNormal];
        [goodbtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -25)];
        [goodbtn setTitle:@"0" forState:UIControlStateNormal];
        [goodbtn.titleLabel setFont:[UIFont fontWithName:@"Arial" size:14]];
        [goodbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [goodbtn addTarget:self action:@selector(BtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:goodbtn];
        
        badbtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [badbtn setFrame:CGRectMake(100,txtContent.frame.size.height-30,70,32)];
        [badbtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -25)];
        [badbtn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 25)];
        [badbtn setBackgroundImage:[UIImage imageNamed:@"button_vote.png"] forState:UIControlStateNormal];
        [badbtn setBackgroundImage:[UIImage imageNamed:@"button_vote_active.png"] forState:UIControlStateHighlighted];
        [badbtn setImage:[UIImage imageNamed:@"icon_for_bad.png"] forState:UIControlStateNormal];
        [badbtn setTitle:@"0" forState:UIControlStateNormal];
        [badbtn.titleLabel setFont:[UIFont fontWithName:@"Arial" size:14]];
        [badbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [badbtn addTarget:self action:@selector(BtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:badbtn];
        
        commentsbtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [commentsbtn setFrame:CGRectMake(230,txtContent.frame.size.height-30,70,32)];
        [commentsbtn setBackgroundImage:[UIImage imageNamed:@"button_vote.png"] forState:UIControlStateNormal];
        [commentsbtn setBackgroundImage:[UIImage imageNamed:@"button_vote_active.png"] forState:UIControlStateHighlighted];
        [commentsbtn setImage:[UIImage imageNamed:@"icon_for_comment.png"] forState:UIControlStateNormal];
        [commentsbtn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 25)];
        [commentsbtn setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -25)];
        [commentsbtn.titleLabel setFont:[UIFont fontWithName:@"Arial" size:14]];
        [commentsbtn setTitle:@"0" forState:UIControlStateNormal];
        [commentsbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [commentsbtn addTarget:self action:@selector(BtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [commentsbtn setTag:FCOMMITE];
        [self addSubview:commentsbtn];*/
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) resizeTheHeight
{
    CGFloat contentWidth = 280;
    
    UIFont *font = [UIFont fontWithName:@"Arial" size:14];
    
    CGSize size = [self.txtContent.text sizeWithFont:font constrainedToSize:CGSizeMake(contentWidth, 220)];
    
    [self.txtContent setFrame:CGRectMake(20, 28, 280, size.height+60)];

    [self.centerimageView setFrame:CGRectMake(0, 0, 320, size.height+120)];
    
    [self.footView setFrame:CGRectMake(0, self.centerimageView.frame.size.height, 320, 15)];
    [self.txtLocation setFrame:CGRectMake(40,self.centerimageView.frame.size.height-30,200, 30)];
    [self.LocationPhoto setFrame:CGRectMake(15,self.centerimageView.frame.size.height-30,24, 24)];
    [self.txtTime setFrame:CGRectMake(240,self.centerimageView.frame.size.height-30,200, 30)];
    [self.TimePhoto setFrame:CGRectMake(215,self.centerimageView.frame.size.height-30,24, 24)];
    
}

@end
