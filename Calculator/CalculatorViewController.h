//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Andreas Nomikos on 11/22/11.
//  Copyright (c) 2011 myLinkPower. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)digitPressed:(id)sender;


@end
