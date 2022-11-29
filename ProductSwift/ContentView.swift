//
//  ContentView.swift
//  ProductSwift
//
//  Created by Samira Nasiri on 2022-11-27.
//

import SwiftUI
import OpenAPIClient

struct ContentView: View {
    var body: some View {
        VStack {
        Text("Hello, world!")
        }
        .onAppear {
            getProduct()
        }
    }
    
    func getProduct() {
        DefaultAPI.productsGet().sink { error in
            print(error)
        } receiveValue: { value in
            print(value)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

typealias api = OpenAPIClientAPI
