//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Andreas Nomikos on 11/22/11.
//  Copyright (c) 2011 myLinkPower. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()
@property (nonatomic,strong) NSMutableArray * operandStack ;
@end

@implementation CalculatorBrain

@synthesize operandStack;

- (NSMutableArray*) operandStack
{
    if(!operandStack) {
        operandStack = [[NSMutableArray alloc] init];
    }
    return operandStack; 
}

- (void) pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
    
}

- (double) popOperand {
    NSNumber* operandObject = [self.operandStack lastObject];
    if (operandObject) {
        [self.operandStack removeLastObject];
    }
    return [operandObject doubleValue];
}
- (double) performOperation:(NSString *)operation
{
    double result = 0 ;
    
    // perform the operation here, store answer in result
    
    if ([operation isEqualToString:@"+"]){
        result = [self popOperand] + [self popOperand];
    } else if ([operation isEqualToString:@"*"]){
        result = [self popOperand] * [self popOperand];
    } else if ([operation isEqualToString:@"-"]){
        result = [self popOperand] - [self popOperand];
    } else if ([operation isEqualToString:@"/"]){
        double divisor = [self popOperand];
        if (divisor) {
            result = [self popOperand] / divisor;
        }
    }
    
    [self pushOperand:result];
    
    return result ;
    
}

@end
