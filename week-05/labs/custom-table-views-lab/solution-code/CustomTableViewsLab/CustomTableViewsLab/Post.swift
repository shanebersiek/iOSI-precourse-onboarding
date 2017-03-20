//
//  Post.swift
//  CustomTableViewsLab
//
//  Created by Wellington Moreno on 7/21/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class Post {
    
    let text: String?
    let image: UIImage?
    
    var isImagePost: Bool {
        return image != nil
    }
    
    var isTextPost: Bool {
        return text != nil && image == nil
    }
    
    private init(text: String?, image: UIImage?) {
        self.text = text
        self.image = image
    }
    
    convenience init(text: String) {
        self.init(text: text, image: nil)
    }
    
    convenience init(image: UIImage) {
        self.init(text: nil, image: image)
    }
    
    static func newPost() -> Post {
        
        let text = TEXTS.any
        let image = IMAGES.any
        
        if Bool.random {
            return Post(text: text, image: image)
        }
        else {
            return Post(text: text)
        }
    }
}


let TEXTS = [
    "Mood right now.",
    "Half up front, half upon mastering",
    
    "I got more soul than a sock with a hole",
    
    "Keepin it low key",
    
    "‘Alright, this is eh, Richard. He’s from Baltimore but don’t worry he’s been frisked!’ The principal grinned and there were several titters from the class.. ‘I’m not ashamed of where I come from,’ Richard answered right back. ‘It’s a really good community. Everyone looks out for each other.’ ‘Of course, son. Of course.’",
    
    "After the principal had left, he was given a seat and he walked to it with that self assured swagger that I would soon be doing my best to imitate and I knew then that the feeling I had about this guy when I first saw him, was correct. He was someone special. ",
    
    "“All the business of war, and indeed all the business of life, is to endeavour to find out what you don't know by what you do; that's what I called 'guess what was at the other side of the hill'. \n\n- Arthur Wellesley",
    
    "“I sliced the tendons in my finger while trying to cut away some waterproofing. I’d taken a few pain pills before, but I’d never been handed hundreds of them. Eventually I was taking twenty pills a day. I was going through a divorce at the time so I was pretty unstable. Back then you could ‘doctor shop:’ run one prescription through insurance, pay cash for two more. After three years I went to a treatment center and they put me on something called Suboxone. It took me four years to get off that stuff. The withdrawals were terrible. It’s almost as bad as the pain pills. And get this—the same people making the pain pills are making Suboxone. They sell you drugs to get off their drugs. It’s all a money game. Listen, it was my choice to take the pills. I know it was my fault. But somebody out there made a lot of money off my weakness.”"
]

let IMAGES: [UIImage] = [
    #imageLiteral(resourceName: "Image-1"),
    #imageLiteral(resourceName: "Image-2"),
    #imageLiteral(resourceName: "Image-3"),
    #imageLiteral(resourceName: "Image-4"),
    #imageLiteral(resourceName: "Image-5"),
    #imageLiteral(resourceName: "Image-6"),
    #imageLiteral(resourceName: "Image-7"),
    #imageLiteral(resourceName: "Image-8"),
    #imageLiteral(resourceName: "Image-9"),
    #imageLiteral(resourceName: "Image-10"),
    #imageLiteral(resourceName: "Image-11")
]


extension Array {
    
    var randomIndex: Int {
        
        var index = Int(arc4random_uniform(UInt32(self.count)))
        if index < 0 {
            index = 0
        }
        
        if index >= count {
            index = count - 1
        }
        
        return index
    }
    
    var any: Element {
        return self[randomIndex]
    }
}

extension Bool {
    
    static var random: Bool {
        
        let number = arc4random_uniform(111)
        return number % 3 == 0
    }
}
