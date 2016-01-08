//
//  main.m
//  Euler3
//
//  Created by JohanLundgren on 2015-10-12.
//  Copyright (c) 2015 SuperMilkApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

/* The prime factors of 13195 are 5, 7, 13 and 29.
 
 What is the largest prime factor of the number 600851475143 ?*/

/*
 Initialt hade jag ingen aning om hur jag skulle tänkas angripa den här uppgiften men jag fick sedan höra av min handledare Kristofer Eriksson att något som kallas för Eratosthenes såll skulle kunna användas. Det är en algoritm som används för att ta reda på just den största primfaktorn i ett tal och den funkar som så:
 1. Gör en lista med alla heltal större än 1 upp till en övre gräns, i vårt fall roten ur det stora numret vi ska primfaktorisera. Att den övre gränsen blir roten ur och inte det stora talet i sig beror på att varje nummer som är delbart med ett större nummer också är delbart med ett nummer som är mindre än roten ur det stora talet.
 2. Stryk från listan alla jämna tal större än 2 (då dessa är multiplar på 2)
 3. Listans nästa tal som inte är struket är ett primtal.
 4. Stryk sedan alla tal som är större än talet som hittades i det föregående steget samtidigt som de är multiplar på det (prim)talet.
 5. Upprepa steg 3-4 tills nästa tal på listan varken är struket eller ett primtal större än roten ur talet.
 6. Alla tal som återstår i listan är primtal, och det största kommer vara den största faktorn.
 
 Nu återstår det att formulera detta i kod:
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Nummret: 600851475143
        //Roten ur talet: Sqrt(600851475143) = 775146
        int limit = 775146;
        NSMutableArray *nummer = [[NSMutableArray alloc] init];
        
        for (int i = 2; i < limit; i++) {
            [nummer addObject:[NSNumber numberWithInt:i]];
        }
        
        for (int k = 0; k < [nummer count]; k++) {
            if (k % 2 == 0) {
                [nummer removeObjectAtIndex:k];
            }
        }
        
        for (NSNumber *l = [nummer objectAtIndex:0]; l < [nummer count]; l++) {
            <#statements#>
        }
    }
    return 0;
}

/*
Källor: http://www.matteboken.se/lektioner/matte-1/tal/primtal
 https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
*/