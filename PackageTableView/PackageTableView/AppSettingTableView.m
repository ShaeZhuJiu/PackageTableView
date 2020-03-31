//
//  AppSettingTableView.m
//  PackageTableView
//
//  Created by 谢鑫 on 2020/3/30.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "AppSettingTableView.h"
#import "APPSettingTableViewCell.h"

//cell identity
#define kTableViewCell @"AppSettingTableViewCell"
//title 的高度
#define kTitleHeight 45
//title 字体颜色
#define kTitleTextColor RGB(169,179,186)
//cell 背景色
#define kBGColor RGB(54,67,76)
//cell  字体
#define kFont FONT(12.0f)
//cell  字体颜色
#define kCellTextColor [UIColor blueColor]
//隔断线的颜色
#define kCellLineColor [UIColor darkGrayColor]
@interface AppSettingTableView()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSArray *dataArray;
@property(nonatomic,copy)NSString *titleString;
//@property (nonatomic,assign)int width;
@end
@implementation AppSettingTableView
 
 
-(id)setTitle:(NSString *)title AndArray:(NSArray *)array
{
    _dataArray = array;
    NSLog(@"_dataArray=%@",_dataArray);
    self.tableHeaderView = [self setHeaderViewWithString:title];
    //设置状态栏返回顶部
    [self setScrollsToTop:YES];
    //设置去除tableview的底端横线
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
    //去掉tableview的回弹滚动
    self.bounces =NO;
    [self reloadData];
    
    return self;
     
}
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
//    _width = frame.size.width;
    self.delegate = self;
    self.dataSource = self;
    
    return self;
}
-(UIView *)setHeaderViewWithString:(NSString *)title
{
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, kTitleHeight)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:headView.frame];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = title;
    titleLabel.backgroundColor = [UIColor whiteColor];;
    titleLabel.font = [UIFont
    boldSystemFontOfSize:20];
    titleLabel.textColor = [UIColor blackColor];
    [headView addSubview:titleLabel];
    return headView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}
/*-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%f",(self.frame.size.height-kTitleHeight)/_dataArray.count);
    return (self.frame.size.height-kTitleHeight)/_dataArray.count;
    
}*/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
//    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:kTableViewCell forIndexPath:indexPath];
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kTableViewCell];
    APPSettingTableViewCell *cell=[APPSettingTableViewCell cell];
    
   // CGRect cellFrame = [self rectForRowAtIndexPath:indexPath];
   // NSLog(@"%f",cellFrame.size.height);
    cell.label.text=_dataArray[indexPath.row];
    /*//各标题内容
    UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, cellFrame.size.width, cellFrame.size.height)];
    contentLabel.textColor = kCellTextColor;
    contentLabel.backgroundColor = [UIColor redColor];
    contentLabel.textAlignment = NSTextAlignmentCenter;
    contentLabel.text = _dataArray[indexPath.row];
    NSLog(@"_dataArray[%ld]=%@",(long)indexPath.row,_dataArray[indexPath.row]);
    contentLabel.font =[UIFont
    boldSystemFontOfSize:20];
    contentLabel.highlightedTextColor = [UIColor blackColor];
    //隔断线
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, cellFrame.size.width, 1)];
    lineView.backgroundColor = kCellLineColor;
    //选中颜色设置
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cellFrame] ;
    cell.selectedBackgroundView.backgroundColor = [UIColor yellowColor];
    if (indexPath.row ==0) {
        [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionTop];
    }
    [cell addSubview:contentLabel];
    [cell addSubview:lineView];
     */
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     
    if ([self.mydelegate respondsToSelector:@selector(AppSettingTableViewSelected:resultString:Row:)]) {
        [self.mydelegate AppSettingTableViewSelected:self resultString:_dataArray[indexPath.row] Row:(int)indexPath.row];
    }
}
@end
