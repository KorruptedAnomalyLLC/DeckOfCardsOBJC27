//
//  AJDWCardController.m
//  DeckOfCardsOBJC27
//
//  Created by Austin West on 7/2/19.
//  Copyright © 2019 Austin West. All rights reserved.
//


#import "AJDWCardController.h"
#import "Card.h"

static NSString * const baseURLString = @"https://deckofcardsapi.com/api/deck/new/draw/?count=1";

@implementation AJDWCardController

+ (void) fetchCard: (void (^)(Card *)) completion {
    NSURL *baseURL = [NSURL URLWithString:baseURLString];
    
    [[[NSURLSession sharedSession] dataTaskWithURL: baseURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"There was an error in %s: %@, %@", __PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
        }
        
        if (response)
        {
            NSLog(@"%@", response);
        }
        
        if (data)
        {
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options: 2 error: &error];
            if(!dictionary)
            {
                NSLog(@"Error parsing the JSOn: %@", error);
                completion(nil);
                return;
            }
            Card *card = [[Card alloc] initWithDictionary:dictionary];
            completion(card);
        }
        
    }] resume];
}



@end
