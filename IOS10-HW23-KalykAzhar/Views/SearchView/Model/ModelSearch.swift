import Foundation

struct ModelCategoryList: Identifiable, Hashable {
    let id: String
    let image: String
    let title: String
    
    init(id: String = UUID().uuidString,
         image: String,
         title: String)
    {
        self.id = id
        self.image = image
        self.title = title
    }
}

extension ModelCategoryList {
    static var dataList: [ModelCategoryList] = [ModelCategoryList(image: "One",
                                               title: "Зимняя время"),
                                         ModelCategoryList(image: "Two",
                                               title: "Поп на русском"),
                                         ModelCategoryList(image: "Three",
                                               title: "Поп"),
                                         ModelCategoryList(image: "Four",
                                               title: "Альтернатива"),
                                         ModelCategoryList(image: "Five",
                                               title: "Пространственное звучание"),
                                         ModelCategoryList(image: "Six",
                                               title: "Хип-хоп на русском"),
                                         ModelCategoryList(image: "Seven",
                                               title: "Хиты"),
                                         ModelCategoryList(image: "Eight",
                                               title: "Рок")
    ]
}
