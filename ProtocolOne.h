//
//  ProtocolOne.h
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtocolOne <NSObject>

@required
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *secondName;

- (NSInteger) vinNumber;
- (BOOL) isPainted;
- (BOOL) isEquipman;

@optional
- (NSInteger) prise;
- (NSInteger) miliage;

@end
