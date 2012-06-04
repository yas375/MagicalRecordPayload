//
//  MRPMainViewController.m
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import "MRPMainViewController.h"

@interface MRPMainViewController ()

@end

@implementation MRPMainViewController


#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(MRPFlipsideViewController *)controller {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
