//
//  main.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        NSString *result;
        QuestionManager *answerTally = [[QuestionManager alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        while(YES)
        {
            Question *question = [[Question alloc]init];
            
            
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
            
            NSLog(@"useranswer %ld", (long)userAnswer);
            NSLog(@"question answer %lu", (long)[question answer]);
            
            [answerTally.questions addObject:question];
            NSLog(@"%@", [answerTally timeOutput]);

        }
        [scoreKeeper printScore];
    
        
    }
    return 0;
}
