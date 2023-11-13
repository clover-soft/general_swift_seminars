//
//  Lesson04.swift
//  swift_general_seminars
//
//  Created by yakov on 09.11.2023.
//

import Foundation

    //Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
struct Pizza: CustomStringConvertible {
    enum DoughType: String {
        case thin = "Тонкое"
        case thick = "Толстое"
    }
    //Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
    enum PizzaType: String {
        case margherita = "Маргарита"
        case pepperoni = "Пепперони"
        case hawaiian = "Гавайская"
        case seafood = "Морская"
        case vegetarian = "Вегетарианская"
        
        func prepare() {
            switch self {
            case .margherita:
                print("Приготовление пиццы Маргарита.")
            case .pepperoni:
                print("Приготовление пиццы Пепперони.")
            case .hawaiian:
                print("Приготовление пиццы Гавайская.")
            case .seafood:
                print("Приготовление пиццы с морепродуктами.")
            case .vegetarian:
                print("Приготовление вегетарианской пиццы.")
            }
        }
    }
    
    
    enum Topping: String {
        case additionalPepperoni = "дополнительный пеперони"
        case tomatoes = "томаты"
        case cheese = "сыр"
    }
    
    let type: PizzaType
    let dough: DoughType
    let toppings: [Topping]
    let cost: Double
    
    var description: String {
        let toppingsList = toppings.map { "\($0.rawValue)" }.joined(separator: ", ")
        return "Тип пиццы: \(type.rawValue), Тесто: \(dough.rawValue), Добавки: [\(toppingsList)], Цена: \(cost)"
    }
}

//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class Pizzeria {
    private var availablePizzas: [Pizza]

    init(pizzas: [Pizza]) {
        self.availablePizzas = pizzas
    }

    func addPizza(newPizza: Pizza) {
        self.availablePizzas.append(newPizza)
    }

    func getPizzas() -> [Pizza] {
        return self.availablePizzas
    }
}


//Создать экземпляр класса пиццерии и добавить в него несколько пицц.
func lesson04_01() {
    let margherita = Pizza(type: .margherita, dough: .thin, toppings: [.tomatoes, .cheese], cost: 650.00)
    let pepperoni = Pizza(type: .pepperoni, dough: .thick, toppings: [.additionalPepperoni, .cheese], cost: 720.00)
    let hawaiian = Pizza(type: .hawaiian, dough: .thin, toppings: [], cost: 690.00)
    let myPizzeria = Pizzeria(pizzas: [margherita, pepperoni])  // Создаем пиццерию с двумя пиццами
    myPizzeria.addPizza(newPizza: hawaiian)  // Добавляем еще одну пиццу
    let pizzas = myPizzeria.getPizzas()
    for pizza in pizzas {
        print(pizza)
    }
}
