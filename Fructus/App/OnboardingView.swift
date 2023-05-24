//
//  OnboardingView.swift
//  Fructus
//
//  Created by M_2195552 on 2023-05-24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: Loop
        } //: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
