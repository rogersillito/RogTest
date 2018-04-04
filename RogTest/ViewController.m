//
//  ViewController.m
//  RogTest
//
//  Created by Mac Admin on 27/03/2018.
//  Copyright © 2018 Mac Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *saveCount;
@property (weak, nonatomic) IBOutlet UIImageView *check;
@property (nonatomic) int saveCountVal;

@end

@implementation ViewController

- (void)setSaveCountVal:(int)saveCountVal
{
    _saveCountVal = saveCountVal;
    self.saveCount.text = [NSString stringWithFormat:@"Saves: %d", self.saveCountVal];
    [self.saveCount setHidden:false];
    NSLog(@"Flip count = %d", self.saveCountVal);
}

- (IBAction)saveButton:(UIButton *)sender {
    if ([sender.currentTitleColor isEqual:[UIColor greenColor]]) {
        [sender setTitleColor:[UIColor blackColor]
                     forState:UIControlStateNormal];
        [self.check setHidden:true];
    } else {
        [sender setTitleColor:[UIColor greenColor]
                     forState:UIControlStateNormal];
        [self.check setHidden:false];
        self.saveCountVal++;
    }
    //UIImage *checkImage = [UIImage imageNamed:@"check"];
}

@end
