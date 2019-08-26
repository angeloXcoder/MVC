/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation

struct NewModel : Codable {
    let nid : Int?
    let title : String?
    let shortDetail : String?
    let shortTitle : String?
    let fullDetail : String?
    let photoLink : String?
    let newsDate : String?
    let newsPaper : String?
    let newsLogo : String?
    let newsLink : String?
    let newsTwitter : String?
    
    enum CodingKeys: String, CodingKey {
        
        case nid = "nid"
        case title = "title"
        case shortDetail = "shortDetail"
        case shortTitle = "shortTitle"
        case fullDetail = "fullDetail"
        case photoLink = "photoLink"
        case newsDate = "newsDate"
        case newsPaper = "newsPaper"
        case newsLogo = "newsLogo"
        case newsLink = "newsLink"
        case newsTwitter = "newsTwitter"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        nid = try values.decodeIfPresent(Int.self, forKey: .nid)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        shortDetail = try values.decodeIfPresent(String.self, forKey: .shortDetail)
        shortTitle = try values.decodeIfPresent(String.self, forKey: .shortTitle)
        fullDetail = try values.decodeIfPresent(String.self, forKey: .fullDetail)
        photoLink = try values.decodeIfPresent(String.self, forKey: .photoLink)
        newsDate = try values.decodeIfPresent(String.self, forKey: .newsDate)
        newsPaper = try values.decodeIfPresent(String.self, forKey: .newsPaper)
        newsLogo = try values.decodeIfPresent(String.self, forKey: .newsLogo)
        newsLink = try values.decodeIfPresent(String.self, forKey: .newsLink)
        newsTwitter = try values.decodeIfPresent(String.self, forKey: .newsTwitter)
    }
    
}
