//
//  materialExample.swift
//  materialPlayground
//
//  Created by Chris Free on 6/11/21.
//

import SwiftUI

struct materialExample: View {
    var name: String
    var materialStyle: Material
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            Text("\(name) Background Style")
                .font(.caption)
                .foregroundStyle(.secondary)
            Spacer()
            
            Text("Primary")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.primary.opacity(0.32))
            
            Text("Secondary")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundStyle(.secondary)
            
            Text("Tertiary")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundStyle(.tertiary)
            
            Text("Quaternary")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundStyle(.quaternary)
        }
        .padding([.leading, .trailing], 40.0)
        .padding([.top, .bottom], 20)
        .background(materialStyle, in: RoundedRectangle(cornerRadius: 15.0))
    }
}

struct materialExample_Previews: PreviewProvider {
    static var previews: some View {
        materialExample(name: "UltraThin", materialStyle: .ultraThin)
    }
}
