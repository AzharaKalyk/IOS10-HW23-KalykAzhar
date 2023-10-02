import Foundation

class CollectionCell {
    var collections = [
        Cell(name: "Плейлисты", image: "music.note.list"),
        Cell(name: "Артисты", image: "music.mic"),
        Cell(name: "Альбомы", image: "square.stack"),
        Cell(name: "Песни", image: "music.note"),
        Cell(name: "Видеоклипы", image: "music.note.tv"),
        Cell(name: "Жанры", image: "guitars"),
        Cell(name: "Сборники", image: "person.2.crop.square.stack"),
        Cell(name: "Авторы", image: "music.quarternote.3"),
        Cell(name: "Загружено", image: "arrow.down.circle")
    ]
}

struct Cell: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: String
}
