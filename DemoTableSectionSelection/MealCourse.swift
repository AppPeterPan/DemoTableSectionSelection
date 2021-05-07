//
//  MealCourse.swift
//  DemoTableSectionSelection
//
//  Created by SHIH-YING PAN on 2021/5/7.
//

import Foundation

enum MealCategory: String {
    case soup
    case mainCourse = "main course"
    case dessert
}

struct MealCourse {
    let category: MealCategory
    let names: [String]
}

extension MealCourse {
    static var data: [Self] {
        [
            MealCourse(category: .soup, names: [
                "巴黎日安洋蔥湯",
                "生蠔鮮蝦濃湯"
            ]),
            MealCourse(category: .mainCourse, names: [
                "爐烤美國菲力牛排",
                "爐烤法式香料小羔羊",
                "爐烤起司波士頓龍蝦"
            ]),
            MealCourse(category: .dessert, names: [
                "蘋果塔",
                "熔岩巧克力",
                "起士千層派"
            ]),
        ]
    }
}
