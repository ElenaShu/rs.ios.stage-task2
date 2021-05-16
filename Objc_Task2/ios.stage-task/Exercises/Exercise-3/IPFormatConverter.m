#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString * str = [NSMutableString new];
    if(numbersArray == nil || [numbersArray count] == 0) return @"";
    if ([numbersArray count] > 4) return @"";
    for (NSNumber * val in numbersArray) {
        if ( val.integerValue > 255) return @"The numbers in the input array can be in the range from 0 to 255.";
        else if (val.integerValue < 0) return @"Negative numbers are not valid for input.";
        [str appendString: [NSString stringWithFormat: @"%@.", val]];
    }
    NSUInteger kol = 4 - [numbersArray count];
    while (kol != 0) {
        [str appendString: @"0."];
        kol--;
    }
    
    [str deleteCharactersInRange:[str rangeOfComposedCharacterSequenceAtIndex: ([str length] - 1)]];
    return str;
}

@end
