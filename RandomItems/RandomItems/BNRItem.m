//
//  BNRItem.m
//  RandomItems
//
//  Created by iroot on 2018/3/11.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super init];
    if(self) {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        // 设置创建时间为系统当前时间
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (instancetype) initWithItemName:(NSString *)name {
    return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

- (instancetype)init {
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str {
    _itemName = str;
}
- (NSString *)itemName {
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str {
    _serialNumber = str;
}
- (NSString *)serialNumber {
    return _serialNumber;
}

- (void)setValueInDollars:(int)v {
    _valueInDollars = v;
}
- (int)valueInDollars {
    return _valueInDollars;
}

- (NSDate *)dateCreated {
    return _dateCreated;
}

- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@(%@) Worth $%d, recorded on %@",
        self.itemName,
        self.serialNumber,
        self.valueInDollars,
        self.dateCreated];
    return descriptionString;
}
@end