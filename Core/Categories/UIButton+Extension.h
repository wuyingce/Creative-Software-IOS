//
// Created by inno on 1/28/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface UIButton (Extension)
- (void)stretchableBackgroundImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight;

- (void)setTitleColor:(UIColor *)color;

@property(nonatomic, copy) NSString * text;

- (void)setImage:(UIImage *)image;
@end