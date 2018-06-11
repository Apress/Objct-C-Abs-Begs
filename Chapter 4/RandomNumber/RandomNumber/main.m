//
//  main.m
//  RandomNumber
//
//  Created by Stefan Kaczmarek on 12/3/17.
//  Copyright © 2017 The Zonie, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int randomNumber = 1;
        int userGuess = 1;
        BOOL continueGuessing = YES;
        BOOL keepPlaying = YES;
        char yesNo = ' ';

        while (keepPlaying) {
            randomNumber = (arc4random() % 101);
            NSLog(@"The random number to guess is: %d", randomNumber);
            while (continueGuessing) {
                NSLog (@"Pick a number between 0 and 100. ");
                scanf ("%d", &userGuess);
                fgetc(stdin);    // remove CR/LF i.e extra character
                if (userGuess == randomNumber) {
                    continueGuessing = NO;
                    NSLog(@"Correct number!");
                }
                // nested if statement
                else if (userGuess > randomNumber) {
                    // user guessed too high
                    NSLog(@"Your guess is too high");
                }
                else {
                    // no reason to check if userGuess < randomNumber. It has to be.
                    NSLog(@"Your guess is too low");
                }
                // refactored from our Alice app. This way we only have to code once.
                NSLog(@"The user guessed %d", userGuess);
            }
            NSLog (@"Play Again? Y or N");
            yesNo = fgetc(stdin);
            if (yesNo == 'N' || yesNo == 'n') {
                keepPlaying = NO;
            }
            continueGuessing = YES;
        }
    }

    return 0;
}
