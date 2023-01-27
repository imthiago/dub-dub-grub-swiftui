//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Thiago Oliveira on 27/01/23.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}

