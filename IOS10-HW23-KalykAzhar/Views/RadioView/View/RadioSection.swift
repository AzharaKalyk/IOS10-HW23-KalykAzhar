import SwiftUI

struct RadioSection: View {
    private var model = ModelStation()
    
    let columns = [GridItem()]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("Станции")
                .font(.title)
                .fontWeight(.bold)
                .frame(height: 50)) {
                    ForEach(model.models, id: \.id) { model in
                        HStack {
                            Image(model.image)
                                .resizable()
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text(model.title)
                                Text(model.footer)
                                    .foregroundColor(.secondary)
                            }
                        }
                        Divider()
                    }
            }
        }
    }
}


struct RadioSection_Previews: PreviewProvider {
    static var previews: some View {
        RadioSection()
    }
}
