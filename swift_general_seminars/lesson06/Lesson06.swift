//
//  Lesson06.swift
//  swift_general_seminars
//
//  Created by yakov on 22.11.2023.
//

import Foundation
// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками
struct PizzeriaEmployee {
    var name: String
    var salary: Double
    var position: Position
    
    enum Position {
        case cashier
        case cook
    }
}


//Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе
class Table {
    let seats: Int
    weak var pizzeria: Pizzeria? // делаем слабую ссылку
    
    init(seats: Int, pizzeria: Pizzeria) {
        self.seats = seats
        self.pizzeria = pizzeria
    }
    
    func checkAvailability(_ guests: Int) -> Bool {
        return guests <= seats
    }
}

//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра
class Pizzeria {
    private var availablePizzas: [Pizza]
    private var employees: [PizzeriaEmployee]
    private var tables: [Table]
    
    init(pizzas: [Pizza], employees: [PizzeriaEmployee]) {
        self.availablePizzas = pizzas
        self.employees = employees
        self.tables = []
        createTables()
    }
    
    private func createTables() {
        for _ in 1...5 { // Пример создания 5 столиков
            let table = Table(seats:4, pizzeria: self)
            tables.append(table)
        }
    }
    
    func addPizza(newPizza: Pizza) {
        self.availablePizzas.append(newPizza)
    }
    
    func getPizzas() -> [Pizza] {
        return self.availablePizzas
    }
}




