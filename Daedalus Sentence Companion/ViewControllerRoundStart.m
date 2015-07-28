//
//  ViewControllerRoundStart.m
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 22/07/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import "ViewControllerRoundStart.h"

@implementation ViewControllerRoundStart

- (void) viewDidLoad
{
    [super viewDidLoad];
    _gameTimerInitialInSeconds = _gameTimerValue * 60;
    _gameTimerRemainingInSeconds = _gameTimerValue * 60;
    
    [self updateTime];
    
    //Set up a timer that calls the updateTime method every second to update the label
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTime)
                                           userInfo:nil
                                            repeats:YES];
    
    //Roll dice
    _roundTimerLabel.text = [self RollDie];
    _disableLocationLabel.text = [self RollDie];
    _cardsToDrawLabel.text = [self RollDie];
}

-(void)updateTime
{
    NSInteger seconds = _gameTimerRemainingInSeconds % 60;
    NSInteger minutes = _gameTimerRemainingInSeconds / 60;
    
    //Update the label with the remaining time
    _gameTimerLabel.text = [NSString stringWithFormat:@"%02li min %02li sec", (long)minutes, (long)seconds];
    
    //Update the progress view
    _gameTimerProgress.progress = (float)_gameTimerRemainingInSeconds / (float)_gameTimerInitialInSeconds;
    
    _gameTimerRemainingInSeconds--;
}

- (IBAction)RerollRoundTime:(id)sender {
    _roundTimerLabel.text = [self RollDie];
}

- (IBAction)RerollDisabledLocation:(id)sender {
    _disableLocationLabel.text = [self RollDie];
}

- (IBAction)RerollCardsToDraw:(id)sender {
    _cardsToDrawLabel.text = [self RollDie];
}

- (NSString *)RollDie
{
    return[NSString stringWithFormat:@"%i", (arc4random() % 6) + 1];
}

@end
