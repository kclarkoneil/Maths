//
//  main.m
//  Maths
//
//  Created by Bennett on 2018-07-31.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        BOOL gameOn = YES;
        while(gameOn)
        {
            AdditionQuestion *question = [[AdditionQuestion alloc]init];
            
            
            NSLog(@"%@", [question question]);
            char inputCString[255];
            
            fgets(inputCString, 255, stdin);
            NSString *result = [NSString stringWithCString:inputCString
                                                  encoding:NSUTF8StringEncoding];
            
            //trim the newline
            result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            //in case the user exit
            if ([result isEqualToString:@"quit"])
                gameOn = NO;
            
//            NSLog(@"Input string %@", result);
            NSInteger userAnswer = [result integerValue];
            
            if (userAnswer == [question answer])
            {
                NSLog(@"Right!");
            }
            else
            {
                NSLog(@"Wrong!");

            }
            

        }
        
    }
    return 0;
}
