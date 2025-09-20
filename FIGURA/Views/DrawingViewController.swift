//
//  ViewController.swift
//  FIGURA
//
//  Created by Seymen Özdeş on 8.09.2025.
//

import UIKit
import PencilKit
import SnapKit

class DrawingViewController: UIViewController {
    let canvasView = PKCanvasView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCanvas()
    }
    
    private func setUpCanvas() {
        view.addSubview(canvasView)
        
        canvasView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        canvasView.drawingPolicy = .anyInput
        canvasView.alwaysBounceVertical = true
    }

}

