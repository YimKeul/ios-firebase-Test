//
//  ListView.swift
//  ios-firebase
//
//  Created by yimkeul on 2023/03/01.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager : DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView{
            List(dataManager.dogs, id : \.id){ dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                //add
                showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            })).sheet(isPresented: $showPopup){
                NewDogView()
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        ListView().environmentObject(DataManager())
               
        
    }
}
