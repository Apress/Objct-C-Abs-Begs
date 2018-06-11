//
//  ViewController.m
//  RandomNumber
//
//  Created by Stefan Kaczmarek on 12/9/17.
//  Copyright © 2017 The Zonie, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *randomNumberLabel;

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

- (IBAction)generate:(UIButton *)sender {
    int randomNumber = (arc4random() % 100) + 1;
    self.randomNumberLabel.text = [NSString stringWithFormat:@"%i", randomNumber];
}

@end
