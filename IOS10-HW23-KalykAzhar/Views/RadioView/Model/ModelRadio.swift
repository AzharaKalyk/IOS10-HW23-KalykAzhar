import Foundation

class ModelRadio {
    var models = [
        RadioCell(recommendationsForYou: "Только для тебя",
                  differentHits: "Today`s Top Hit",
                  musicApp: "Spotify",
                  image: "AlbumOne"),
        RadioCell(recommendationsForYou: "Недавно прослушано",
                  differentHits: "Mega Hit Mix",
                  musicApp: "Spotify",
                  image: "albumThree"),
        RadioCell(recommendationsForYou: "Рекомендуемые станции",
                  differentHits: "Viral Hits",
                  musicApp: "Spotify",
                  image: "ACDC"),
        RadioCell(recommendationsForYou: "Популярные радиостанции",
                  differentHits: "Just Hits",
                  musicApp: "Spotify",
                  image: "AlbumTwo")
    ]
}

struct RadioCell: Identifiable {
    let id = UUID()
    let recommendationsForYou: String
    let differentHits: String
    let musicApp: String
    let image: String
}
