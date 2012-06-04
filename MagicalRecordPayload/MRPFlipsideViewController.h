//
//  MRPFlipsideViewController.h
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MRPFlipsideViewController;

@protocol MRPFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(MRPFlipsideViewController *)controller;
@end

@interface MRPFlipsideViewController : UIViewController

@property (weak, nonatomic) id <MRPFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
