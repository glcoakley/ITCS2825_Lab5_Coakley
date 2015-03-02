//
//  ViewController.m
//  ITCS2825_Lab5_Coakley
//
//  Created by ITCS2825 Kozlevcar on 2/27/15.
//  Copyright (c) 2015 lcc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *theScroller;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segEmbeddedSites;
- (IBAction)segSelectEmbeddedSite:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webvEmbeds;

@end

NSString  *faveEmbedSites[] =
{
    @"www.ti.com",
    @"www.nutsvolts.com",
    @"www.arduino.cc"
};

NSString  *faveInfoSites[] =
{
    @"www.ti.com",
    @"www.nutsvolts.com",
    @"www.arduino.cc"
};

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.theScroller.contentSize = CGSizeMake(280, 1000.0);
}

-(void)loadWebView:(UIWebView *) aWebView  withNSStringUrl: (NSString *)aURL
{
    NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"http://%@", aURL ]];
    
    [aWebView loadRequest:[NSURLRequest requestWithURL:url]];
    
    
    
}

- (IBAction)segSelectEmbeddedSite:(UISegmentedControl *)sender
{
    int idx = self.segEmbeddedSites.selectedSegmentIndex;
    [self loadWebView:self.webvEmbeds withNSStringUrl:faveEmbedSites[idx]];
}
@end
