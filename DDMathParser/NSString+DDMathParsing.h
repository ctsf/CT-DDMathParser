//
//  NSString+DDMathParsing.h
//  DDMathParser
//
//  Created by Dave DeLong on 11/21/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDMathEvaluatorResult.h"

@interface NSString (DDMathParsing)

- (DDMathEvaluatorResult *)numberByEvaluatingString;
- (DDMathEvaluatorResult *)numberByEvaluatingStringWithSubstitutions:(NSDictionary *)substitutions;
- (DDMathEvaluatorResult *)numberByEvaluatingStringWithSubstitutions:(NSDictionary *)substitutions error:(NSError **)error;

@end
