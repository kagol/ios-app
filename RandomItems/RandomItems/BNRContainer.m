//
//  BNRContainer.m
//  RandomItems
//
//  Created by iroot on 2018/3/12.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype) initWithContainerName:(NSString *)name subitems:(NSMutableArray *)sitems {
    self = [super init];
    if(self) {
        _containerItemName = name;
        _subitems = sitems;
    }
    return self;
}

- (instancetype) initWithContainerName:(NSString *)name {
    return [self initWithContainerName:name subitems:NULL];
}

- (instancetype)init {
    return [self initWithContainerName:@"Container Item"];
}

- (void)setContainerName:(NSString *)str {
    _containerItemName = str;
}
- (NSString *)containerItemName {
    return _containerItemName;
}

- (void)setSubItem:(NSMutableArray *)subitems {
    _subitems = subitems;
}
- (NSMutableArray *)subitems {
    return _subitems;
}

- (NSString *)description {
    NSMutableArray *items = self.subitems;
    int totalValue = 0;
    for (BNRItem *item in items) {
        // NSLog(@"%@", item);
        totalValue = totalValue + item.valueInDollars;
    }
    // int totalValue = 100;//item.valueInDollars;
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"Container name:%@, total value:%d, BNRItems:%@",
        self.containerItemName,
        totalValue,
        self.subitems];
    return descriptionString;
}

@end
