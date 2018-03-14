//
//  BNRContainer.h
//  RandomItems
//
//  Created by iroot on 2018/3/12.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSString *_containerItemName;
    NSMutableArray *_subitems;
}

- (instancetype) initWithContainerName:(NSString *)name subitems:(NSMutableArray *)subitems;
- (instancetype) initWithContainerName:(NSString *)name;

- (void)setContainerName:(NSString *)str;
- (NSString *)containerItemName;

- (void)setSubItem:(NSMutableArray *)subitems;
- (NSMutableArray *)subitems;

@end
