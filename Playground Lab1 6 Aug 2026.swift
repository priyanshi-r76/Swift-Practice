/*:
 # Exercise 1: Smart EV Charger
 You are building software for an Electric Vehicle (EV) fast-charging station.
 
 ### Instructions:
 1. Create a constant `batteryCapacityKw` of type `Double` set to `75.0`.
 2. Create a variable `currentChargeKw` of type `Double` set to `18.5`.
 3. Create a constant `chargeRateKwPerHour` set to `50.0`.
 4. Calculate `kwNeeded` (the remaining energy required to reach 100%).
 5. Calculate `hoursToFull` (`kwNeeded / chargeRateKwPerHour`).
 6. Calculate `minutesToFull` by converting `hoursToFull` into minutes (multiply by 60), then cast it to an `Int` (e.g., `Int(minutesToFull)`).
 7. Print: `"Your EV will reach full charge in approximately [X] minutes."`
 */

// WRITE YOUR CODE BELOW:

let batteryCapacityKw: Double = 75.0
var currentChargeKw: Double = 18.5
let chargeRateKwPerHour: Double = 50.0

let kwNeeded: Double = batteryCapacityKw - currentChargeKw
let hoursToFull: Double = kwNeeded / chargeRateKwPerHour
let minutesToFull: Int = Int(hoursToFull * 60)
print("Your EV will reach full charge in approximately \(minutesToFull) minutes.")


/*:
 # Exercise 2: Premium Subscription Pricing
 Create a dynamic discount engine for a music streaming service.
 
 ### Instructions:
 1. Define a base subscription cost: `let basePrice = 14.99`.
 2. Create booleans: `isStudent = true`, `hasPromoCode = false`, `isAnnualSubscriber = true`.
 3. Determine if the user qualifies for **Special Rate**:
    - A user qualifies if they are a `student` **OR** if they have a `promoCode`.
 4. Calculate the final price using a **ternary operator** (` condition ? valueIfTrue : valueIfFalse `):
    - If they qualify for Special Rate, discount the base price by `$5.00`. Otherwise, use `basePrice`.
 5. If `isAnnualSubscriber` is `true`, apply an extra 10% discount to the final price using compound multiplication (`*= 0.90`).
 6. Print the calculated `monthlyTotal`.
 */

// WRITE YOUR CODE BELOW:

let basePrice: Double = 14.99
let isStudent: Bool = true
let hasPromoCode: Bool = false
let isAnnualSubscriber: Bool = true
if isStudent || hasPromoCode {
    print("Qualified for special rate")
}
let finalPrice: Double = isStudent || hasPromoCode ? basePrice - 5.0 : basePrice
let monthlyTotal: Double = finalPrice
if isAnnualSubscriber {
    print("Applying 10% discount")
    monthlyTotal *= 0.90

}
print(monthlyTotal)

/*:
 # Exercise 3: Eco-Climate Control
 Build logic for a thermostat that adjusts modes depending on indoor and outdoor temperatures.
 
 ### Instructions:
 1. Create a tuple containing current temperatures: `let currentTemps = (target: 72, outdoor: 95)`.
 2. Write a `switch` statement evaluating `currentTemps`:
    - If `outdoor > 90`: Print `"Extreme Heat Warning: Pre-cooling home."`
    - If `target < 65`: Print `"Heating System Activated."`
    - If `target > 80`: Print `"Cooling System Activated."`
    - For any other range: Print `"System Idle: Temperature optimal."`
 */

// WRITE YOUR CODE BELOW:

let currentTemps = (target: 72, outdoor: 95)
switch currentTemps {
case (_,let outdoor) where outdoor > 90:
    print("Extreme Heat Warning: Pre-cooling home.")
case (let target,_) where target < 65:
    print("Heating System Activated.")
case (let target,_) where target > 80:
    print("Cooling System Activated.")
default:
    print("System Idle: Temperature optimal.")
}

