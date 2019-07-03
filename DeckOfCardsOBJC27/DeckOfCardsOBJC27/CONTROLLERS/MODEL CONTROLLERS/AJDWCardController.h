//
//  AJDWCardController.h
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/2/19.
//  Copyright © 2019 Austin West. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface AJDWCardController : NSObject
+(void) fetchCard: (void(^) (Card *)) completion;

@end

NS_ASSUME_NONNULL_END
