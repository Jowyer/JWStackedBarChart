//
//  JWStackedBarChart.h
//  JWStackedBarChart
//
//  Created by Jowyer on 14-8-25.
//  Copyright (c) 2014年 jo2studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWBarSegment : NSObject

+(JWBarSegment *)barSegmentWithValue:(int)value Color:(UIColor *)color;

@end

@interface JWStackedBarChart : UIView

@property(nonatomic, strong) NSArray *segmentsArray;
@property(nonatomic, strong) NSDictionary *attributesDic;
@property(assign) BOOL showPercentages;
- (id)initWithFrame:(CGRect)frame IsVertical:(BOOL)isVertical;
-(void)beginDrawing;

@end
