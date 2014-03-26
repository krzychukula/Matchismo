//
//  Card.h
//  Matchismo
//
//  Created by Krzysztof Kula on 26.03.2014.
//  Copyright (c) 2014 krzychukula. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChoosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end