//
//  Customer.h
//  BookStore
//
//  Created by Thorn on 12/6/17.
//  Copyright © 2017 Thorn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Customer : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSString *addressLine1;
    NSString *addressLine2;
    NSString *city;
    NSString *state;
    NSString *zip;
    NSString *phoneNumber;
    NSString *emailAddress;
    NSString *favoriteGenre;
}

-(NSArray *) listPurchaseHistory;

@end
