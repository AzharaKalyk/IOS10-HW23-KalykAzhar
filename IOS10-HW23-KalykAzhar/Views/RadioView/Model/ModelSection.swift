import Foundation

class ModelStation {
    var models = [
        ModelElement(image: "Mars",
                      title: "Thirty Seconds to Mars",
                      footer: "Album 2008"),
        ModelElement(image: "Nirvana",
                      title: "Nirvana",
                      footer: "Album 2004"),
        ModelElement(image: "GreenDay",
                      title: "GreenDay",
                      footer: "Album 20010"),
        ModelElement(image: "Bend",
                      title: "Album",
                      footer: "Album 2002"),
        ModelElement(image: "Skillet",
                      title: "Skillet",
                      footer: "Album 2010"),
        ModelElement(image: "Nickelback",
                      title: "Nickelback",
                      footer: "Album 2020")
    ]
}

struct ModelElement: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let footer: String
}
