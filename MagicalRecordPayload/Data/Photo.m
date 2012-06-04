#import "Photo.h"

@implementation Photo

- (NSString *)titleAndObjectID {
    return [NSString stringWithFormat:@"%@ - %@", self.title, self.objectID];
}

@end
