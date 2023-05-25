//
//  ContentView.swift
//  Fructus
//
//  Created by M_2195552 on 2023-05-24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            } //: List
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                } //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NavigationView
        .navigationViewStyle(.stack)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
