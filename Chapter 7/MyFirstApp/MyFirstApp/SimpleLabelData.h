//
//  SimpleLabelData.h
//  MyFirstApp
//
//  Created by Thorn on 12/7/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleLabelData : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *value;

+ (instancetype)simpleLabelDataWithTitle: (NSString *)title
                                andValue: (NSString *)value;

- (NSString *)combinedString;

@end
