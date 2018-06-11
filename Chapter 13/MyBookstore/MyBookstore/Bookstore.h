//
//  Bookstore.h
//  MyBookstore
//
//  Created by Thorn on 12/8/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bookstore : NSObject

@property (nonatomic, strong) NSMutableArray *books;

-(void)addBooks:(NSArray *)bookArray;
-(NSInteger)numberOfBooks;

@end
