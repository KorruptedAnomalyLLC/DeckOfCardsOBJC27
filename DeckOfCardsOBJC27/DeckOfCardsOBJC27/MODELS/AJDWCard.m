//
//  AJDWCard.m
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/2/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import "AJDWCard.h"

@implementation AJDWCard

-(instancetype)initWithSuit:(NSString *)suit image:(NSString *)image
{
    
    self = [super init];
    if (self) {
        _suit = suit;
        _image = image;
    }
    return self;
}

@end

@implementation Card (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)
-(instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *suitFromJson = dictionary[@"suit"];
    NSString *imageUrl = dictionary[@"image"];
    
    if(![suitFromJson isKindOfClass:[NSString class]] || ![imageUrl isKindOfClass:[NSString class]]) { return nil;
}
    
    return [self initWithSuit:suitFromJson image:imageUrl];
}

@end
