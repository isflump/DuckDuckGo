//
//  HomePageViewController.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/2/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "HomePageViewController.h"
#import "SearchResultTableViewCell.h"
#import "HomePageDataProvider.h"
#import "DetailPageViewController.h"
#import "DDGRelatedTopic.h"

@interface HomePageViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) HomePageDataProvider *dataProvider;

@end

@implementation HomePageViewController

NSInteger numberOfRows = 20;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupHomePageView];
    [self setupDataProvider];
    [self getSearchData];
}

#pragma mark - Page setup

- (void)setupHomePageView {
    [self setupNavigationBar];
    [self setupTableView];
}

- (void)setupNavigationBar {
    self.navigationItem.title = NSLocalizedString(@"DuckDuckGo List", @"DuckDuckGo List");
}

- (void)setupTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    UINib * resultCellNib = [UINib nibWithNibName:@"SearchResultTableViewCell" bundle:nil];
    [self.tableView registerNib:resultCellNib forCellReuseIdentifier:NSStringFromClass([SearchResultTableViewCell class])];
}

#pragma mark - setup
- (void)setupDataProvider{
    _dataProvider = [[HomePageDataProvider alloc] init];
}

#pragma mark - Get Data
- (void)getSearchData{
    __weak HomePageViewController *weakSelf = self;
    [self.dataProvider getData:^{
        [weakSelf.tableView reloadData];
    }];
}

#pragma mark - UITableViewDataSource

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    SearchResultTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([SearchResultTableViewCell class]) forIndexPath:indexPath];
    DDGRelatedTopic *topic = self.dataProvider.relatedTopicList[indexPath.row];
    if (topic){
        [cell updateWith:topic];
    }
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self.dataProvider.relatedTopicList count] > 0){
        return numberOfRows;
    }
    return 0;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DDGRelatedTopic *topic = self.dataProvider.relatedTopicList[indexPath.row];
    if (topic && topic.firstURL){
        [self gotoDetailPageWith:topic];
    }
}

- (void)gotoDetailPageWith:(DDGRelatedTopic *)topic{
    DetailPageViewController *viewController = [[DetailPageViewController alloc] initWithTopic:topic];
    [self.navigationController pushViewController:viewController animated:true];
}


@end
