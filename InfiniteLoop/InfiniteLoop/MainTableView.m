//
//  MainTableView.m
//  InfiniteLoop
//
//  Created by yumlive0909 on 15/9/10.
//  Copyright (c) 2015年 yumlive0909. All rights reserved.
//

#import "MainTableView.h"
#import "LoopScollView.h"


@interface MainTableView ()<LoopScollViewDelegate>

@property (nonatomic,strong)NSMutableArray *imgPathArr;
@property (nonatomic,strong)LoopScollView *loopScrollView;

@end


@implementation MainTableView

- (NSMutableArray *)imgPathArr
{
    if (_imgPathArr == nil) {
        _imgPathArr = [[NSMutableArray alloc] initWithObjects:@"http://www.26guoxue.com/portalSite/upload/home_img/dd89379732033937b677a1503cdf46a2.jpg", @"http://www.26guoxue.com/portalSite/upload/home_img/280c8e25a7bbdbc6d3017fc376bb3559.jpg",nil];
    }
    return _imgPathArr;
}

- (LoopScollView *)loopScrollView
{
    if (_loopScrollView == nil) {
        _loopScrollView = [[LoopScollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
        _loopScrollView.delegate = self;
        self.tableView.tableHeaderView = _loopScrollView;
    }
    return _loopScrollView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = NO;
    
    [self.loopScrollView setPictureArray:self.imgPathArr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellId = @"reuseId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)tapScrollPicture:(int)pictureTag
{
    NSLog(@"you had tap the picture tag - %d",pictureTag);
}


@end
