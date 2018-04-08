//
//  PrimeNumbers.swift
//  PrimeNumberGenerator
//
//  Created by Grzegorz Surma on 08/04/2018.
//  Copyright © 2018 Grzegorz Surma. All rights reserved.
//

import Foundation

struct PrimeNumbers {
    
    static func generate(upperBound: Int = 1000000) -> [Int] {
        var eratosthenesSieve = Array.init(repeating: true,
                                           count: upperBound)
        var primes = [Int]()
        eratosthenesSieve[0] = false
        eratosthenesSieve[1] = false
        for i in 2..<upperBound where eratosthenesSieve[i] == true {
            var j = i*i
            while j < upperBound {
                eratosthenesSieve[j] = false
                j += i
            }
            primes.append(i)
        }
        return primes
    }
}
