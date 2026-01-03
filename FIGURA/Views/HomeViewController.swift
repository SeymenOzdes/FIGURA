
import Foundation
import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private lazy var titleText: UILabel = {
        let label = UILabel()
        label.text = "Hello Furkan!"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        return label
    }()
    
    private lazy var dayText: UILabel = {
        let label = UILabel()
        label.text = "Tuesday,"
        label.textColor = .gray
        return label
    }()
    
    private lazy var dateText: UILabel = {
        let label = UILabel()
        label.text = "January 3"
        label.textColor = .gray
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUp()
    }
    
    private func setUp() {
        view.addSubview(titleText)
        view.addSubview(dayText)
        view.addSubview(dateText)
        
        titleText.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.leading.equalToSuperview().offset(16)
        }
        
        dayText.snp.makeConstraints { make in
            make.top.equalTo(titleText.snp.bottom).offset(4)
            make.leading.equalToSuperview().offset(16)
        }
        
        dateText.snp.makeConstraints { make in
            make.top.equalTo(titleText.snp.bottom).offset(4)
            make.leading.equalTo(dayText.snp.trailing).offset(6)
        }
    }
}
