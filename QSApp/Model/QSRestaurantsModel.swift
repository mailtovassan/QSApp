//
//  QSRestaurantsModel.swift
//  QSApp
//
//  Created by M@hesh on 18/05/19.
//  Copyright © 2019 Nua Transmedia. All rights reserved.
//

import UIKit

typealias QSRestaurantsModelArray = [QSRestaurantsModel]

class QSRestaurantsModel: Codable {
    let id, slug, eid, title: String?
    let description, categoryEid: String?
    let v: Int?
    let photo: String?
    let active: Bool?
    let updatedAt, createdAt: String?
    let addresses: [Address]?
    let contactInfo: ContactInfo?
    let bizHours: BizHours?
    let socialMedia: SocialMedia?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case slug, eid, title, description
        case categoryEid = "category_eid"
        case v = "__v"
        case photo
        case active = "_active"
        case updatedAt = "updated_at"
        case createdAt = "created_at"
        case addresses, contactInfo, bizHours, socialMedia
    }
    
    init(id: String?, slug: String?, eid: String?, title: String?, description: String?, categoryEid: String?, v: Int?, photo: String?, active: Bool?, updatedAt: String?, createdAt: String?, addresses: [Address]?, contactInfo: ContactInfo?, bizHours: BizHours?, socialMedia: SocialMedia?) {
        self.id = id
        self.slug = slug
        self.eid = eid
        self.title = title
        self.description = description
        self.categoryEid = categoryEid
        self.v = v
        self.photo = photo
        self.active = active
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.addresses = addresses
        self.contactInfo = contactInfo
        self.bizHours = bizHours
        self.socialMedia = socialMedia
    }
}

class Address: Codable {
    let address1, label, zipCode, city: String?
    let state, country: String?
    let gps: Gps?
    
    init(address1: String?, label: String?, zipCode: String?, city: String?, state: String?, country: String?, gps: Gps?) {
        self.address1 = address1
        self.label = label
        self.zipCode = zipCode
        self.city = city
        self.state = state
        self.country = country
        self.gps = gps
    }
}

class Gps: Codable {
    let latitude, longitude: String?
    
    init(latitude: String?, longitude: String?) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

class BizHours: Codable {
    let sunday, monday: Nday?
    
    init(sunday: Nday?, monday: Nday?) {
        self.sunday = sunday
        self.monday = monday
    }
}

class Nday: Codable {
    let from, to: String?
    
    init(from: String?, to: String?) {
        self.from = from
        self.to = to
    }
}

class ContactInfo: Codable {
    let website: [String]?
    let email, phoneNumber, faxNumber, tollFree: [String]?
    
    init(website: [String]?, email: [String]?, phoneNumber: [String]?, faxNumber: [String]?, tollFree: [String]?) {
        self.website = website
        self.email = email
        self.phoneNumber = phoneNumber
        self.faxNumber = faxNumber
        self.tollFree = tollFree
    }
}

class SocialMedia: Codable {
    let youtubeChannel, twitter, facebook: [String]?
    
    init(youtubeChannel: [String]?, twitter: [String]?, facebook: [String]?) {
        self.youtubeChannel = youtubeChannel
        self.twitter = twitter
        self.facebook = facebook
    }
}

