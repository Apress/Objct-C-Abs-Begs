//
//  Book+CoreDataProperties.h
//  BookStore
//
//  Created by Brad Lees on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//
//

#import "Book+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Book (CoreDataProperties)

+ (NSFetchRequest<Book *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSDecimalNumber *price;
@property (nonatomic) int32_t yearPublished;
@property (nullable, nonatomic, retain) Author *author;

@end

NS_ASSUME_NONNULL_END
