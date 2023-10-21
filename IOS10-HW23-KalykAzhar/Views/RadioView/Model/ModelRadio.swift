import Foundation

class ModelRadio {
    var models = [
        RadioCell(top: "Только для тебя",
              middle: "Today`s Top Hit",
              bottom: "Spotify",
              image: "AlbumOne"),
        RadioCell(top: "Недавно прослушано",
              middle: "Mega Hit Mix",
              bottom: "Spotify",
              image: "albumThree"),
        RadioCell(top: "Рекомендуемые станции",
              middle: "Viral Hits",
              bottom: "Spotify",
              image: "ACDC"),
        RadioCell(top: "Популярные радиостанции",
              middle: "Just Hits",
              bottom: "Spotify",
              image: "AlbumTwo")]
}

struct RadioCell: Identifiable {
    let id = UUID()
    let top: String
    let middle: String
    let bottom: String
    let image: String
}
