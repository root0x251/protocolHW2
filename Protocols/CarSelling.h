//
//  CarSelling.h
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolOne.h"
@interface CarSelling : NSObject <ProtocolOne>

typedef enum{
    Titanium,
    SYNCEdition,
    PowerShift
    
} Equipman;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *secondName;




@end
