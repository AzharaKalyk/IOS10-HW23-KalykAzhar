import SwiftUI

struct ListView: View {
    
    @State var editMode = EditMode.active
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(CollectionCell().collections, id: \.id) { model in
                HStack {
                    Image(systemName: model.image)
                    Text(model.name)
                }
            }
            .onMove(perform: move)
        }
        .listStyle(.plain)
        .foregroundColor(.red)
        .environment(\.editMode, $editMode)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        CollectionCell().collections.move(fromOffsets: source, toOffset: destination)
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
