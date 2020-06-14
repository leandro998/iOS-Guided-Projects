//
//  PaymentGateway.h
//  Payments
//
//  Created by Leandro Prado on 2020-06-14.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaymentGateway : NSObject

- (void) processPaymentAmount;
- (NSInteger *) paymentMethod;


@end

NS_ASSUME_NONNULL_END
