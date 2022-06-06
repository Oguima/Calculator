//
//  FloatingPoint_Extensions.swift
//  calc
//
//  Created by rafael.guimaraes on 05/06/22.
//

extension FloatingPoint {
    var isInteger: Bool { rounded() == self}
}
