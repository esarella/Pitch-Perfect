//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by Emmanuel Sarella on 3/18/16.
//  Copyright © 2016 Emmanuel Sarella. All rights reserved.
//

import Foundation

class RecordedAudio
{
    var filePathUrl: NSURL!
    var title: String!
    
    init() {
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        let recordingName = "my_audio.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)

        filePathUrl = filePath
        title = recordingName
    }
}