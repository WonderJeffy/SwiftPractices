///
//  @filename   ChartView.swift
//  @package   SwiftUIChartDemo
//  
//  @author     jeffy
//  @date       2022/12/14 
//  @abstract   
//
//  Copyright (c) 2022 and Confidential to jeffy All rights reserved.
//

import SwiftUI
import Charts

struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

struct ChartView: View {
    
    var data: [ToyShape] = {
        var temp = [ToyShape]()
        for i in 0...2000 {
            temp.append(.init(type: "\(i)", count: Double(i%24)))
        }
        return temp
    }()
    
    var body: some View {
        ScrollView {
            Chart {
                ForEach(data, id: \.count) { shape in
                    BarMark(
                        x: .value("形状", shape.count),
                        y: .value("总数", shape.type),
                        width: 20
                    )
                    //                .annotation(position: .top) {
                    //                    Text("\(shape.type)").font(.footnote)
                    //                }
                    .accessibilityLabel("\(shape.count)")
                    .accessibilityValue("\(shape.count) pounds")
                }
            }
            .chartPlotStyle { plotArea in
                plotArea
                    .frame(height: CGFloat(40 * Double(data.count)))
            }
            .chartXScale(domain: 0...24)
            .chartXAxis() {
                AxisMarks(position: .leading)
            }
        }
        .frame(height: 500)
        .background(.gray.opacity(0.4))
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
