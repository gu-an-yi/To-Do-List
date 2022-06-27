//
//  ContentView.swift
//  To-Do List
//
//  Created by Lee Guan Yi on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch some Paw patrol", isCompleted: true, details: "Episode 6 and 5"),
        Todo(title: "Conduct a giveaway", details: ""),
        Todo(title: "Randomly deduct some points", details: "")
    ]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .trailing){
                Button{
                } label:{
                    Text("Edit")
                        .padding()
                }
                
                
                .navigationTitle("Todos")
                
                List($todos){ $todo in
                    NavigationLink{
                        TodoDetailView(todo: $todo)
                    } label:{
                        HStack{
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            VStack(alignment: .leading){
                                
                                if todo.isCompleted{
                                    Text(todo.title)
                                        .strikethrough()
                                }else{
                                    Text(todo.title)
                                }
                                
                                if !todo.details.isEmpty{
                                    Text(todo.details)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
