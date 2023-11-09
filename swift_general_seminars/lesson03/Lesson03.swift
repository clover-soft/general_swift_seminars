//
//  Main.swift
//  swift_general_seminars
//
//  Created by yakov on 09.11.2023.
//

import Foundation
// Есть словарь с видами чая и их стоимостью.
//  Есть очередь людей, которые хотят заказать чай (можно представить её в виде
//  массива видов чая, которые хотят заказать).
//  Необходимо последовательно выводить в консоль сколько заплатит покупатель
//  (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
func lesson03_01() {
    let teaPrices: [String: Double] = ["Green": 5.2, "Black": 4.5, "White": 6.3, "Oolong": 5.7]
    let orders = ["Green", "White", "Black", "Oolong", "Green", "Black"]
    
    for (index, tea) in orders.enumerated() {
        if let price = teaPrices[tea] {
            print("Customer \(index + 1) ordered \(tea), and will pay \(price)")
        } else {
            print("Customer \(index + 1) ordered \(tea), which is not available")
        }
    }
}
//Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
func lesson03_02() {
    let oldArray: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
    let newArray = oldArray.compactMap { $0 }.filter { $0 != 0 && $0 != 4 }.sorted()

    print(newArray)
    
}
//Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
func lesson03_03(from number: Int)->[Int] {
    var array = [Int]()
    var currentNumber = 1
    
    for _ in 0..<number {
        array.append(currentNumber)
        currentNumber *= 2
    }
    
    return array
}
