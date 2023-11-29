import Foundation

class ModelStation {
    var models = [
        ModelElement(image: "Mars",
                     title: "Thirty Seconds to Mars",
                     albumReleaseYear: "Album 2008"),
        ModelElement(image: "Nirvana",
                     title: "Nirvana",
                     albumReleaseYear: "Album 2004"),
        ModelElement(image: "GreenDay",
                     title: "GreenDay",
                     albumReleaseYear: "Album 20010"),
        ModelElement(image: "Bend",
                     title: "Album",
                     albumReleaseYear: "Album 2002"),
        ModelElement(image: "Skillet",
                     title: "Skillet",
                     albumReleaseYear: "Album 2010"),
        ModelElement(image: "Nickelback",
                     title: "Nickelback",
                     albumReleaseYear: "Album 2020")
    ]
}

struct ModelElement: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let albumReleaseYear: String
}
