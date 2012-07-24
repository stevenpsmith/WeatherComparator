//
//  CSA_ComparisonViewController.h
//  WeatherComparator
//
//  Created by Steve Smith on 7/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSA_ComparisonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *yahooWeatherView;
@property (weak, nonatomic) IBOutlet UITextField *txtZipCode;
@property (weak, nonatomic) IBOutlet UIView *wunderWeatherView;


- (IBAction)compareWeather:(id)sender;

@end
