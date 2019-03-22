//
//  ViewController.m
//  bsdiffDemo
//
//  Created by zgy on 2019/3/22.
//  Copyright © 2019 zgy. All rights reserved.
//

#import "ViewController.h"
#import "bsdiffHeader.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
//    [self bspatch];
    
    [self appBsdiff];
    
    [self appbspatch];
        
}

- (void)appBsdiff {
    
    const char *argv[4];
    
    argv[0] = "bspatch";
    
    NSString *oldPath = [[NSBundle mainBundle] pathForResource:@"old-bundle.zip" ofType:nil];
    
    NSString *newPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"new-bundle4.zip"];
    
    NSString *newPatch = [[NSBundle mainBundle] pathForResource:@"new.pat" ofType:nil];
    
    argv[1] = [oldPath UTF8String];
    
    argv[2] = [newPath UTF8String];
    
    argv[3] = [newPatch UTF8String];
    
    int result = bspatchmain(4, (char **)argv);
    
    NSLog(@"%d",result);
    
}

- (void)appbspatch {
    
    const char *argv[4];
    
    argv[0] = "bspatch";
    
    NSString *oldPath = [[NSBundle mainBundle] pathForResource:@"old-bundle.zip" ofType:nil];
    
    NSString *newPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"new-bundle4.zip"];
    
    NSString *newPatch = [[NSBundle mainBundle] pathForResource:@"new.pat" ofType:nil];

    argv[1] = [oldPath UTF8String];

    argv[2] = [newPath UTF8String];

    argv[3] = [newPatch UTF8String];

    int result = bspatchmain(4, (char **)argv);

    NSLog(@"%d",result);
    
}

- (void)bspatch {
    
    const char *argv[4];
    
    argv[0] = "bspatch";
    
    NSString *oldPath = @"/Users/zgy/Desktop/resources/bundle-rn.zip";
    
    NSString *newPatch = @"/Users/zgy/Desktop/resources/new.pat";
    
    NSString *newPath = @"/Users/zgy/Desktop/resources/new.zip";
    
    argv[1] = [oldPath UTF8String];
    
    argv[2] = [newPath UTF8String];
    
    argv[3] = [newPatch UTF8String];
    
    int result = bspatchmain(4, argv);
    
    NSLog(@"%d",result);
    
}


@end
