#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    if(n == 0) return 0;
    
    NSString * str = @"";
    UInt8 num = n;
    
    while ( num > 0) {
        str = [[NSString stringWithFormat: @"%d", num&1] stringByAppendingString:str];
        num >>= 1;
    }
    
    while ([str length] != 8){
        str = [[NSString stringWithFormat: @"%d", 0] stringByAppendingString:str];
    }
    
    NSMutableString * reversedStr = [NSMutableString stringWithCapacity:[str length]];
    [str enumerateSubstringsInRange: NSMakeRange(0, [str length])
                            options: (NSStringEnumerationReverse |NSStringEnumerationByComposedCharacterSequences)
                         usingBlock:^(NSString * substring, NSRange substringRange, NSRange enclosingRange, BOOL * stop) {
        [reversedStr appendString:substring];
    }];
    
    long longNum = strtol([reversedStr UTF8String], NULL, 2);
    
    return (UInt8) longNum;
}
