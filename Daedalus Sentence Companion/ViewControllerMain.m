//
//  ViewController.m
//  Daedalus Sentence Companion
//
//  Created by Bart Waeterschoot on 02/05/15.
//  Copyright (c) 2015 Cripplefish Games. All rights reserved.
//

#import "ViewControllerMain.h"

@interface ViewControllerMain ()

@property (weak, nonatomic) IBOutlet UILabel *stepperValueLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepperOutlet;
- (IBAction)stepperAction:(id)sender;

@end

@implementation ViewControllerMain

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
    ViewControllerGame *vcg = [segue destinationViewController];
    
    vcg.gameTimerValue = stepperOutlet.value;
}

- (IBAction)stepperAction:(id)sender {
    stepperValueLabel.text = [NSString stringWithFormat:@"%.f minutes",stepperOutlet.value];
}

@end
