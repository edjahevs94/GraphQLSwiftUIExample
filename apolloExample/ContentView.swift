//
//  ContentView.swift
//  apolloExample
//
//  Created by Edgard Vargas on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var vm: ExampleViewModel = ExampleViewModel()
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("\(vm.institutionName)")
//        }
//        .padding()
        ExampleView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
