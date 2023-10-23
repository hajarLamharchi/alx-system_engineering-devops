#!/usr/bin/python3
"""retrievs information from an API and save as json file"""

import json
import requests
import sys


if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com'
    json_file = "todo_all_employees.json"

    empl_res = requests.get("{}/users".format(url))
    todos_res = requests.get("{}/todos".format(url))
    employees = empl_res.json()
    todos = todos_res.json()
    json_dict = {}

    for e in employees:
        user_id = e["id"]
        username = e["username"]
        json_dict[user_id] = []
        for todo in todos:
            if todo["userId"] == user_id:
                json_dict[user_id].append({
                    "task": todo["title"],
                    "completed": todo["completed"],
                    "username": username
                })

    with open(json_file, "w") as f:
        json.dump(json_dict, f)
