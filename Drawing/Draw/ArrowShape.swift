//
//  ArrowShape.swift
//  Drawing
//
//  Created by Md. Masud Rana on 2/4/23.
//

import SwiftUI
struct DrawingArrowShape: Shape {
    let xCoordinateStartPoint: Double
    let yCoordinatStartPoint: Double
 
    let arrowWidth: Double
    let arrowHeight: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: xCoordinateStartPoint, y: yCoordinatStartPoint))
        
        path.addLine(to: CGPoint(
            x: xCoordinateStartPoint + arrowWidth,
            y: yCoordinatStartPoint))
        path.addLine(to: CGPoint(
            x: (xCoordinateStartPoint + arrowWidth) * 0.8,
            y: yCoordinatStartPoint * 0.7))
        path.addLine(to: CGPoint(
            x: (xCoordinateStartPoint + arrowWidth) * 1.5,
            y: yCoordinatStartPoint + arrowHeight / 2))
        path.addLine(to: CGPoint(
            x: (xCoordinateStartPoint + arrowWidth) * 0.8,
            y: (yCoordinatStartPoint * 1.3) + arrowHeight))
        
        path.addLine(to: CGPoint(
            x: (xCoordinateStartPoint + arrowWidth),
            y: yCoordinatStartPoint + arrowHeight))
                     
        path.addLine(to: CGPoint(
            x: xCoordinateStartPoint,
            y: yCoordinatStartPoint + arrowHeight))
        
        path.addLine(to: CGPoint(
            x: xCoordinateStartPoint,
            y: yCoordinatStartPoint))
        
        return path
    }
}

struct ArrowShape: View {
    @State private var xCoordinateStartPoint = 50.0
    @State private var yCoordinatStartPoint = 50.0
    @State private var arrowWidth = 100.0
    @State private var arrowHeight = 60.0
    
    var body: some View {
        VStack(spacing: 0) {
            DrawingArrowShape(
                xCoordinateStartPoint: xCoordinateStartPoint,
                yCoordinatStartPoint: yCoordinatStartPoint,
                arrowWidth: arrowWidth,
                arrowHeight: arrowHeight
            )
            
            
            Text("Arrow width")
            Slider(value: $arrowWidth, in: 20...200, step: 1)
            
            Text("Arrow Height")
            withAnimation {
                Slider(value: $arrowHeight, in: 20...60, step: 1)
            }
           
        }
    }
}

struct ArrowShape_Previews: PreviewProvider {
    static var previews: some View {
        ArrowShape()
    }
}
