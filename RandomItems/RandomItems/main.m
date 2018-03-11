//
//  main.m
//  RandomItems
//
//  Created by iroot on 2018/3/11.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h" // 为什么不是导入BNRItem.m

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // 1.使用数组
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero" atIndex:0];
        
        // NSString *myString = @"Hello, World!";
        for (int i = 0; i < [items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@", item);
        }
        
        // 使用快速枚举，比for循环更简洁、更快
        for (NSString *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
        // 2.使用对象
        BNRItem *item = [[BNRItem alloc] init];
        
        [item setItemName:@"Red Sofa"];
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        
        // 使用点语法
        item.valueInDollars = 5;
        // NSLog(@"%d", item.valueInDollars);
        
        // NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        // 调用description实例方法（继承自NSObject）
        NSLog(@"%@", item);
        
        // 3.使用初始化方法
        BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"萨士比亚" valueInDollars:200 serialNumber:@"12345D"];
        NSLog(@"%@", item1);
        BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"Kagol Anthony"];
        NSLog(@"%@", item2);
        
        // NSLog(@"Hello, World!");
    }
    return 0;
}
