//
//  SMSViewController.swift
//  CallingLibrary
//
//  Created by V Group Inc on 01/12/23.
//

import Foundation
open class SmsViewController:UIViewController{
    
    let containerView:UIView = {
        let containerView = UIView()
        containerView.backgroundColor = .white
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    
    let titlsLabel: UILabel = {
        let label = UILabel()
        label.text = "Compose New SMS"
        label.adjustsFontForContentSizeCategory = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let toLabel: UILabel = {
        let label = UILabel()
        label.text = "To:"
        label.adjustsFontForContentSizeCategory = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cancelButton: UIButton = {
        let cancelBtn = UIButton()
        let image = Constant.getImage(named: "cancel")?.withRenderingMode(.alwaysOriginal)
        cancelBtn.setImage(image, for: .normal)
        cancelBtn.contentMode = .scaleAspectFit
        cancelBtn.addTarget(SmsViewController.self, action: #selector(dismissSubView), for: .touchUpInside)
        //label.adjustsFontForContentSizeCategory = true
        //label.translatesAutoresizingMaskIntoConstraints = false
        return cancelBtn
    }()
    
    let contactNumberTextField: UITextField = {
        let contactNoText = UITextField()
        contactNoText.placeholder = "Contact number"
        contactNoText.textColor = .black
        contactNoText.borderStyle = .roundedRect
        //contactNoText.font =
        //label.adjustsFontForContentSizeCategory = true
        //label.translatesAutoresizingMaskIntoConstraints = false
        return contactNoText
    }()
    
    let messageTextView: UITextView = {
        let messageTextView = UITextView()
        messageTextView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        //label.adjustsFontForContentSizeCategory = true
        //label.translatesAutoresizingMaskIntoConstraints = false
        return messageTextView
    }()
    
    let sendButton: UIButton = {
        let sendBtn = UIButton()
        sendBtn.setTitle("Send", for: .normal)
        sendBtn.backgroundColor = .blue
        sendBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        sendBtn.widthAnchor.constraint(equalToConstant: 160).isActive = true
        //label.adjustsFontForContentSizeCategory = true
        //label.translatesAutoresizingMaskIntoConstraints = false
        return sendBtn
    }()
    
    // MARK: - Private properties
    private var composeSMSStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 15
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.axis = .vertical
        return stackView
    }()
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupViews()
    }
    
    private func setupViews(){
        view.addSubview(containerView)
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        containerView.addSubview(composeSMSStackView)
        composeSMSStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30).isActive = true
        composeSMSStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        composeSMSStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        composeSMSStackView.addArrangedSubview(titlsLabel)
        composeSMSStackView.addArrangedSubview(toLabel)
        composeSMSStackView.addArrangedSubview(contactNumberTextField)
        composeSMSStackView.addArrangedSubview(messageTextView)
        sendButton.centerXAnchor.constraint(equalTo: composeSMSStackView.centerXAnchor).isActive = true
        sendButton.topAnchor.constraint(equalTo: composeSMSStackView.topAnchor, constant: 30).isActive = true
        containerView.addSubview(sendButton)
        //composeSMSStackView.addArrangedSubview(sendButton)
        
        
    }
    
    @objc private func dismissSubView(){
        dismiss(animated: true)
    }
    
    
    
    
    override open func viewDidLoad() {
        super.viewDidLoad()
//               let containerView = UIView()
//               containerView.backgroundColor = .lightGray
//               containerView.translatesAutoresizingMaskIntoConstraints = false
//               view.addSubview(containerView)
//
//               // Center the container view horizontally
//               containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//               // Center the container view vertically
//               containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//               // Set the size of the container view
//               //containerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//               containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
//               containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
//               containerView.heightAnchor.constraint(equalToConstant: 400).isActive = true
//
//               // Add a label below the container view
//               let label = UILabel()
//               label.text = "Compose New SMS"
//               //label.center
//               label.translatesAutoresizingMaskIntoConstraints = false
//               containerView.addSubview(label)
//
//               // Position the label below the container view
//               label.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30).isActive = true
//               label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: 20).isActive = true
//               label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
//
//               // Add a text field below the label
//               let textField = UITextField()
//               textField.placeholder = "Enter text"
//               textField.borderStyle = .roundedRect
//               textField.translatesAutoresizingMaskIntoConstraints = false
//               containerView.addSubview(textField)
//
//               // Position the text field below the label
//               textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8).isActive = true
//               textField.leadingAnchor.constraint(equalTo: label.leadingAnchor).isActive = true
//               textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        
             //view.addSubview(containerView)
    }
    
}
/*
open override class func presentController(
    on viewController: UIViewController,
    configuration: (CountryPickerController) -> Void = {_ in },
    manager: CountryListDataSource = CountryManager.shared,
    handler:@escaping OnSelectCountryCallback) {
    
    let controller = CountryPickerWithSectionViewController(manager: manager)
    controller.onSelectCountry = handler
    configuration(controller)
    let navigationController = UINavigationController(rootViewController: controller)
    viewController.present(navigationController, animated: true, completion: nil)
}
*/
