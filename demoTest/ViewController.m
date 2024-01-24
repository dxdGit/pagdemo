//
//  ViewController.m
//  demoTest
//
//  Created by yy on 2024/1/24.
//

#import "ViewController.h"

#import <libpag/PAGImageView.h>
#import <libpag/PAG.h>

@interface ViewController ()

@property (nonatomic, strong) NSArray<PAGImageView *> *pags;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int i = 0 ; i < 36; i++) {
        PAGImageView *pagImgV = [[PAGImageView alloc] init];
        [self.view addSubview:pagImgV];
        CGFloat x = 10 + (40 + 5) * (i % 6);
        CGFloat y = 100 + (40 + 10) * (i / 6);
        pagImgV.frame = CGRectMake(x,y, 40, 40);
        
        NSString *name = [NSString stringWithFormat:@"skill_rank_mini_animation_normal_%d.pag",i / 6 + 7];
        NSString *filePath = [[NSBundle bundleWithPath:NSBundle.mainBundle.bundlePath] pathForResource:name ofType:nil];
        [pagImgV setPath:filePath];
        [pagImgV setRepeatCount:-1];
        [pagImgV play];
    }
    
    NSLog(@"version : %@",[PAG SDKVersion]);
}


@end
