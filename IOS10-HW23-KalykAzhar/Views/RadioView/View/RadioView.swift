import SwiftUI

struct RadioView: View {
    private var models = ModelRadio()
    
    var rows = [GridItem()]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(models.models, id: \.id) { model in
                    VStack(alignment: .leading) {
                        Divider()
                        Text(model.recommendationsForYou)
                            .foregroundColor(.secondary)
                        Text(model.differentHits)
                            .font(.title2)
                        Text(model.musicApp)
                            .foregroundColor(.secondary)
                        Image(model.image)
                            .resizable()
                            .frame(width: 350, height: 200)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

