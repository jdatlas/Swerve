//
//  LoginView.m
//  Swerve
//
//  Created by Joe Atlas on 9/29/13.
//  Copyright (c) 2013 Atlas Fedel Litchfield Ventures. All rights reserved.
//

#import "LoginView.h"
#import "HomePageViewController.h"
#import "SignUpViewController.h"

@interface LoginView ()

@property (weak, nonatomic) IBOutlet UITextField *usernameText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

@end

@implementation LoginView

@synthesize usernameText = _usernameText;
@synthesize passwordText = _passwordText;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) confirmUser:(NSString*)usr confirmPass:(NSString*)pass
{
    if ([usr isEqualToString:@"joeatlas"] && [pass isEqualToString:@"swerve"])
        return YES;
    return NO;
}
        
- (IBAction) proceed
{
     if ([self confirmUser:[_usernameText text] confirmPass:[_passwordText text]]) {
         HomePageViewController *home = [[HomePageViewController alloc] initWithNibName:nil bundle:nil];
         [self presentViewController:home animated:YES completion:NULL];
     }
}

- (IBAction)hideKeyboard
{
    [self.view endEditing:YES];
}

- (IBAction)signUp
{
    SignUpViewController *signUp = [[SignUpViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:signUp animated:YES completion:NULL];
}

@end
