//
//  MRPBusinessServer.m
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import "MRPBusinessServer.h"

#import "Photo.h"
#import "PhotoCategory.h"

@interface MRPBusinessServer ()
@end


@implementation MRPBusinessServer

+ (MRPBusinessServer *)sharedBusinessServer {
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

+ (void)initialize {
    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"Model.sqlite"];
}

- (void)createDefaultDataIfNeeded {
    if ([PhotoCategory countOfEntities] == 0) {
        [self newCategoryWithTitle:@"Dogs"];
        [self newPhotoWithTitle:@"old photo 1 not in category"];
        [self newPhotoWithTitle:@"old photo 2 not in category"];
        [self newPhotoWithTitle:@"old photo 3 not in category"];
        [self newPhotoWithTitle:@"old photo 4 not in category"];
    }
}

#pragma mark

- (Photo *)newPhotoWithTitle:(NSString *)title {
    NSManagedObjectContext *context = [NSManagedObjectContext defaultContext];
    Photo *photo = [Photo createInContext:context];
    photo.title = title;
    [context save];
    return photo;
}

- (PhotoCategory *)newCategoryWithTitle:(NSString *)title {
    NSManagedObjectContext *context = [NSManagedObjectContext defaultContext];
    PhotoCategory *category = [PhotoCategory createInContext:context];
    category.title = title;
    [context save];
    return category;
}

- (void)addPhoto:(Photo *)photo toCategory:(PhotoCategory *)category {
    [category addPhotosObject:photo];
    [[NSManagedObjectContext defaultContext] save];
}

@end
