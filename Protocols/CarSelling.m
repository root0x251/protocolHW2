//
//  CarSelling.m
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "CarSelling.h"

@implementation CarSelling

- (NSInteger) vinNumber{
    int vin = arc4random_uniform(1000);
    return vin;
}

- (BOOL) isPainted{
    BOOL isPaint = arc4random() % 2;
    NSLog(@"Она %@", isPaint? @"крашенная": @"не крашенная");
    return isPaint;
}

- (BOOL) isEquipman{
    BOOL Equipman = arc4random_uniform(3);
    NSLog(@"Коплектация %hhd", Equipman);
    return Equipman;
}

@end
