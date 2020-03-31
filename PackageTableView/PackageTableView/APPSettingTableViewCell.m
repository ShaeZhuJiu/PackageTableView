//
//  APPSettingTableViewCell.m
//  PackageTableView
//
//  Created by 谢鑫 on 2020/3/30.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "APPSettingTableViewCell.h"

@implementation APPSettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+(instancetype)cell{
    APPSettingTableViewCell* cell=[[[NSBundle mainBundle]loadNibNamed:@"APPSettingTableViewCell" owner:self options:nil]lastObject];
    
    return cell;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
