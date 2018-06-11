//
//  ViewController.h
//  BookStore
//
//  Created by Brad Lees on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSManagedObjectContext *managedObjectContext;
}


@property (nonatomic, weak) IBOutlet UITableView *tableView;


@end

