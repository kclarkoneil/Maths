//
//  main.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        NSString *result;
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        while(YES)
        {
            AdditionQuestion *question = [[AdditionQuestion alloc]init];
            
            
            NSLog(@"%@", [question question]);
            
            InputHandler *input = [[InputHandler alloc]init];
            result = [input getInput];

            
            //in case the user exit
            if ([result isEqualToString:@"quit"])
            {
                break;
            }
            
//            NSLog(@"Input string %@", result);
            NSInteger userAnswer = [result integerValue];
            
            if (userAnswer == [question answer])
            {
                scoreKeeper.rightAnswer++;
                NSLog(@"Right!");
            }
            else
            {
                scoreKeeper.wrongAnswer++;
                NSLog(@"Wrong!");

            }
            

        }
        [scoreKeeper printScore];
        
    }
    return 0;
}
