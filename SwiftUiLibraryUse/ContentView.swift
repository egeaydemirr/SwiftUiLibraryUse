//
//  ContentView.swift
//  SwiftUiLibraryUse
//
//  Created by Ege Aydemir on 9.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Circle().foregroundColor(.green)
    }
}

struct Previews_ContentView_LibraryContent: LibraryContentProvider {
    var views: [LibraryItem] {
        LibraryItem(Circle().foregroundColor(.green),
        title: "greenCircle",
                    category: .control
        )
        LibraryItem(Rectangle().foregroundColor(.red),
                    title:"redSquare",
                    category: .control
        )
    }
    @LibraryContentBuilder
    func modifiers(base: any View) -> [LibraryItem] {
        LibraryItem(base.opacity(0.2),
        title: "Ghostly",
                    category: .effect)
    }
}
