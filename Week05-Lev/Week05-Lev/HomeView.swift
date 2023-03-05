//
//  Navigation.swift
//  Week05-Lev
//
//  Created by Levitia on 04/03/2023.
//

import SwiftUI

//Heart shapes
struct Heart: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY ))
        
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.height/4),
                      control1:CGPoint(x: rect.midX, y: rect.height*3/4),
                      control2: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addArc(center: CGPoint( x: rect.width/4,y: rect.height/4),
                    radius: (rect.width/4),
                    startAngle: Angle(radians: Double.pi),
                    endAngle: Angle(radians: 0),
                    clockwise: false)
        path.addArc(center: CGPoint( x: rect.width * 3/4,y: rect.height/4),
                    radius: (rect.width/4),
                    startAngle: Angle(radians: Double.pi),
                    endAngle: Angle(radians: 0),
                    clockwise: false)
        
        path.addCurve(to: CGPoint(x: rect.midX, y: rect.height),
                      control1: CGPoint(x: rect.width, y: rect.midY),
                      control2: CGPoint(x: rect.midX, y: rect.height*3/4))
        return path
    }
}

struct ResetHeart: View {
    var body: some View {
        Heart()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .shadow(color: .pink, radius: 10)
            .frame(width: 300, height: 300)

    }
}

struct PulsingHeart: View {
    @State private var heartPulse: CGFloat = 1
    var body: some View {
        Heart()
            .frame(width: 150, height: 150)
            .foregroundColor(.yellow)
            .scaleEffect(heartPulse)
            .shadow(color: .yellow, radius: 20)
            .onAppear{
                withAnimation(.easeInOut.repeatForever(autoreverses: true)) {
                    heartPulse = 1.10 * heartPulse
                }
            }
    }
}

//--------------

struct HomeView: View {

    @State private var searchText = ""
    @State private var pulsing = false
    //@State private var scaleFactor : CGFloat = 3
    
    
//    @State private var isSelected: Bool = false
//    @State var color: Color = Color.red
    
//    var searchResults: [String] {
//        if searchText.isEmpty {
//            return names
//        } else {
//            return names.filter { $0.contains(searchText) }
//        }
//    }
    

//
    var body: some View {
        //NavigationView {
//        VStack {
//            Text("Tap heart to see what you've been loving")
//              .fontWeight(.medium)
//              .multilineTextAlignment(.center)
//              .font(.system(size: 36))
//              .foregroundColor(.brown)
              //.padding()
            
            NavigationView {
                VStack {
                    Text("Welcome!")
                      .fontWeight(.medium)
                      .multilineTextAlignment(.center)
                      .font(.system(size: 36))
                      .foregroundColor(.brown)
                    Text("Tap heart to see what you've been loving")
                      .fontWeight(.medium)
                      .multilineTextAlignment(.center)
                      .font(.system(size: 36))
                      .foregroundColor(.brown)
                ZStack {
                    NavigationLink (destination: NavigationOrganiserView()) {
                        PulsingHeart()
                            .padding(25)
                        
                    }
                }
            }

                        
                       
                  
                          //.padding()
                        //scaleFactor = (Double(index + 1) / 4)
//                        NavigationStack {
//                            List {
//                                ForEach(searchResults, id: \.self) { name in
//                                    NavigationLink {
//                                        //destination;: Destination.view(forSelection: row.destination),
//                                        Text(name)
//                                    } label: {
//                                        Text(name)
                                    }
//                                    .fixedSize(horizontal: false, vertical: true)
//                                    .listRowInsets(.init(top: 15, leading: 20, bottom: 15, trailing: 15))
//                                }
//                            }
//                            .navigationTitle("Favorite Photos")
//                        }
//                        .searchable(text: $searchText)
                        
                    }
                
                
                }
                
//            }
//    }
            //                PulsingHeart()
            //                .onTapGesture {
            //                    pulsing = true
            //                    scaleFactor = (Double(index + 1) / 4)
            //                }
            //                if pulsing {
            //                    PulsingHeart()
            //                } else {
            //                    ResetHeart()
//                            }
            //            }
            // Spacer()
            //PlayResetButton(animating: $pulsing)
            //}
            
            //        var body: some View {
            //            NavigationStack {
            //                List {
            //                    ForEach(searchResults, id: \.self) { name in
            //                        NavigationLink {
            //                            //destination;: Destination.view(forSelection: row.destination),
            //                            Text(name)
            //                        } label: {
            //                            Text(name)
            //                        }
            //                        .fixedSize(horizontal: false, vertical: true)
            //                        .listRowInsets(.init(top: 15, leading: 20, bottom: 15, trailing: 15))
            //                    }
            //                }
            //                .navigationTitle("Favorite Photos")
            //            }
            //            .searchable(text: $searchText)
            //
            //        }
            //
            //        var searchResults: [String] {
            //            if searchText.isEmpty {
            //                return names
            //            } else {
            //                return names.filter { $0.contains(searchText) }
            //            }
            //        }
            //    }
            
//                       struct HomeView_Previews: PreviewProvider {
//                            static var previews: some View {
//                               HomeView()
//                           }
//                       }
//                   }
//}
        struct HomeView_Previews: PreviewProvider {
            static var previews: some View {
                HomeView()
            }
        }
//}
//        }
