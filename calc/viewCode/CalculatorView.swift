//
//  calculatorView.swift
//  calc
//
//  Created by rafael.guimaraes on 25/07/22.
//

import UIKit

final class CalculatorView: UIView, CodeView {

    private enum Constants {
        static let margin: CGFloat = 20
        static let heightButton: CGFloat = 50
    }

    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 12
        button.setTitle("Test", for: .normal)
        button.addTarget(self, action: #selector(didTouchActionButton), for: .touchUpInside)
        button.isAccessibilityElement = true
        return button
    }()

    @objc private func didTouchActionButton() {
        print("Teste Button")
    }

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func buildViewHierarchy() {
        addSubview(actionButton)
    }

    func setupConstraints() {
        actionButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constants.margin).isActive = true
        actionButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Constants.margin).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: Constants.heightButton).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -Constants.margin).isActive = true
    }

    func setupAdditionalConfiguration() {
        backgroundColor = UIColor.gray
    }
}
