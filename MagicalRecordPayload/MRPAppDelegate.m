//
//  MRPAppDelegate.m
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import "MRPAppDelegate.h"

#import "MRPBusinessServer.h"
#import "Photo.h"
#import "PhotoCategory.h"


@implementation MRPAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[MRPBusinessServer sharedBusinessServer] createDefaultDataIfNeeded];

    PhotoCategory *category = [PhotoCategory findFirst];

    // print photos not from category
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"NOT SELF IN %@", category.photos];
    NSLog(@"%@", [[Photo findAllWithPredicate:predicate] valueForKey:@"titleAndObjectID"]);

    // create new photo
    Photo *newPhoto = [[MRPBusinessServer sharedBusinessServer] newPhotoWithTitle:@"newPhoto for my category"];

    // add it to our category
    NSLog(@"Number of photos in category before: %d", [category.photos count]);
    [[MRPBusinessServer sharedBusinessServer] addPhoto:newPhoto toCategory:category];
    NSLog(@"Number of photos in category after: %d", [category.photos count]);

    // again print photos not from current category
    predicate = [NSPredicate predicateWithFormat:@"NOT SELF IN %@", category.photos]; // just in case
    NSLog(@"%@", [[Photo findAllWithPredicate:predicate] valueForKey:@"titleAndObjectID"]);

    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [MagicalRecord cleanUp];
}
							
@end
