//
//  WordsListModel.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 09.01.2023.
//

enum WordsSet: Int {
    case first = 1
    
    var definition: [String] {
        switch self{
        case .first:
            return ["Медведь", "Осьминог", "Крыса", "Помидор", "Малина", "Дезодорант", "Бутерброд", "Козырёк", "Банан", "Рысь", "Заяц", "Ножницы", "Ласточка", "Шампиньон", "Омлет", "Вафли", "Ворон", "Аквариум", "Брюки", "Серьги"]
        }
    }
}
