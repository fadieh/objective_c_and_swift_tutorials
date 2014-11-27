//
//  SimpleTable1ViewController.m
//  BlankDemo
//
//  Created by Fadie on 03/03/2014.
//  Copyright (c) 2014 Fadie. All rights reserved.
//

#import "SimpleTable1ViewController.h"

@interface SimpleTable1ViewController ()

@end

@implementation SimpleTable1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    label.text = @"Hello again!";
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
