import SwiftUI
import shared

struct AboutListView: View {
    
    private let items: [RowItem] = {
       let platform = Platform()
        platform.logSystemInfo()
        
        return [
            .init(title: "Operating System", subtitle: "\(platform.osName) \(platform.osVersion)"),
            .init(title: "Device", subtitle: platform.deviceModel),
            .init(title: "Density", subtitle: "@ \(platform.density)x")
        ]
    }()

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    
                    Text(item.subtitle)
                        .font(.body)
                        .foregroundStyle(.primary)
                }
                .padding(.vertical, 4)
            }
        }
    }
}

struct AboutListView_Previews: PreviewProvider {
    static var previews: some View {
        AboutListView()
    }
}
