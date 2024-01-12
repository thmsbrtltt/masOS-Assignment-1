//
//  main.m
//  Conversions
//
//  Created by  on 2024-01-12.
//

#import <Foundation/Foundation.h>

// -> create custom class named Conversion
@interface Conversion : NSObject

// -> create fields for given parameters
@property (nonatomic, assign) float miles;
@property (nonatomic, assign) float kilometres;
@property (nonatomic, assign) float kilograms;
@property (nonatomic, assign) float pounds;
@property (nonatomic, assign) float inches;
@property (nonatomic, assign) float centimetres;
@property (nonatomic, assign) float US_Dollars;
@property (nonatomic, assign) float CAD_Dollars;

// -> create conversion methods for each parameter
-(void) milesToKilometers;
-(void) kilometersToMiles;
-(void) kilogramsToPounds;
-(void) poundsToKilograms;
-(void) inchesToCentimeters;
-(void) centimetersToInches;
-(void) usToCAD;
-(void) cadToUS;

@end


@implementation Conversion

-(void) milesToKilometers{
    _kilometres = _miles * 1.609;
}

-(void) kilometersToMiles{
    _miles = _kilometres / 1.609;
}

-(void) kilogramsToPounds{
    _pounds = _kilograms *  2.205;
}

-(void) poundsToKilograms{
    _kilograms = _pounds / 2.205;
}

-(void) inchesToCentimeters{
    _centimetres = _inches * 2.54;
}

-(void) centimetersToInches{
    _inches = _centimetres / 2.54;
}

-(void) usToCAD{
    _CAD_Dollars = _US_Dollars * 1.3357;
}

-(void) cadToUS{
    _US_Dollars = _CAD_Dollars / 1.3357;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Conversion *converter = [[Conversion alloc] init];
        
        //prompt user for conversion choice
        NSLog(@"Select the number that correlates to the conversion type:\n 1. Miles to Kilometers\n 2. Kilometers to Miles\n 3. Kilograms to Pounds\n 4. Pounds to Kilograms\n 5. Inches to Centimeters\n 6. Centimeters to Inches\n 7. USD to CAD\n 8. CAD to USD");
        
        int choice;
        
        scanf("%d", &choice);
        
        //prompt user for value to convert
        float value;
        
        NSLog(@"enter a value to convert: ");
        scanf("%f", &value);
        
        //set conversion based on user input (switch)
        switch (choice) {
            case 1:
                [converter setMiles: value];
                [converter milesToKilometers];
                break;
            case 2:
                [converter setKilometres: value];
                [converter kilometersToMiles];
                break;
            case 3:
                [converter setKilograms: value];
                [converter kilogramsToPounds];
                break;
            case 4:
                [converter setPounds: value];
                [converter poundsToKilograms];
                break;
            case 5:
                [converter setInches: value];
                [converter inchesToCentimeters];
                break;
            case 6:
                [converter setCentimetres: value];
                [converter centimetersToInches];
                break;
            case 7:
                [converter setUS_Dollars: value];
                [converter usToCAD];
                break;
            case 8:
                [converter setCAD_Dollars: value];
                [converter cadToUS];
                break;
            default:
                NSLog(@"invalid selection");
                return 1;
        }
        
        //display converison
        NSLog(@"Your initial value: %f", value);
        
        switch(choice) {
            case 1:
                NSLog(@"Converted value: %.2f kilometres", [converter kilometres]);
                break;
            case 2:
                NSLog(@"Converted value: %.2f miles", [converter miles]);
                break;
            case 3:
                NSLog(@"Converted value: %.2f lbs", [converter pounds]);
                break;
            case 4:
                NSLog(@"Converted value: %.2f kgs", [converter kilograms]);
                break;
            case 5:
                NSLog(@"Converted value: %.2f cm", [converter centimetres]);
                break;
            case 6:
                NSLog(@"Converted value: %.2f in", [converter inches]);
                break;
            case 7:
                NSLog(@"Converted value: $%.2f CAD", [converter CAD_Dollars]);
                break;
            case 8:
                NSLog(@"Converted value: $%.2f USD", [converter US_Dollars]);
                break;
        }
    }
    return 0;
}
