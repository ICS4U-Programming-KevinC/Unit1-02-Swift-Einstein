//
//  Einstein.swift
//
//  Created by Kevin Csiffary
//  Created on 2024-02-27
//  Version 1.0
//  Copyright (c) 2024 Kevin Csiffary. All rights reserved.
//
//  Its Hello World, but with style.

import Foundation

enum InputError: Error {
    case nonNumber
}

let speedOfLight = 299792458.0;

do {
    // Get user input.
    print("Enter the mass of your object in kg:")
    guard let massString = readLine() else {
        throw InputError.nonNumber
    }

    // Cast the input to a double.
    guard let massDouble = Double(massString) else {
        throw InputError.nonNumber
    }

    // Check for negative numbers.
    if massDouble < 0 {
        print("Please enter a non negative number.")
    } else {
        let energy = (massDouble * pow(speedOfLight, 2.0))
        
        print("The energy of the mass you provided is " + String(round(energy * 1000) / 1000.0) + "J")
    }
} catch InputError.nonNumber {
    print("Please enter a proper number")
}
