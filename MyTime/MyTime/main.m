//
//  main.m
//  MyTime
//
//  Created by  on 2024-01-12.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //declare variable to hold minutes
        NSInteger initialTime;
        
        //prompt user for minutes
        NSLog(@"Enter a time in minutes: ");
        scanf("%ld", &initialTime);
        
        //calculate hours and minutes
        NSInteger Hours = initialTime / 60;
        NSInteger Minutes = initialTime % 60;
        
        NSLog(@"%ld minutes is %ld hours and %ld minutes", initialTime, Hours, Minutes);
        
    }
    return 0;
}
