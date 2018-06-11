//
//  Author+CoreDataProperties.m
//  BookStore
//
//  Created by Brad Lees on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//
//

#import "Author+CoreDataProperties.h"

@implementation Author (CoreDataProperties)

+ (NSFetchRequest<Author *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Author"];
}

@dynamic lastName;
@dynamic firstName;
@dynamic books;

@end
