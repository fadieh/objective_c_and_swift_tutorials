//
//  SimpleTable1ViewController.m
//  UserInteractionDemo
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeTextClick:(id)sender {
    
    NSString *customText = self.customTextField.text;
    self.helloLabel.text = customText;
    [self.customTextField resignFirstResponder];
}

- (void)touchesBegan:(NSSet *) touches withEvent:(UIEvent *)event {
    [self.customTextField resignFirstResponder];

}

@end
