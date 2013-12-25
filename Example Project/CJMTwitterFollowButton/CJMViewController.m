//
//  CJMViewController.m
//  CJMTwitterFollowButton
//
//  Created by Chris Maddern on 12/25/13.
//  Copyright (c) 2013 Chris Maddern. All rights reserved.
//

#import "CJMViewController.h"
#import "CJMTwitterFollowButton.h"

@interface CJMViewController ()

@end

@implementation CJMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *smallFollowButtonHeading   = [[UILabel alloc] initWithFrame:CGRectMake(20, 75, 200, 20)];
    smallFollowButtonHeading.text       = @"Small Follow Button";
    UILabel *largeFollowButtonHeading   = [[UILabel alloc] initWithFrame:CGRectMake(20, 190, 200, 20)];
    largeFollowButtonHeading.text       = @"Large Follow Button";
    
    CJMTwitterFollowButton *smallFollowButton = [[CJMTwitterFollowButton alloc] initWithOrigin:CGPointMake(135, 125)
                                                                                twitterAccount:@"chrismaddern"
                                                                                       andSize:CJMButtonSizeSmall];
    
    CJMTwitterFollowButton *largeFollowButton = [[CJMTwitterFollowButton alloc] initWithOrigin:CGPointMake(107, 250)
                                                                                twitterAccount:@"chrismaddern"
                                                                                       andSize:CJMButtonSizeLarge];
    [self.view addSubview:smallFollowButtonHeading];
    [self.view addSubview:largeFollowButtonHeading];
    
    [self.view addSubview:smallFollowButton];
    [self.view addSubview:largeFollowButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
