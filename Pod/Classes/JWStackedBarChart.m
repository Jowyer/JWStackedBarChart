//
//  JWStackedBarChart.m
//  JWStackedBarChart
//
//  Created by Jowyer on 14-8-25.
//  Copyright (c) 2014年 jo2studio. All rights reserved.
//

#import "JWStackedBarChart.h"

@interface JWBarSegment ()
@property(nonatomic)         int value;
@property(nonatomic, strong) UIColor *color;
@end

@implementation JWBarSegment

+(JWBarSegment *)barSegmentWithValue:(int)value Color:(UIColor *)color
{
    JWBarSegment *segment = [[JWBarSegment alloc] init];
    segment.value = value;
    segment.color = color;
    return segment;
}

- (void)dealloc
{
    self.color = nil;
}
@end

@implementation JWStackedBarChart
{
    BOOL isVertical;
}

- (id)initWithFrame:(CGRect)frame IsVertical:(BOOL)yesToVertical
{
    self = [super initWithFrame:frame];
    if (self) {
        isVertical = yesToVertical;
    }
    return self;
}

- (void)dealloc
{
    self.segmentsArray = nil;
    self.attributesDic = nil;
}

-(void)beginDrawing
{
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    int total = 0;
    
    for (JWBarSegment *segment in self.segmentsArray)
    {
        total += segment.value;
    }
    
    NSAssert(total == 100, @"total is NOT 100");
    NSAssert(self.attributesDic != nil, @"attributesDic Can Not be Nil");
    
    float offset = 0;
    
    for (JWBarSegment *segment in self.segmentsArray)
    {
        float dimension = ((isVertical ? self.frame.size.height : self.frame.size.width) * segment.value) / total;
        
        UIBezierPath *rectanglePath = isVertical ? [UIBezierPath bezierPathWithRect:CGRectMake(0, offset, self.frame.size.width, dimension)] : [UIBezierPath bezierPathWithRect:CGRectMake(offset, 0, dimension, self.frame.size.height)];
        [segment.color setFill];
        [rectanglePath fill];
        
        NSString *percentString = [NSString stringWithFormat:@"%d%%", segment.value];
        float stringWidth = [percentString sizeWithAttributes:self.attributesDic].width;
        float stringHeight = [percentString sizeWithAttributes:self.attributesDic].height;
        
        if (isVertical)
        {
            float startX = stringWidth >= self.frame.size.width ? 0 : (self.frame.size.width - stringWidth)/2;
            float startY = (dimension - stringHeight) / 2;
            [percentString drawAtPoint:CGPointMake(startX, startY + offset) withAttributes:self.attributesDic];
        }
        else
        {
            float startX = stringWidth >= dimension ? 0 : (dimension - stringWidth)/2;
            [percentString drawAtPoint:CGPointMake(startX + offset, (self.frame.size.height - stringHeight)/2) withAttributes:self.attributesDic];
        }
        
        offset += dimension;
    }
}

@end
