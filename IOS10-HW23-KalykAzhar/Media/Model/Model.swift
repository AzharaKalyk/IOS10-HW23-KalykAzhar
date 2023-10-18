import Foundation

class CollectionCell: ObservableObject {
    @Published var collections = [
        Cell(name: "Плейлисты", image: "music.note.list", isSelected: false),
        Cell(name: "Артисты", image: "music.mic", isSelected: false),
        Cell(name: "Альбомы", image: "square.stack", isSelected: false),
        Cell(name: "Песни", image: "music.note", isSelected: false),
        Cell(name: "Видеоклипы", image: "music.note.tv", isSelected: false),
        Cell(name: "Жанры", image: "guitars", isSelected: false),
        Cell(name: "Сборники", image: "person.2.crop.square.stack", isSelected: false),
        Cell(name: "Авторы", image: "music.quarternote.3", isSelected: false),
        Cell(name: "Загружено", image: "arrow.down.circle", isSelected: false)
    ]
}

struct Cell: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: String
    var isSelected: Bool
}
