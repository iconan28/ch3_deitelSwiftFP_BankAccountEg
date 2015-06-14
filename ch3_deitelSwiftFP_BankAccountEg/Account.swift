//fig03-1-11:  Account.swift
//Account class with name and balance properties
//an initializer and deposit and withdral mehtods
import Foundation // use Cocoa/Cocoa Touch Foundation Framework
public class Account  {
    public var name: String = "" // properties must be initialized
    
    // balance is public, but its seeter can be used only in class Account
    
    public private(set) var balance: Double = 0.0
    // initializer
    public init(name: String, balance: Double) {
        self.name = name
        
        //validate taht balnace is greater than 0.0; if not,
        //property balance keeps its initial value of 0.0
        if balance > 0.0 {
            self.balance = balance // self refers to the enclosed class
        }
    }
    
    //deposit (add) a valid amount into the Account
    public func deposit(amount: Double) {
        // if amount is valid, add it to the balance
        if amount > 0.0 {
            balance = balance + amount
        }
    }
    
    //withdraw (subtract) a valid amount from the Account
    public func withdraw(amount: Double) {
        // if amount is valid, and the balance will not
        // become negaative, subtract it from the balance
        if amount > 0.0 {
            balance = balance - amount
        }
        
    }
}


