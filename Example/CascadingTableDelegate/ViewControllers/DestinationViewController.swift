//
//  DestinationViewController.swift
//  CascadingTableDelegate
//
//  Created by Ricardo Pramana Suranta on 10/31/16.
//  Copyright © 2016 Ricardo Pramana Suranta. All rights reserved.
//

import UIKit
import CascadingTableDelegate

class DestinationViewController: UIViewController {

	@IBOutlet weak fileprivate var tableView: UITableView!
	@IBOutlet fileprivate weak var footerButton: UIButton!
	
	fileprivate let refreshControl = UIRefreshControl()
	fileprivate let viewModel = DestinationViewModel()
	
	fileprivate var rootDelegate: CascadingRootTableDelegate?
	
	convenience init() {
		self.init(nibName: "DestinationViewController", bundle: nil)
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		updateTitle()
		
		configureRefreshControl()
		configureNavBarStyle()
		
		createRootDelegate()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = false
		refreshData()
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		footerButton.setRoundedCorner()
	}
	
	override var preferredStatusBarStyle : UIStatusBarStyle {
		return .lightContent
	}
	
	@IBAction func scrollToTop(_ sender: AnyObject) {		
		let topIndexPath = IndexPath(row: 0, section: 0)
		tableView.scrollToRow(at: topIndexPath, at: .middle, animated: true)
	}
	
	// MARK: - Private methods
	
	fileprivate func updateTitle() {
		title = viewModel.destinationTitle ?? "Destination"
	}
	
	fileprivate func configureRefreshControl() {
		
		refreshControl.addTarget(self, action: #selector(DestinationViewController.refreshData), for: .valueChanged)
		
		tableView.addSubview(refreshControl)
	}
	
	fileprivate func configureNavBarStyle() {
		
		let navigationBar = self.navigationController?.navigationBar
		
		navigationBar?.barTintColor = UIColor.cst_DarkBlueGrey
		navigationBar?.tintColor = UIColor.white
		navigationBar?.titleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor.white ]
		
		navigationBar?.barStyle = .black
	}

	fileprivate func createRootDelegate() {				
		
		// Feel free to remove, add, copy, or change this array's value. The rootTableDelegate will do the heavy-lifting and display the correct result for you :)
		
		let childDelegates: [CascadingTableDelegate] = [
			DestinationHeaderSectionDelegate(viewModel: viewModel),
			DestinationInfoMapSectionDelegate(viewModel: viewModel),
			DestinationInfoListSectionDelegate(viewModel: viewModel),
			DestinationReviewRatingSectionDelegate(viewModel: viewModel),
			DestinationReviewUserSectionDelegate(viewModel: viewModel)
		]
		
		rootDelegate = CascadingRootTableDelegate(
			childDelegates: childDelegates,
			tableView: tableView
		)
	}
	
	@objc fileprivate func refreshData() {
		
		viewModel.refreshData { [weak self] in
			self?.updateTitle()
			self?.stopRefreshControl()
		}
		
		if refreshControl.isRefreshing {
			return
		}
		
		startRefreshControl()
	}
	
	fileprivate func startRefreshControl() {
		
		tableView.showRefreshControl()
		
		refreshControl.layoutIfNeeded()
		refreshControl.beginRefreshing()
		refreshControl.isHidden = false
	}
	
	fileprivate func stopRefreshControl() {
		
		let delayTime = DispatchTime.now() + 1.5
		let dispatchQueue = DispatchQueue.global(qos: .userInitiated)
		
		dispatchQueue.asyncAfter(deadline: delayTime) {
			
			DispatchQueue.main.async(execute: {
				self.refreshControl.endRefreshing()
			})
		}
	}
	
}
