//
// Corona-Warn-App
//
// SAP SE and all other contributors
// copyright owners license this file to you under the Apache
// License, Version 2.0 (the "License"); you may not use this
// file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.
//

import UIKit

final class InfoBarButtonItem: UIBarButtonItem {
	init(target: HomeViewController?, action: Selector) {
		super.init()
		customView = {
			let button = UIButton(type: .infoLight)
			button.addTarget(target, action: action, for: .primaryActionTriggered)
			return button
		}()
		isAccessibilityElement = true
		accessibilityLabel = AppStrings.Home.rightBarButtonDescription
		accessibilityIdentifier = AccessibilityIdentifiers.Home.rightBarButtonDescription
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has intentionally not been implemented")
	}
}
