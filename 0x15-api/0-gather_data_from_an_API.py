#!/usr/bin/python3
"""Retrieves information about an employee todo list"""
import requests
import sys


if __name__ == "__main__":
    employee_id = sys.argv[1]
    url = 'https://jsonplaceholder.typicode.com'

    empl_res = requests.get("{}/users/{}".format(url, employee_id))
    todo_res = requests.get("{}/todos?userId={}".format(url, employee_id))

    employee = empl_res.json()
    todos = todo_res.json()

    employee_name = employee.get("name")
    
    completed_tasks = []
    for task in todos:
        if task["completed"] == True:
            completed_tasks.append(task["title"])

    total_tasks = len(todos)

    print("Employee {} is done with tasks({}/{}):".format(employee_name,
                                                          len(completed_tasks),
                                                          total_tasks))
    for task in completed_tasks:
        print("\t {}".format(task))

