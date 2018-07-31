//
//  ScoreKeeper.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)printScore
{
    int percentage = (_rightAnswer / (_rightAnswer + _wrongAnswer)) * 100;
    NSLog(@"score: %i right, %i wrong ---- %i %%", (int)_rightAnswer, (int)_wrongAnswer, percentage);
}
@end
