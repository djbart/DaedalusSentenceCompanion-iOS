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
    _gameTimerRemainingInSeconds = _gameTimerValue * 60;
    
    //Set up a timer that calls the updateTime method every second to update the label
    NSTimer *timer;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateTime)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)updateTime
{
    NSInteger seconds = _gameTimerRemainingInSeconds % 60;
    NSInteger minutes = _gameTimerRemainingInSeconds / 60;
    
    //Update the label with the remaining time
    _gameTimerLabel.text = [NSString stringWithFormat:@"%02i min %02i sec", minutes, seconds];
    
    _gameTimerRemainingInSeconds--;
}

@end
