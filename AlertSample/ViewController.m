//
//  ViewController.m
//  AlertSample
//
//  Created by Constantine Mars on 3/15/16.
//  Copyright © 2016 Constantine Mars. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

void(^complete)(void)= ^(void) {
    NSLog(@"done");
};

-(IBAction)click:(id)sender{
        UIAlertController* a=[UIAlertController alertControllerWithTitle:@"Title" message:@"Message" preferredStyle:UIAlertControllerStyleAlert];
    [a addAction:[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:a animated:YES completion:complete];
}
@end
