//
//  ViewController.m
//  BookStore
//
//  Created by Brad Lees on 12/10/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Book+CoreDataClass.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    managedObjectContext = appDelegate.persistentContainer.viewContext;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSArray *)loadBooks {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Book"];
    NSArray *bookArray = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    
    return bookArray;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self loadBooks] count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Book *myBook = [[self loadBooks] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = myBook.title;
    
    return cell;
}


- (IBAction)addNew:(id)sender {
    
    Book *myBook = [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:managedObjectContext];
    myBook.title = [NSMutableString stringWithFormat:@"My Book%lu", (unsigned long)[self loadBooks].count];
    [managedObjectContext save:nil];
    [self.tableView reloadData];
}


@end
