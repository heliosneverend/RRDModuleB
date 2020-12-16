//
//  ModuleBViewController.m
//  FBSnapshotTestCase
//
//  Created by helios on 2020/12/16.
//

#import "ModuleBViewController.h"
#import "PageBViewController.h"
@interface ModuleBViewController ()

@end

@implementation ModuleBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是模块B业务组件";
   
    self.view.backgroundColor = [UIColor whiteColor];
   
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 300, 100);
    btn.backgroundColor = [UIColor greenColor];
    btn.center = self.view.center;
    [btn setTitle:@"模块B业务功能组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)push {
    PageBViewController *VC = [[PageBViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
