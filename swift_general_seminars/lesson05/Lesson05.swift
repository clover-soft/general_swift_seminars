//
//  Lesson05.swift
//  swift_general_seminars
//
//  Created by yakov on 14.11.2023.
//

import Foundation

    //Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.


struct FrenchFries: CustomStringConvertible {
    enum Size: String {
        case small = "Маленькая"
        case medium = "Средняя"
        case large = "Большая"
    }
    
    let size: Size
    let cost: Double
    
    var description: String {
        return "Картошка фри размер: \(size.rawValue) Цена: \(cost)"
    }
}
// Класс пиццерия уже есть, удалять его не будем, убрать из него переменную уже не получится, придется делат правки в предыдущем коммите
// Вместо класса пиццерия делаем класс закусочная:
class SnackBar {
    var menu: [Any] = []
    
    init() {}
    
    func addItem(_ item: Any) {
        if item is Pizza || item is FrenchFries {
            menu.append(item)
        } else {
            print("Недопустимая позиция меню")
        }
    }
}

protocol Openable {
    func open()
    func close()
}

extension SnackBar: Openable {
    func open() {
        print("Открытие закусочной")
    }
    
    func close() {
        print("Закрытие закусочной")
    }
}

func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}


// Пример использования
func lesson05_01() {
    let snackBar = SnackBar()
    
    let pizza = Pizza(type: .margherita, dough: .thin, toppings: [.cheese, .tomatoes], cost: 500.00)
    let fries = FrenchFries(size: .medium, cost: 100.00)
    
    snackBar.addItem(pizza)
    snackBar.addItem(fries)
    snackBar.addItem(1)
    
    print(snackBar.menu)
    
    snackBar.open()
    snackBar.close()
    
    
    // Пример использования функции
    let intResult = subtract(10, 5)
    print(intResult) // Вывод: 5

    let doubleResult = subtract(7.5, 2.3)
    print(doubleResult) // Вывод: 5.2
    
}
