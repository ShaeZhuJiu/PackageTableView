//
//  APPSettingTableViewCell.h
//  PackageTableView
//
//  Created by 谢鑫 on 2020/3/30.
//  Copyright © 2020 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APPSettingTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
+(instancetype)cell;
@end

NS_ASSUME_NONNULL_END
