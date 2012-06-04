// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to PhotoCategory.h instead.

#import <CoreData/CoreData.h>


extern const struct PhotoCategoryAttributes {
	__unsafe_unretained NSString *title;
} PhotoCategoryAttributes;

extern const struct PhotoCategoryRelationships {
	__unsafe_unretained NSString *photos;
} PhotoCategoryRelationships;

extern const struct PhotoCategoryFetchedProperties {
} PhotoCategoryFetchedProperties;

@class Photo;



@interface PhotoCategoryID : NSManagedObjectID {}
@end

@interface _PhotoCategory : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PhotoCategoryID*)objectID;




@property (nonatomic, strong) NSString* title;


//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* photos;

- (NSMutableSet*)photosSet;





@end

@interface _PhotoCategory (CoreDataGeneratedAccessors)

- (void)addPhotos:(NSSet*)value_;
- (void)removePhotos:(NSSet*)value_;
- (void)addPhotosObject:(Photo*)value_;
- (void)removePhotosObject:(Photo*)value_;

@end

@interface _PhotoCategory (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;





- (NSMutableSet*)primitivePhotos;
- (void)setPrimitivePhotos:(NSMutableSet*)value;


@end
