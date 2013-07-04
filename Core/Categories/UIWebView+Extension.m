//
// Created by Rene Dohan on 6/5/13.
// Copyright (c) 2013 creative_studio. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIWebView+Extension.h"


@implementation UIWebView (Extension)

-(UIScrollView *) scrollViewOfWebView {
    for (UIView *subView in self.subviews)
        if ([subView isKindOfClass:[UIScrollView class]]) {
            return  (UIScrollView *) subView;
        }
    return nil;
}

@end