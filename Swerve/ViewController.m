//
//  ViewController.m
//  Swerve
//
//  Created by Joe Atlas on 9/29/13.
//  Copyright (c) 2013 Atlas Fedel Litchfield Ventures. All rights reserved.
//

#import "ViewController.h"
#import "LoginView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Next
{
    LoginView *login = [[LoginView alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:login animated:YES completion:NULL];
}

@end
