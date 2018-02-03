//
//  DetailPageViewController.m
//  DuckDuckGo
//
//  Created by Ryan Yan on 2/3/18.
//  Copyright © 2018 Jiaqi Yan. All rights reserved.
//

#import "DetailPageViewController.h"
#import "DDGRelatedTopic.h"

@interface DetailPageViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) DDGRelatedTopic *topic;

@end

@implementation DetailPageViewController

- (instancetype)initWithTopic:(DDGRelatedTopic *)topic{
    self = [super init];
    if (self) {
        _topic = topic;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupWebView];
}

- (void)setupWebView {
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.topic.firstURL];
    [self.webView loadRequest:urlRequest];
}

@end
