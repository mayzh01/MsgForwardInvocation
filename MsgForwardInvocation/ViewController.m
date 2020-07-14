//
//  ViewController.m
//  MsgForwardInvocation
//
//  Created by mayzh on 7/14/20.
//  Copyright © 2020 My. All rights reserved.
//

#import "ViewController.h"
#import "TestClsMissingMethod.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.

}

- (IBAction)btnAction:(id)sender {
    id obj = [[TestClsMissingMethod alloc] init];
    [obj length];
    [NSClassFromString(@"TestClsMissingMethod") length];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
