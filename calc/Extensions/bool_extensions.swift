//
//  bool_extensions.swift
//  calc
//
//  Created by rafael.guimaraes on 05/06/22.
//

extension Bool {
    init?(bit: Int) {
        //return True if == 1, else false ... simple :D
        switch bit {
        case 0:
                self = false
        case 1:
                self = true
        default:
                return nil
        }
        //self = bit == 1
    }
}
