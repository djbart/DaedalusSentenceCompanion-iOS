//
//  ViewControllerGameStart.m
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 02/05/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import "ViewControllerGameStart.h"

@implementation ViewControllerGameStart

@synthesize stepperOutlet, stepperValueLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewControllerRoundStart *vcg = [segue destinationViewController];
    
    vcg.gameTimerValue = stepperOutlet.value;
}

- (IBAction)stepperAction:(id)sender {
    stepperValueLabel.text = [NSString stringWithFormat:@"%.f minutes",stepperOutlet.value];
}

@end
