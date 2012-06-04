// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to PhotoCategory.m instead.

#import "_PhotoCategory.h"

const struct PhotoCategoryAttributes PhotoCategoryAttributes = {
	.title = @"title",
};

const struct PhotoCategoryRelationships PhotoCategoryRelationships = {
	.photos = @"photos",
};

const struct PhotoCategoryFetchedProperties PhotoCategoryFetchedProperties = {
};

@implementation PhotoCategoryID
@end

@implementation _PhotoCategory

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"PhotoCategory" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"PhotoCategory";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"PhotoCategory" inManagedObjectContext:moc_];
}

- (PhotoCategoryID*)objectID {
	return (PhotoCategoryID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic title;






@dynamic photos;

	
- (NSMutableSet*)photosSet {
	[self willAccessValueForKey:@"photos"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"photos"];
  
	[self didAccessValueForKey:@"photos"];
	return result;
}
	






@end
