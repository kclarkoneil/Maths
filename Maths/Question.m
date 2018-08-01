//
//  Question.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        
        _number1 = arc4random_uniform(90) + 10;
        _number2 = arc4random_uniform(90) + 10;
        int determinant = arc4random_uniform(4);
        switch (determinant) {
            case 0:
                _question = [NSString stringWithFormat:@"What is %lu + %lu ?", _number1, _number2];
                 _answer = _number1 + _number2;
                break;
            case 1:
                _question = [NSString stringWithFormat:@"What is %lu - %lu ?", _number1, _number2];
                 _answer = _number1 - _number2;
                break;
            case 2:
                _question = [NSString stringWithFormat:@"What is %lu x %lu ?", _number1, _number2];
                _answer = _number1 * _number2;
                break;
            case 3:
                _question = [NSString stringWithFormat:@"What is %lu %% %lu ?", _number1, _number2];
                _answer = _number1 / _number2;
                break;
                
        }
        
        _startTime = [NSDate date];
    }
    return self;
}
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}
-(NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
