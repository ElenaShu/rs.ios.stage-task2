#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger res = 0;
    
    for (NSInteger i = 0; i < [array count]; i++)
        for (NSInteger j = 0; j < [array count]; j++) {
            if( ![[array objectAtIndex: i] isKindOfClass: [NSNumber class]]) return 0;
            NSInteger a = [[array objectAtIndex: i] integerValue];
            NSInteger b = [[array objectAtIndex: j] integerValue];
            if ((b - a) == number.integerValue && i != j) res++;
    }
    if (number.integerValue == 0) res /= 2;
    return res;
}

@end
