//
//  AddTaskViewController.swift
//  TaskList
//
//  Created by Hansel Matthew on 16/07/22.
//

import UIKit
import RxSwift

class AddTaskViewController: UIViewController{
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservables: Observable<Task> {
        return taskSubject.asObservable()
    }
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    
    @IBAction func save(_ sender: Any) {
        
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex), let title = self.taskTitleTextField.text else { return }
        
        let task = Task(title: title, priority: priority)
        
        taskSubject.onNext(task)
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
