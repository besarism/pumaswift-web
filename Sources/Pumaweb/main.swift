import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Pumaweb: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case articles
        case github
        case slack
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://pumaswift.com")!
    var name = "Puma Swift"
    var description = "Build utilities in pure Swift"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Pumaweb().publish(withTheme: .foundation)
