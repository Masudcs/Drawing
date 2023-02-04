//
//  ImagePaint.swift
//  Drawing
//
//  Created by Md. Masud Rana on 1/31/23.
//

import SwiftUI

struct ImagePaintView: View {
    var body: some View {
        Text("Hello World")
            .frame(width: 300, height: 300)
            .border(ImagePaint(image: Image("flower"), scale: 0.2), width: 30)
    }
}

struct ImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintView()
    }
}
