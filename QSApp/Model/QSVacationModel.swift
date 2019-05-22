//
//  QSVacationModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

typealias QSVacationModelArray = [QSVacationModel]

class QSVacationModel: Codable {
    let id, slug, eid: String?
    let photo: String?
    let title, description, categoryEid: String?
    let v: Int?
    let active: Bool?
    let updatedAt, createdAt: String?
    let socialMedia: VacationSocialMedia?
    let addresses, freeText: [VacationAddress]?
    let contactInfo: VacationContactInfo?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case slug, eid, photo, title, description
        case categoryEid = "category_eid"
        case v = "__v"
        case active = "_active"
        case updatedAt = "updated_at"
        case createdAt = "created_at"
        case socialMedia, addresses, freeText, contactInfo
    }
    
    init(id: String?, slug: String?, eid: String?, photo: String?, title: String?, description: String?, categoryEid: String?, v: Int?, active: Bool?, updatedAt: String?, createdAt: String?, socialMedia: VacationSocialMedia?, addresses: [VacationAddress]?, freeText: [VacationAddress]?, contactInfo: VacationContactInfo?) {
        self.id = id
        self.slug = slug
        self.eid = eid
        self.photo = photo
        self.title = title
        self.description = description
        self.categoryEid = categoryEid
        self.v = v
        self.active = active
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.socialMedia = socialMedia
        self.addresses = addresses
        self.freeText = freeText
        self.contactInfo = contactInfo
  }
}

class VacationAddress: Codable {
    
    init() {
    }
    
}

class VacationContactInfo: Codable {
    let website: [String]?
    let email, faxNumber, tollFree, phoneNumber: [String]?
    
    init(website: [String]?, email: [String]?, faxNumber: [String]?, tollFree: [String]?, phoneNumber: [String]?) {
        self.website = website
        self.email = email
        self.faxNumber = faxNumber
        self.tollFree = tollFree
        self.phoneNumber = phoneNumber
    }
}

class VacationSocialMedia: Codable {
    let youtubeChannel, twitter, facebook: [String]?
    
    init(youtubeChannel: [String]?, twitter: [String]?, facebook: [String]?) {
        self.youtubeChannel = youtubeChannel
        self.twitter = twitter
        self.facebook = facebook
    }
}

