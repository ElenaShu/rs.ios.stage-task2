#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if ( !([[array objectAtIndex:0] isKindOfClass: [NSArray class]])) return @[];
    NSMutableArray * numberMutableArr = [NSMutableArray new];
    NSMutableArray * stringMutableArr = [NSMutableArray new];
    for (NSArray *inarray in array)
        for (NSUInteger i = 0; i < [inarray count]; i++) {
            if ([[inarray objectAtIndex: i] isKindOfClass: [NSNumber class]])
                [numberMutableArr addObject: [inarray objectAtIndex: i]];
            else if([[inarray objectAtIndex: i] isKindOfClass: [NSString class]])
                [stringMutableArr addObject: [inarray objectAtIndex: i]];
        }
    
    [numberMutableArr sortUsingSelector:@selector(compare:)];
    [stringMutableArr sortUsingSelector:@selector(compare:)];
    if ([numberMutableArr count] != 0 && [stringMutableArr count] != 0)
        return [[NSArray alloc] initWithObjects: numberMutableArr, stringMutableArr, nil];
    else if ([numberMutableArr count] == 0)
        return [[NSArray alloc] initWithArray: stringMutableArr copyItems: true];
    else {
        return [[NSArray alloc] initWithArray: numberMutableArr copyItems: true];
    }
}

@end
