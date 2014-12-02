//
//  ABENBrowserViewController.m
//  everynote
//
//  Created by Alex Beltyukov on 12/2/14.
//  Copyright (c) 2014 Alex Beltyukov. All rights reserved.
//

#import "ABENBrowserViewController.h"

@interface ABENBrowserViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *urlField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ABENBrowserViewController

- (IBAction)browseTo:(id)sender {
    // Hide keyboard
    [_urlField resignFirstResponder];
    
    NSURL *url = [[NSURL alloc] initWithString: _urlField.text];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL: url];
    [_webView loadRequest:request];
}

// Called when 'return' key is pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self browseTo:textField];
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _urlField.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
