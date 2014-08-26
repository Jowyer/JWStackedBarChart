//
//  JWViewController.m
//  JWStackedBarChart
//
//  Created by Jowyer on 08/26/2014.
//  Copyright (c) 2014 Jowyer. All rights reserved.
//

#import "JWViewController.h"
#import "JWStackedBarChart.h"

@implementation JWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Horizontal
    JWStackedBarChart *horizontalStackedBar = [[JWStackedBarChart alloc] initWithFrame:CGRectMake(20, 40, 200, 40) IsVertical:NO];
    [self.view addSubview:horizontalStackedBar];
    
    horizontalStackedBar.attributesDic = @{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15]};
    
    horizontalStackedBar.segmentsArray = @[[JWBarSegment barSegmentWithValue:20 Color:[UIColor blueColor]], [JWBarSegment barSegmentWithValue:30 Color:[UIColor greenColor]], [JWBarSegment barSegmentWithValue:50 Color:[UIColor redColor]]];
    [horizontalStackedBar beginDrawing];
    
    
    // Vertical
    JWStackedBarChart *verticalStackedBar = [[JWStackedBarChart alloc] initWithFrame:CGRectMake(20, 100, 50, 220) IsVertical:YES];
    [self.view addSubview:verticalStackedBar];
    
    verticalStackedBar.attributesDic = @{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15]};
    
    verticalStackedBar.segmentsArray = @[[JWBarSegment barSegmentWithValue:15 Color:[UIColor grayColor]], [JWBarSegment barSegmentWithValue:30 Color:[UIColor greenColor]], [JWBarSegment barSegmentWithValue:25 Color:[UIColor blueColor]], [JWBarSegment barSegmentWithValue:30 Color:[UIColor orangeColor]]];
    [verticalStackedBar beginDrawing];
}

@end
