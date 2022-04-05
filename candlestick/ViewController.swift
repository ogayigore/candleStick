//
//  ViewController.swift
//  candlestick
//
//  Created by Igor Ogai on 05.04.2022.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    let yValues: [CandleChartDataEntry] = [
        CandleChartDataEntry(x: 1, shadowH: 12, shadowL: 7, open: 8, close: 10),
        CandleChartDataEntry(x: 2, shadowH: 6, shadowL: 0, open: 3, close: 2),
        CandleChartDataEntry(x: 3, shadowH: 11, shadowL: 3, open: 5, close: 8),
        CandleChartDataEntry(x: 4, shadowH: 12, shadowL: 4, open: 6, close: 9),
        CandleChartDataEntry(x: 5, shadowH: 10, shadowL: 2, open: 7, close: 4),
        CandleChartDataEntry(x: 6, shadowH: 9, shadowL: 1, open: 6, close: 3),
        CandleChartDataEntry(x: 7, shadowH: 11, shadowL: 3, open: 5, close: 8),
        CandleChartDataEntry(x: 8, shadowH: 12, shadowL: 4, open: 6, close: 9),
        CandleChartDataEntry(x: 9, shadowH: 10, shadowL: 2, open: 7, close: 4),
        CandleChartDataEntry(x: 10, shadowH: 9, shadowL: 1, open: 6, close: 3),
        CandleChartDataEntry(x: 11, shadowH: 11, shadowL: 3, open: 5, close: 8),
        CandleChartDataEntry(x: 12, shadowH: 12, shadowL: 4, open: 6, close: 9),
        CandleChartDataEntry(x: 13, shadowH: 10, shadowL: 2, open: 7, close: 4),
        CandleChartDataEntry(x: 14, shadowH: 9, shadowL: 1, open: 6, close: 3),
        CandleChartDataEntry(x: 15, shadowH: 11, shadowL: 3, open: 5, close: 8),
        CandleChartDataEntry(x: 16, shadowH: 12, shadowL: 4, open: 6, close: 9),
    ]
    
    private lazy var customView = view as! MainView
    
    override func loadView() {
        view = MainView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setData()
    }

    func setData() {
        let set1 = CandleChartDataSet(entries: yValues, label: "Tesla")
        set1.axisDependency = .left
        set1.drawIconsEnabled = false
        set1.shadowColorSameAsCandle = true
        set1.shadowWidth = 3
        set1.drawValuesEnabled = false
        
        set1.decreasingColor = .red
        set1.decreasingFilled = true
        set1.increasingColor = .green
        set1.increasingFilled = true
        
        let data = CandleChartData(dataSet: set1)
        customView.candleStickView.data = data
    }
    
}

