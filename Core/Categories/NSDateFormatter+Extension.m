//
//  Created by Rene Dohan on 1/10/13.
//


#import "NSDateFormatter+Extension.h"


@implementation NSDateFormatter (Extension)

static NSString *_format = @"yyyy-MM-dd HH:mm:ssSSSSSS";

+ (NSString *)format:(NSDate *)date :(NSString *)format {
    return [[NSDateFormatter create:format] stringFromDate:date];
}

+ (NSString *)format:(NSDate *)date {
    NSDateFormatter *formatter = NSDateFormatter.new;
    formatter.dateStyle = NSDateFormatterFullStyle;
    return [formatter stringFromDate:date];
}

+ (NSDate *)load:(NSString *)date {
    NSDateFormatter *formatter = NSDateFormatter.new;
    formatter.dateFormat = _format;
    return [formatter dateFromString:date];
}

+ (NSDateFormatter *)create:(NSString *)format {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = format;
    return formatter;
}

+ (NSDateFormatter *)create {
    return [NSDateFormatter create:_format];
}

-(NSString *)now{
    return [self stringFromDate:NSDate.date];
}

@end