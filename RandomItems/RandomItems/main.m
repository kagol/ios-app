//
//  main.m
//  RandomItems
//
//  Created by iroot on 2018/3/11.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h" // 为什么不是导入BNRItem.m
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        // 1.使用数组
        NSMutableArray *items = [[NSMutableArray alloc] init];
        /*[items addObject:@"One"];
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
        }*/
        
        // 4.使用类方法
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        // id lastObj = [items lastObject];
        // [lastObj count];
        // [items count];
        
        for (BNRItem *item in items) {
            // NSLog(@"%@", item);
        }
        
        // 完成初级练习，试图返回第11个对象（index为10）
        // NSLog(@"%@", items[10]);
        
        // items = nil;
        
        // 2.使用对象
        /*BNRItem *item = [[BNRItem alloc] init];
        
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
        NSLog(@"%@", item2);*/
        
        // 完成中级练习
        BNRItem *item3 = [[BNRItem alloc] initWithItemName:@"Anthony" valueInDollars:200 serialNumber:@"23556I"];
        // NSLog(@"%@", item3);
        
        // 完成高级练习
        BNRContainer *subitems = [[BNRContainer alloc] initWithContainerName:@"Kagol" subitems:items];
        NSLog(@"%@", subitems);
        
        // NSLog(@"Hello, World!");
    }
    return 0;
}
