//
//  ViewController.m
//  RogTest
//
//  Created by Mac Admin on 27/03/2018.
//  Copyright © 2018 Mac Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)saveButton:(UIButton *)sender {
    if ([sender.currentTitleColor isEqual:[UIColor greenColor]]) {
        [sender setTitleColor:[UIColor blackColor]
                     forState:UIControlStateNormal];
    } else {
        [sender setTitleColor:[UIColor greenColor]
                     forState:UIControlStateNormal];
    }
    //UIImage *checkImage = [UIImage imageNamed:@"check"];
}

@end
