// fig3-01-11: main.swift:
// Using class Account's init method to initialize an Account's
//name property when the Account object is created
import Foundation //

//create and configure an NSNumberFormater for currency values
var formatter = NSNumberFormatter()
formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle

// function to return String representative of an Account's information
func formatAccountString(account: Account) -> String {
    return account.name + "'s balance: " +
        formatter.stringFromNumber(account.balance)! //! means do not return nill
    }
//create two Account objects
  let account1 = Account(name: "Jane Green", balance: 50.00)
  let account2 = Account(name: "John Blue", balance: -7.53)

// display initial balance of each Acoount
  println(formatAccountString(account1))
  println(formatAccountString(account2))

//test Account's deposit method
var depositAmount = 25.53
//println("\ndepositing " + formatter.stringFromNumber(depositAmount) +
println("\ndepositing " + formatter.stringFromNumber(depositAmount)! +
        " into account1\n")
account1.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

depositAmount = 123.45
//println("\ndepositing " + formatter.stringFromNumber(depositAmount) +
println("\ndepositing " + formatter.stringFromNumber(depositAmount)! +
    " into account1\n")
account2.deposit(depositAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))
///////////////////******** copy paste
//test Account's withdraw method
var withdrawalAmount = 14.27

println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " into account1\n")
account1.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))

withdrawalAmount = 100.00
println("\nwithdrawing " + formatter.stringFromNumber(withdrawalAmount)! +
    " into account1\n")
account2.withdraw(withdrawalAmount)

println(formatAccountString(account1))
println(formatAccountString(account2))



