//
//  ViewController.m
//  MyFirstApp
//
//  Created by Thorn on 12/6/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import "ViewController.h"
#import "SimpleLabelData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSMutableDictionary *myDict = [NSMutableDictionary new];
    
    myDict[@"1"] = @"Number One";
    myDict[@"2"] = @"Number Two";
    myDict[@"3"] = @"Number Three";
    
    for (id val in myDict) {
        NSLog(@"%@", val);
    }
    
    myDict[@"1.5"] = @"One and a Half";
    
    for (id val in myDict) {
        NSLog(@"key=%@ value=%@", val, [myDict objectForKey:val]);
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showName:(id)sender {
    SimpleLabelData *one = [SimpleLabelData simpleLabelDataWithTitle:@"First Name"
                                                            andValue:@"John"];
    self.firstLabel.text = [one combinedString];
    
    
    SimpleLabelData *two = [SimpleLabelData simpleLabelDataWithTitle:@"Last Name"
                                                            andValue:@"Snow"];
    self.secondLabel.text = [two combinedString];
    
    
    SimpleLabelData *three = [SimpleLabelData simpleLabelDataWithTitle:@"Age"
                                                            andValue:@"Unknown"];
    self.thirdLabel.text = [three combinedString];
}


@end
