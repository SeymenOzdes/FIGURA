//
//  DrawingDataModel.swift
//  FIGURA
//
//  Created by Seymen Özdeş on 20.09.2025.
//

import Foundation
import PencilKit

struct DrawingDataModel: Codable {
    var drawing: [PKDrawing] = []
    static let canvasWidht: CGFloat = 768
}
