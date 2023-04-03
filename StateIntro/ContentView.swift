//
//  ContentView.swift
//  StateIntro
//
//  Created by David Salmberg on 2023-04-03.
//

import SwiftUI

struct ContentView: View {
   //@State var count : Int = 0
    @State var showSheet = false
    @StateObject var counter = Counter()
    
    var body: some View {
        VStack {
            Text("\(counter.count)")
           
            //Counting Button
            Button(action: {
                counter.inc()
                print("\(counter.count)")
                
            }, label: {
                Text("Tryck!")
            })
            
            //Button to go to sheet
            Button(action: {
                showSheet = true
            }, label: {
                Text("Ny sida")
            })
            
        }.sheet(isPresented: $showSheet, content: {
          SheetView(counter: counter)
            
            
        })
    }
}

struct SheetView : View {
   @ObservedObject var counter : Counter
    
    var body: some View {
        Text("\(counter.count)")
        
        Button(action: {
            counter.dec()        }, label: {
            Text("Tryck igen!")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
