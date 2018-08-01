//
//  AdditionQuestion.h
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSUInteger number1;
@property (nonatomic) NSUInteger number2;
@property (nonatomic) NSUInteger  answer;
@property (nonatomic) NSString *question;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
-(NSTimeInterval)answerTime;

@end
