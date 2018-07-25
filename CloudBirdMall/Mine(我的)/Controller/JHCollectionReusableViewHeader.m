//
//  JHCollectionReusableViewHeader.m
//  ExperienceCentr
//
//  Created by 同城小鸟 on 2018/7/12.
//  Copyright © 2018年 同城小鸟. All rights reserved.
//

#import "JHCollectionReusableViewHeader.h"

@implementation JHCollectionReusableViewHeader

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UILabel *line = [[UILabel alloc] initWithFrame:CGRectMake(-15, CGRectGetMaxY(self.name.frame), KSCREEN_WIDTH, 1)];
        line.backgroundColor = [UIColor lightGrayColor];
        [self.name addSubview:line];
        UILabel *bacView = [[UILabel alloc] initWithFrame:CGRectMake(-15, 0, 15, self.name.mj_h)];
        bacView.backgroundColor = [UIColor whiteColor];
        [self.name addSubview:bacView];
        [self addSubview:self.name];
    }
    return self;
}


- (UILabel *)name{
    if (!_name) {
        _name = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, KSCREEN_WIDTH-15, 49)];
        _name.backgroundColor = [UIColor whiteColor];
        _name.textAlignment = NSTextAlignmentLeft;
    }
    return _name;
}

@end
