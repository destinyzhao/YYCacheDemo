//
//  ViewController.m
//  YYCacheDemo
//
//  Created by Alex on 15/12/3.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import <YYCache/YYCache.h>
#import "UserInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    YYCache *cache = [[YYCache alloc]initWithName:@"cacheTest"];
    id getCache = [cache objectForKey:@"cache"];
    if (getCache) {
        NSLog(@"getObject:%@",getCache);
    }
    else
    {
        [cache setObject:@"test" forKey:@"cache"];
        NSLog(@"setObject:%@",getCache);
    }
    
    
    id  getDicCache = [cache objectForKey:@"userDic"];
    if (getDicCache) {
        NSDictionary *dic = (NSDictionary *)[cache objectForKey:@"userDic"];
        NSLog(@"getDicObject:%@", dic);
        NSLog(@"getDicObject:%@", [dic objectForKey:@"name"]);
    }
    else
    {
        NSDictionary *dic = @{@"name":@"alex",@"age":@18};
        [cache setObject:dic forKey:@"userDic"];
        NSLog(@"setDicObject:%@",dic);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
