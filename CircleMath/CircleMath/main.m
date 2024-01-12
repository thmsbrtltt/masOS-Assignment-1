//
//  main.m
//  CircleMath
//
//  Created by  on 2024-01-12.
//

#import <Foundation/Foundation.h>

// -> create custom class 'Circle' with radius, area, and diameter fields
@interface Circle : NSObject

@property (nonatomic, assign) float radius;
@property (nonatomic, assign) float diameter;
@property (nonatomic, assign) float area;

// -> define set and get methods for radius
-(void) setRadius: (float) radius;
-(float) getRadius;

-(void) computeDiameter;
-(float) getDiameter;

-(void) computeArea;
-(float) getArea;

-(void) print;

@end


@implementation Circle;

//radius
-(void) setRadius: (float) radius{
    _radius = radius;
}

-(float) getRadius{
    return _radius;
}

// -> write computeArea + computeDiameter methods that calculates and stores their respective parameters

//diameter
-(void) computeDiameter {
    _diameter = 2 * _radius;
}

-(float) getDiameter{
    return _diameter;
}

//area
-(void) computeArea {
    _area = 3.14 * _radius * _radius;
}

-(float) getArea{
    return _area;
}

//print
-(void) print{
    NSLog(@"Area: %.2f", _area);
    NSLog(@"Diameter: %.2f", _diameter);
    NSLog(@"Radius: %.2f", _radius);
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Circle *myCircle = [[Circle alloc] init];
        
        // -> test a program using scanf function + get radius from user
        // -> use methods to calculate + display area and diameter
        NSLog(@"Enter the radius of the circle: ");
        float radius;
        scanf("%f", &radius);
        
        //set radius
        [myCircle setRadius:radius];
        
        //compute diameter and area
        [myCircle computeDiameter];
        [myCircle computeArea];
        
        //print results
        [myCircle print];
    }
    return 0;
}
