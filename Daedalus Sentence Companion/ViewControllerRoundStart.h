//
//  ViewControllerRoundStart.h
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 22/07/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerRoundStart : UIViewController

//Game settings
@property (weak, nonatomic) IBOutlet UILabel *gameTimerLabel;
@property (weak, nonatomic) IBOutlet UIProgressView *gameTimerProgress;
@property double gameTimerValue;
@property int gameTimerRemainingInSeconds;
@property int gameTimerInitialInSeconds;

//Round settings
@property (weak, nonatomic) IBOutlet UILabel *roundTimerLabel;
@property (weak, nonatomic) IBOutlet UILabel *disableLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *cardsToDrawLabel;

- (IBAction)RerollRoundTime:(id)sender;
- (IBAction)RerollDisabledLocation:(id)sender;
- (IBAction)RerollCardsToDraw:(id)sender;

@end
