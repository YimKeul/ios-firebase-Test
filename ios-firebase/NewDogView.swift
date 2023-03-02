//
//  NewDogView.swift
//  ios-firebase
//
//  Created by yimkeul on 2023/03/02.
//

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager : DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack{
            TextField("Dog", text: $newDog)
            
            Button {
                dataManager.addDog(dogBreed: newDog)
            } label: {
                Text("Save")
            }

        }
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
