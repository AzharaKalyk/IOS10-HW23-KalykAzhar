import SwiftUI

struct ListView: View {
    
    @State var editMode = EditMode.active
    @StateObject var collectionCell = CollectionCell()
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(collectionCell.collections, id: \.id) { model in
                HStack {
                    Image(systemName: model.image)
                        .foregroundColor(.red)
                    Text(model.name)
                }
                .onTapGesture {
                    toggleSelection(for: model)
                }
            }
            .onMove(perform: move)
        }
        .listStyle(.plain)
        .environment(\.editMode, $editMode)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        collectionCell.collections.move(fromOffsets: source, toOffset: destination)
    }
    
    func toggleSelection(for cell: Cell) {
        if multiSelection.contains(cell.id) {
            multiSelection.remove(cell.id)
        } else {
            multiSelection.insert(cell.id)
        }
        collectionCell.collections.firstIndex { $0.id == cell.id }.map {
            collectionCell.collections[$0].isSelected.toggle()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

