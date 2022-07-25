//
//  calculatorView.swift
//  calc
//
//  Created by rafael.guimaraes on 25/07/22.
//

import UIKit

final class CalculatorView: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        backgroundColor = UIColor.red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
