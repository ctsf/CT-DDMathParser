//
//  DDMathEvaluatorResult.h
//  DDMathParser
//
//  Created by Artem Viter on 08.12.2023.
//

#import <Foundation/Foundation.h>


@interface DDMathEvaluatorResult : NSObject

@property (readonly) NSNumber * number;

@property (readonly) NSString * salesforceType;


- (instancetype)initWithNumber:(NSNumber *)number salesforceType:(NSString *)salesforceType;

- (instancetype)initWithNumber:(NSNumber *)number;

@end
