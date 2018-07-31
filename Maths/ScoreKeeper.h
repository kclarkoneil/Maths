//
//  ScoreKeeper.h
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property float rightAnswer;
@property float wrongAnswer;

-(void)printScore;

@end
