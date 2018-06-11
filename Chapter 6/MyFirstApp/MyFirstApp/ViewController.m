//
//  ViewController.m
//  MyFirstApp
//
//  Created by Thorn on 12/6/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showName:(id)sender {
    [self.nameLabel setText:@"My Name is Awesome"];
}


@end
