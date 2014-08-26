//
//  BCCViewController.m
//  TipCalculator
//
//  Created by Briana Chapman on 8/25/14.
//  Copyright (c) 2014 Briana Chapman. All rights reserved.
//

#import "BCCViewController.h"

@interface BCCViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *checkTotal;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property NSInteger percentTip;
@end

@implementation BCCViewController
- (IBAction)textFieldChanged:(UITextField *)sender {
    float check = [self.checkTotal.text floatValue];
    float tip = check * ((float)self.percentTip / 100.0);
    self.tipLabel.text = [NSString stringWithFormat:@"%.2f", tip];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.checkTotal becomeFirstResponder];
    self.percentTip = 15;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
