/**
 * (C) Copyright IBM Corp. 2018, 2019.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 An effective date.
 */
public struct EffectiveDates: Codable, Equatable {

    /**
     The confidence level in the identification of the effective date.
     */
    public enum ConfidenceLevel: String {
        case high = "High"
        case medium = "Medium"
        case low = "Low"
    }

    /**
     The effective date, listed as a string.
     */
    public var text: String?

    /**
     The confidence level in the identification of the effective date.
     */
    public var confidenceLevel: String?

    /**
     The numeric location of the identified element in the document, represented with two integers labeled `begin` and
     `end`.
     */
    public var location: Location?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case text = "text"
        case confidenceLevel = "confidence_level"
        case location = "location"
    }

}
