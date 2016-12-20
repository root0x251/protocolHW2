//
//  CarBay.h
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolOne.h"
#import "ProtocolTwo.h"

@interface CarBay : NSObject <ProtocolOne, ProtocolTwo>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *secondName;
@property (assign, nonatomic) NSInteger theNumberOfOwners;



@end
