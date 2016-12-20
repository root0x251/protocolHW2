//
//  CarBay.m
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "CarBay.h"

@implementation CarBay

// protocol1
- (NSInteger) vinNumber{
    int numberVin = arc4random_uniform(23323);
    return numberVin;
}

- (BOOL) isPainted{
    BOOL paint = arc4random() % 2;
    NSLog(@"Она %@", paint? @"кращенная": @"не крашенная");
    return paint;
}

- (BOOL) isEquipman{
    BOOL Equipman = arc4random_uniform(3);
    NSLog(@"Коплектация %hhd", Equipman);
    return Equipman;
}

// protocol2
- (void) condition{
    NSLog(@"почти как новый");
}

@end
