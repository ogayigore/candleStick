//
//  MainView.swift
//  candlestick
//
//  Created by Igor Ogai on 05.04.2022.
//

import UIKit
import Charts

class MainView: UIView {
    
    //MARK: - Private Properties
    
    private(set) lazy var candleStickView: CandleStickChartView = {
        let candleStick = CandleStickChartView()
        candleStick.backgroundColor = .black
        candleStick.leftAxis.enabled = false
        candleStick.doubleTapToZoomEnabled = false
        candleStick.highlightPerTapEnabled = false
        candleStick.xAxis.enabled = false
        candleStick.dragEnabled = false
        candleStick.pinchZoomEnabled = false
        candleStick.rightAxis.labelTextColor = .white
        candleStick.rightAxis.labelFont = .boldSystemFont(ofSize: 16)
        candleStick.xAxis.axisLineColor = .black
        candleStick.translatesAutoresizingMaskIntoConstraints = false
        return candleStick
    }()
    
    //MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    
    private func setup() {
        backgroundColor = .black
        
        addSubview(candleStickView)
        
        NSLayoutConstraint.activate([
            candleStickView.leftAnchor.constraint(equalTo: leftAnchor),
            candleStickView.rightAnchor.constraint(equalTo: rightAnchor),
            candleStickView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            candleStickView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
        ])
    }
}
