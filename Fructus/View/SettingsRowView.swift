//
//  SettingsRowView.swift
//  Fructus
//
//  Created by M_2195552 on 2023-05-25.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    //MARK: - Body
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Prabhjot Singh")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "developer.apple.com/xcode/swiftui/")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
