//
//  CSA_ComparisonViewController.m
//  WeatherComparator
//
//  Created by Steve Smith on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CSA_ComparisonViewController.h"
#import "CSY_WeatherListViewController.h"
#import "CSW_WeatherListViewController.h"

@interface CSA_ComparisonViewController () {
    CSY_WeatherListViewController *yahooWeatherVC;
    CSW_WeatherListViewController *wunderWeatherVC;
}

@end

@implementation CSA_ComparisonViewController
@synthesize yahooWeatherView;
@synthesize txtZipCode;
@synthesize wunderWeatherView;


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    yahooWeatherVC = nil;
    [self setYahooWeatherView:nil];
    [self setTxtZipCode:nil];
    [self setWunderWeatherView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (IBAction)compareWeather:(id)sender {
    NSString *zip = [txtZipCode text];
    
    [[yahooWeatherVC view] removeFromSuperview];
    yahooWeatherVC = [[CSY_WeatherListViewController alloc] initWithZipCode:zip];
    [yahooWeatherView addSubview:[yahooWeatherVC view]];
    
    [[wunderWeatherVC view] removeFromSuperview];
    wunderWeatherVC = [[CSW_WeatherListViewController alloc] initWithZipCode:zip];
    [wunderWeatherView addSubview:[wunderWeatherVC view]];
}
@end
