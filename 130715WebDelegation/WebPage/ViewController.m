//
//  ViewController.m
//  WebPage
//
//  Created by Jessica Sturme on 15/07/13.
//  Copyright (c) 2013 Jessica Sturme. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    __weak IBOutlet UITextField *searchField;
    __weak IBOutlet UIWebView *webView;

    __weak IBOutlet UIActivityIndicatorView *activityIndicator;
}

- (IBAction)goSearch:(id)sender;
- (IBAction)backStep:(id)sender;
- (IBAction)forwardStep:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    NSString *address = @"http://www.trademe.co.nz";
    NSURL *url = [NSURL URLWithString:address];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [super viewDidLoad];
    webView.delegate = self;  //if this is commented out you dont get the calls eg didstartload
    
    
    [webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView

{
    [activityIndicator startAnimating];
    
    NSLog(@"DId StartLoad"); //shows when it started
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [activityIndicator stopAnimating];
    activityIndicator.hidesWhenStopped = YES;
    
    
    NSLog(@"Did FinishLoad"); //when it finished loading the page
    
}
- (IBAction)goSearch:(id)sender {
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:searchField.text]]];
    
}

- (IBAction)backStep:(id)sender {
    if ([webView canGoBack]) {
        [webView goBack];
    }
}

- (IBAction)forwardStep:(id)sender {
    if ([webView canGoForward]) {
        [webView goForward];
    }
}
@end
