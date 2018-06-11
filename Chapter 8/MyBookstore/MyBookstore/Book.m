//
//  Book.m
//  MyBookstore
//
//  Created by Thorn on 12/8/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setTitle:(NSString *)newTitle
{
    if (newTitle.length > 20) {
        _title = [newTitle substringToIndex:20];
    } else {
        _title = newTitle;
    }
}


@end
