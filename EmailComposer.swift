//  EmailComposer.swift

import Foundation
import MessageUI

let EmailRecipients = ["testing@testing123.com"] // Change with your Email


class EmailComposer: NSObject, MFMailComposeViewControllerDelegate {
    var userName: String = ""

    func canSendEmail() -> Bool {
        return MFMailComposeViewController.canSendMail()
    }

    // Configures and returns a MFMessageComposeViewController instance
    func configuredEmailComposeViewController() -> MFMailComposeViewController {
        self.fetchUsername()
        let emailComposeVC = MFMailComposeViewController()
         //  Make sure to set this property to self, so that the controller can be dismissed!
        emailComposeVC.mailComposeDelegate = self
        emailComposeVC.setToRecipients(EmailRecipients)
        emailComposeVC.setSubject("Your Email Subject Here")
        let emailBody = "Content of your email here"
        emailComposeVC.setMessageBody(emailBody, isHTML: false)
        return emailComposeVC
    }


    // MFEmailComposeViewControllerDelegate callback Dismiss
   func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
