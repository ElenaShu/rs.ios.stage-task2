#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger res = 0;
    for (NSNumber *a in array)
        for (NSNumber *b in array){
            if ((b.integerValue - a.integerValue) == number.integerValue ) res++;
    }
    return res;
}

@end
