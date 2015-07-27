//
//  ViewControllerGameStart.h
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 02/05/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerRoundStart.h"

@interface ViewControllerGameStart : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *stepperValueLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepperOutlet;
- (IBAction)stepperAction:(id)sender;

@end