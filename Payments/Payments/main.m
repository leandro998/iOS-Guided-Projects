//
//  main.m
//  Payments
//
//  Created by Leandro Prado on 2020-06-13.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double shoppingValue = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%f.\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", shoppingValue);
        NSString *strinput = getUserInput(255, @"");
        NSNumber *paymentMethod = [[[NSNumberFormatter alloc] init] numberFromString:strinput];
        if (paymentMethod == NULL) {
            NSLog(@"Invalid payment method");
        } else {
        NSLog(@"%@", paymentMethod);
        }
        PaymentGateway *gateway = [[PaymentGateway alloc] init];
//        gateway.processPaymentAmount = shoppingValue;
//        NSLog(@"paymentGateway: %@", [test1 processPaymentAmount]);
    }
    return 0;
}
