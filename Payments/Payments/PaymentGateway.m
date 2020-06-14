//
//  PaymentGateway.m
//  Payments
//
//  Created by Leandro Prado on 2020-06-14.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway {
    NSInteger *_paymentMethod;
}

-(instancetype) init {
    if (self = [super init]) {
        _paymentMethod = 0;
    }
    return self;
}

- (NSInteger *) paymentMethod {
    return _paymentMethod;
}

- (void) processPaymentAmount: (NSInteger *) paymentMethod {
    _paymentMethod = paymentMethod;
}

@end
