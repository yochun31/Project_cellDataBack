//
//  tableTableViewCell.m
//  Project_cellDataBack
//
//  Created by 郭堯彰 on 2017/1/18.
//  Copyright © 2017年 charles. All rights reserved.
//

#import "tableTableViewCell.h"

@implementation tableTableViewCell
@synthesize name = _name;
@synthesize aka = _aka;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
