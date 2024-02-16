//
//  DDMathEvaluatorResult.m
//  DDMathParser
//
//  Created by Artem Viter on 08.12.2023.
//

#import <Foundation/Foundation.h>
#import "DDMathEvaluatorResult.h"

@implementation DDMathEvaluatorResult

- (instancetype)initWithNumber:(NSNumber *)number salesforceType:(NSString *)salesforceType {
    self = [super init];
    if (self) {
        _number = number;
        _salesforceType = salesforceType;
    }
    return self;
}

- (instancetype)initWithNumber:(NSNumber *)number {
    return [self initWithNumber:number salesforceType:nil];
}

- (BOOL)isEqual:(id)object {
    if (self == object) {
        return YES;
    }

    if (![object isKindOfClass:[DDMathEvaluatorResult class]]) {
        return NO;
    }

    DDMathEvaluatorResult *otherEvaluatorResult = (DDMathEvaluatorResult *)object;

    return [self.number isEqual:otherEvaluatorResult.number];
}

- (id)copyWithZone:(NSZone *)zone {
    // Create a new instance of DDMathEvaluatorResult
    DDMathEvaluatorResult *copy = [[[self class] allocWithZone:zone] init];
    
    // Copy the properties to the new instance
    copy->_number = [self.number copy];
    copy->_salesforceType = [self.salesforceType copy];
    
    return copy;
}

- (NSComparisonResult)compare:(DDMathEvaluatorResult *)otherResult {
    // Compare the numbers of self and otherResult
    NSNumber* compareWith = nil;
    if(otherResult == nil) {
        return [self.number compare:nil];
    } else if([otherResult isKindOfClass: DDMathEvaluatorResult.class]) {
        return [self.number compare:otherResult.number];
    } else {
        return [self.number compare:otherResult];
    }
}

@end
