//
//  LoginView.h
//  Swerve
//
//  Created by Joe Atlas on 9/29/13.
//  Copyright (c) 2013 Atlas Fedel Litchfield Ventures. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIViewController

- (BOOL)confirmUser: (NSString*)usr confirmPass: (NSString*)pass;
- (IBAction)proceed;
- (IBAction)hideKeyboard;
- (IBAction)signUp;

@end
