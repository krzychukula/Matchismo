//
//  PlayingCard.m
//  Matchismo
//
//  Created by Krzysztof Kula on 26.03.2014.
//  Copyright (c) 2014 krzychukula. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

+ (NSArray *)rankStrings {
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}
- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (NSString *)contents {
    
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;//because we provide setter AND getter

+ (NSArray *)validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit {
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}
- (NSString *)suit {
    return _suit ? _suit : @"?";
}



@end