//
//  MRPFlipsideViewController.m
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import "MRPFlipsideViewController.h"

@interface MRPFlipsideViewController ()

@end

@implementation MRPFlipsideViewController

@synthesize delegate = _delegate;

#pragma mark - Actions

- (IBAction)done:(id)sender {
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
