//
//  DetailViewController.h
//  BookStore
//
//  Created by Brad Lees on 12/6/17.
//  Copyright © 2017 Thorn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

