//
//  ViewControllerRoundStart.h
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 22/07/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerRoundStart : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *gameTimerLabel;
@property double gameTimerValue;
@property int gameTimerRemainingInSeconds;

@end
