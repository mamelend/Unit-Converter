//
//  ViewController.m
//  UnitConverter
//
//  Created by Miguel Melendez on 5/16/16.
//  Copyright © 2016 Miguel Melendez. All rights reserved.
//

#import "ViewController.h"

double convertLitersTo(double literValue, int unit) {
    if (unit == 0) {
        double gallons;
        gallons = literValue * 0.2642;
        return gallons;
    }
    else if (unit == 1) {
        double quarts;
        quarts = literValue * 1.057;
        return quarts;
    }
    else if (unit == 2) {
        double pints;
        pints = literValue * 2.113;
        return pints;
    }
    return 0.00;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButtonPressed:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    double liters = [self.inputField.text doubleValue];
    if (self.segmentController.selectedSegmentIndex == 0){
        double gallons = convertLitersTo(liters, 0);
        [buf appendString: [@(gallons) stringValue]];
        [buf appendString: @" Gallons."];
    }
    else if (self.segmentController.selectedSegmentIndex == 1){
        double quarts = convertLitersTo(liters, 1);
        [buf appendString: [@(quarts) stringValue]];
        [buf appendString: @" Quarts."];
    }
    else if (self.segmentController.selectedSegmentIndex == 2){
        double pints = convertLitersTo(liters, 2);
        [buf appendString: [@(pints) stringValue]];
        [buf appendString: @" Pints."];
    }
    self.outputField.text = buf;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
