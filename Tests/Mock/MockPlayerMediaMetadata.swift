//
//  MockPlayerMediaMetadata.swift
//  ModernAVPlayer_Tests
//
//  Created by raphael ankierman on 27/06/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
@testable import ModernAVPlayer

final class MockPlayerMediaMetadata: PlayerMediaMetadata, Equatable {
    let title: String?
    let albumTitle: String?
    let artist: String?
    let localPlaceHolderImageName: String?
    let remoteImageUrl: URL?

    init(title: String?,
         albumTitle: String?,
         artist: String?,
         localImageName: String?,
         remoteImageUrl: URL?) {
        self.title = title
        self.albumTitle = albumTitle
        self.artist = artist
        self.localPlaceHolderImageName = localImageName
        self.remoteImageUrl = remoteImageUrl
    }

    static func convert(_ metadata: PlayerMediaMetadata) -> MockPlayerMediaMetadata {
        return MockPlayerMediaMetadata(title: metadata.title,
                                       albumTitle: metadata.albumTitle,
                                       artist: metadata.artist,
                                       localImageName: metadata.localPlaceHolderImageName,
                                       remoteImageUrl: metadata.remoteImageUrl)
    }
}

func == (lhs: MockPlayerMediaMetadata, rhs: MockPlayerMediaMetadata) -> Bool {
    return lhs.title == rhs.title &&
        lhs.albumTitle == rhs.albumTitle &&
        lhs.artist == rhs.artist &&
        lhs.localPlaceHolderImageName == rhs.localPlaceHolderImageName &&
        lhs.remoteImageUrl == rhs.remoteImageUrl
}
