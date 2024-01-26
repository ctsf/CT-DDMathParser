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
        _number = [number copy];
        _salesforceType = [salesforceType copy];
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


@end
