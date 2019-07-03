//
//  Card.h
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/3/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property(nonatomic, copy, readonly) NSString *suit;
@property(nonatomic, copy, readonly) NSString *value;
@property(nonatomic, copy, readonly) NSString *code;
@property(nonatomic, copy, readonly) NSString *image;

- (instancetype) initWithSuit: (NSString *) suit
                        value: (NSString *) value
                         code: (NSString *) code
                        image: (NSString *) image;
@end

@interface Card (JSONConvertible) //JsonConvertible named such because it is the goal
-(instancetype) initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;
// init(with dictionary: [String: Any]) {

@end

NS_ASSUME_NONNULL_END
