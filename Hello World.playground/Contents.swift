//: Playground - noun: a place where people can play

import UIKit

var letter = "."

switch letter {
    case "a", "e", "i", "o", "u":
        print("\(letter) is a vowel.")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r" , "s", "t", "v", "w", "x", "y", "z":
        print("\(letter) is a consonent.")
    default:
        print("Huh... what the heck is \(letter)?")
}