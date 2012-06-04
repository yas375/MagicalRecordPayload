// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Photo.h instead.

#import <CoreData/CoreData.h>


extern const struct PhotoAttributes {
	__unsafe_unretained NSString *title;
} PhotoAttributes;

extern const struct PhotoRelationships {
	__unsafe_unretained NSString *categories;
} PhotoRelationships;

extern const struct PhotoFetchedProperties {
} PhotoFetchedProperties;

@class PhotoCategory;



@interface PhotoID : NSManagedObjectID {}
@end

@interface _Photo : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PhotoID*)objectID;




@property (nonatomic, strong) NSString* title;


//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* categories;

- (NSMutableSet*)categoriesSet;





@end

@interface _Photo (CoreDataGeneratedAccessors)

- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(PhotoCategory*)value_;
- (void)removeCategoriesObject:(PhotoCategory*)value_;

@end

@interface _Photo (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;





- (NSMutableSet*)primitiveCategories;
- (void)setPrimitiveCategories:(NSMutableSet*)value;


@end
