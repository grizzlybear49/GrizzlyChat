//
//  Message.swift
//  GrizzlyChat
//
//  Created by Mihai Cojocaru on 27.02.2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
