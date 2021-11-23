

//
//  ContentView.swift
//  Shared
//
//  Created by nyannyan0328 on 2021/09/25.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Screen()
                .frame(width: 1265, height: 695)
            BottomView()
                .frame(width: 1200, height: 1000)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1500, height: 1200))
    }
}
struct Screen : View{
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 30)
            
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(Color("Gray"),lineWidth: 6)
            
            
            VStack(spacing:0){
                
                Image("macOS")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1200, height: 590)
                    .cornerRadius(0)
                    .padding(.top,40)
                    .padding(.bottom,15)
                
                
                Rectangle()
                    .fill(.white.opacity(0.14))
                    .overlay(
                    
                        Text("Mac Book Pro")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .offset(y:-11)
                    
                    )
            }
            HStack(spacing:15){
                
                
                ZStack{
                    
                    Color.gray.opacity(0.3)
                        .clipShape(Circle())
                        .frame(width: 10, height: 10)
                    
                    
                    Color.black
                        .clipShape(Circle())
                        .frame(width: 3, height: 3)
                }
                
                Color.green
                    .clipShape(Circle())
                    .frame(width: 6, height: 6)
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .offset(y: 17)
            
        }
    }
}

struct BottomView : View{
    
    var body: some View{
        
        ZStack{
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Gray2"))
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(
                    
                        .linearGradient(colors: getColors(), startPoint: .leading, endPoint: .trailing)
                    
                    )
                    .frame(width: 200)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(LinearGradient(colors: getColors().reversed(), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 200)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
            }
            .frame(height: 25)
            .scaleEffect(0.7)
            
            
            CustomCorner(radius: 20, corner: [.bottomLeft,.bottomRight])
                .fill(Color("Gray1").opacity(0.5))
                .frame(height: 50)
                .overlay(
                    
                    CustomCorner(radius: 20, corner: [.bottomLeft,.bottomRight])
                        .fill(
                        
                            LinearGradient(colors: [
                            
                                Color("Gray1").opacity(0.4),
                                .black.opacity(0.2),
                                .black.opacity(0.6)
                            
                            
                            ], startPoint: .top, endPoint: .bottom)
                    
                        )
                
                )
                .overlay(
                
                    CustomCorner(radius: 20, corner: [.bottomLeft,.bottomRight])
                        .fill(
                        
                            .linearGradient(colors: [
                                
                                .black.opacity(0.2),
                                .black.opacity(0.1),
                                .clear
                            
                            ], startPoint: .top, endPoint: .bottom))//after fill
                    
                                .frame(height: 80)
                    
                        .rotation3DEffect(.init(degrees: 50), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 0, perspective: 3)
           
                                .shadow(radius: 2)
                                .scaleEffect(1.05)
                                .offset(y: 50)
                
                )
                .scaleEffect(0.672)
                .rotation3DEffect(.init(degrees: -70), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 1, perspective: 3)
                .offset(y: 15.5)
             
        }
        .scaleEffect(1.7)
        .overlay(
        
            ZStack{
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(.gray.opacity(0.4))
                   
                
                let clearColor = Array(repeating: Color.clear, count: 12)
                
                let colors : [Color] = [
                
                    .black.opacity(0.55),
                    .black.opacity(0.25),
                    .black.opacity(0.05),
                
                ]
                
                let gradient = colors + clearColor + colors.reversed()
                
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(
                    
                        LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing)
                    
                    )
                
                RoundedRectangle(cornerRadius: 100)
                    .fill(.black.opacity(0.1))
                
            }
            .frame(width: 220, height: 35)
            .offset(y: -15)
            .clipped()
            .offset(y: 2)
        
        
        )
        .offset(y: 350)
    }
    func getColors()->[Color]{
        let colors = [Color("Gray2"),Color("Gray1"),Color("Gray2").opacity(0.7),Color("Gray2"),Color("Gray2")]
            
            
            return colors
    }
    
}
