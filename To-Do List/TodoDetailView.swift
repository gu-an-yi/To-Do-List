//
//  TodoDetailView .swift
//  to do list
//
//  Created by T Krobot on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo : Todo
    
    var body: some View {
        VStack {
            TextField("Todo Title", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
            
            TextField("Todo Details", text: $todo.details)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
                .font(.system(size: 10))
            
            Button{
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "incompleted" : "complete")")
                
            }
            
        }
    }
}

struct TodoDetailView__Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title:"", details: "")))
    }
}
