//
//  AJDWCard.h
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/2/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AJDWCard : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy, readonly) NSString *image;

-(instancetype)initWithSuit: (NSString *)suit image: (NSString *)image;

-(instancetype)initWithDictionary:(NSDictionary<NSString *,id>*)
otherDictionary;

@end

NS_ASSUME_NONNULL_END
