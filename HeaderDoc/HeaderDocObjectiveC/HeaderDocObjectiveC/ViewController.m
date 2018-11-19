//
//  ViewController.m
//  HeaderDocObjectiveC
//
//  Created by ViTuNguyen on 11/17/18.
//  Copyright © 2018 ViTuNguyen. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)didTapMathPlusButton:(id)sender {
    self.lblResults.text = [ViewModel mathPlusWithA:self.txtA.text andB:self.txtB.text];
    
}
    
    

- (IBAction)didTapMinusButton:(id)sender {
    self.lblResults.text = [NSString stringWithFormat:@"%d", [self.txtA.text intValue] - [self.txtB.text intValue]];
    
}
    @end
