//
//  QSCategoryModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

typealias QSCategoryModelArray = [QSCategoryModel]

class QSCategoryModel: Codable {
    let id, updatedAt, slug, customModuleEid: String?
    let eid, title, description: String?
    let v: Int?
    let active: Bool?
    let createdAt: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case updatedAt = "updated_at"
        case slug
        case customModuleEid = "custom_module_eid"
        case eid, title, description
        case v = "__v"
        case active = "_active"
        case createdAt = "created_at"
    }
    
    init(id: String?, updatedAt: String?, slug: String?, customModuleEid: String?, eid: String?, title: String?, description: String?, v: Int?, active: Bool?, createdAt: String?) {
        self.id = id
        self.updatedAt = updatedAt
        self.slug = slug
        self.customModuleEid = customModuleEid
        self.eid = eid
        self.title = title
        self.description = description
        self.v = v
        self.active = active
        self.createdAt = createdAt
    }
}
