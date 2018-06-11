//
//  Author+CoreDataProperties.h
//  BookStore
//
//  Created by Brad Lees on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//
//

#import "Author+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *lastName;
@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, retain) Book *books;

@end

NS_ASSUME_NONNULL_END
