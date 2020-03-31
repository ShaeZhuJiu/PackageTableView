//
//  AppSettingTableView.h
//  PackageTableView
//
//  Created by 谢鑫 on 2020/3/30.
//  Copyright © 2020 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AppSettingTableView;
@protocol  AppSettingTableViewDelegate<NSObject>
@optional
-(void)AppSettingTableViewSelected:(AppSettingTableView*)appSettingTableView resultString:(NSString*)resultString Row:(int)row;
@end
@interface AppSettingTableView : UITableView
@property (nonatomic,weak) id <AppSettingTableViewDelegate> mydelegate;
-(id)setTitle:(NSString *)title AndArray:(NSArray *)array;
@end

NS_ASSUME_NONNULL_END
