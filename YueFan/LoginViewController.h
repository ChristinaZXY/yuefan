//
//  LoginViewController.h
//  YueFan
//
//  Created by Xinyu Li on 29/3/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *forgotButton;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel2;
- (IBAction)forgetPasswordAction:(id)sender;

- (IBAction)registerAction:(id)sender;

- (IBAction)loginAction:(id)sender;

@end
