//
//  ViewController.swift
//  CodePath Course Project
//
//  Created by Daniel Voyevoda on 5/4/25.
//

import UIKit

class ViewController: UIViewController {

    private var gradientLayer: CAGradientLayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientBackground()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer?.frame = view.bounds
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        gradientLayer?.removeFromSuperlayer()
        setupGradientBackground()
    }

    // MARK: - Gradient Setup

    private func setupGradientBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors     = randomColorPair()
        gradient.startPoint = randomPoint()
        gradient.endPoint   = randomPoint(oppositeOf: gradient.startPoint)
        view.layer.insertSublayer(gradient, at: 0)

        gradientLayer = gradient
        animateGradientShift()
    }

    private func randomColorPair() -> [CGColor] {
        func rnd() -> CGFloat { .random(in: 0...1) }
        let c1 = UIColor(hue: rnd(), saturation: 0.8, brightness: 0.9, alpha: 1).cgColor
        let c2 = UIColor(hue: rnd(), saturation: 0.8, brightness: 0.9, alpha: 1).cgColor
        return [c1, c2]
    }

    private func randomPoint(oppositeOf p: CGPoint? = nil) -> CGPoint {
        let x = CGFloat.random(in: 0...1)
        let y = CGFloat.random(in: 0...1)
        if let p = p { return CGPoint(x: 1 - p.x, y: 1 - p.y) }
        return CGPoint(x: x, y: y)
    }

    private func animateGradientShift() {
        guard let gradient = gradientLayer else { return }
        let newColors = randomColorPair()
        let anim = CABasicAnimation(keyPath: "colors")
        anim.fromValue      = gradient.colors
        anim.toValue        = newColors
        anim.duration       = 4.0
        anim.autoreverses   = true
        anim.repeatCount    = .infinity
        anim.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        gradient.add(anim, forKey: "colorShift")
    }
}
