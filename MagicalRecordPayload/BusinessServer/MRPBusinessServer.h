//
//  MRPBusinessServer.h
//  MagicalRecordPayload
//
//  Created by Viktar Ilyukevich on 04.06.12.
//  Copyright (c) 2012 EPAM Systems. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Photo, PhotoCategory;

@interface MRPBusinessServer : NSObject

+ (MRPBusinessServer*)sharedBusinessServer;
- (void)createDefaultDataIfNeeded;


- (Photo *)newPhotoWithTitle:(NSString *)title;
- (PhotoCategory *)newCategoryWithTitle:(NSString *)title;
- (void)addPhoto:(Photo *)photo toCategory:(PhotoCategory *)category;

@end
