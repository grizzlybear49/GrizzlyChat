//
//  MessageField.swift
//  GrizzlyChat
//
//  Created by Mihai Cojocaru on 27.02.2022.
//

import SwiftUI

struct MessageField: View {
    @EnvironmentObject var messagesManager: MessagesManager
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextField(placeHolder: Text("Enter your message here..."), text: $message)
            
            Button {
                messagesManager.sendMessage(text: message)
                message = ""
                
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessagesManager())
    }
}

struct CustomTextField: View {
    var placeHolder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeHolder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
