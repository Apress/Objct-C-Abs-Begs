//
//  BookDetailViewController.h
//  MyBookstore
//
//  Created by Thorn on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookDetailViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *bookTitle;
@property (nonatomic, weak) IBOutlet UILabel *bookAuthor;
@property (nonatomic, weak) IBOutlet UILabel *bookInfo;

@end
