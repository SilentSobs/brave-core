// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import Foundation

final class WebImageCacheWithNoPrivacyProtectionManager {

  private let webImageCache: WebImageCache

  static let shared: WebImageCache = {
    let webImageCacheManager = WebImageCacheWithNoPrivacyProtectionManager(isPrivate: false)
    return webImageCacheManager.webImageCache
  }()

  private init(isPrivate: Bool) {
    let webImageCache = WebImageCache(isPrivate: isPrivate)
    self.webImageCache = webImageCache
  }

}
