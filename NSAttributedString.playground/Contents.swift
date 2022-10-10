import UIKit

extension NSAttributedString {
    var attributedStringToHtml: String? {
        do {
            let htmlData = try self.data(from: NSRange(location: 0, length: self.length), documentAttributes:[.documentType: NSAttributedString.DocumentType.html]);
            return String.init(data: htmlData, encoding: String.Encoding.utf8)
        } catch {
            print("error:", error)
            return nil
        }
    }
}

let string: NSAttributedString = try! .init(markdown: "**bold test** _italic test_")

print(string.attributedStringToHtml!)
