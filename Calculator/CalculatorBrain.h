//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Andreas Nomikos on 11/22/11.
//  Copyright (c) 2011 myLinkPower. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void) pushOperand:(double)operand;
- (double) performOperation:(NSString *)operation;
@end
