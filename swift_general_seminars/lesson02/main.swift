//
//  main.swift
//  swift_general_seminars
//
//  Created by yakov on 03.11.2023.
//

import Foundation
// Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет
// положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок
// Функция возвращает сколько денег получит пользователь по итогу.
func calculateAmount(sum: Double, yearlyInterest: Double, years: Int) -> Double {
    let interest = sum * (yearlyInterest / 100) * Double(years)
    let totalSum = sum + interest
    return totalSum
}

let sum = 1000.0
let yearlyInterest = 5.0
let years = 5

let result = calculateAmount(sum: sum, yearlyInterest: yearlyInterest, years: years)
print(result)

//Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом
//пиццы. Добавить возможность получения названия пиццы через rawValue

enum PizzaType: String {
    case margherita = "Маргарита"
    case pepperoni = "Пепперони"
    case hawaiian = "Гавайская"
}

let margheritaPizza = PizzaType.margherita
let pepperoniPizza = PizzaType.pepperoni
let hawaiianPizza = PizzaType.hawaiian

print(margheritaPizza.rawValue)
print(pepperoniPizza.rawValue)
print(hawaiianPizza.rawValue)
