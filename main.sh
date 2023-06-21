#!/usr/bin/env bash
#This script builds an application that will take user input and build the Bachelor of Software Engineering cohort list of students

create_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " id

    echo "$email,$age,$id" >> students-list_0333.txt

    echo "Student record created successfully."
}

view_students() {
    echo "=============================="
    echo "Student List"
    echo "=============================="

    if [[ ! -f "students-list_0333.txt" ]]; then
        echo "No students found."
    else
        cat students-list_0333.txt
    fi

    echo "=============================="
}

delete_student() {
    read -p "Enter student ID to delete: " id

    if [[ -f "students-list_0333.txt" ]]; then
        sed -i "/$id/d" students-list_0333.txt
        echo "Student record deleted successfully."
    else
        echo "No students found."
    fi
}

update_student() {
    read -p "Enter student ID to update: " id

    if [[ -f "students-list_0333.txt" ]]; then
        sed -i "/$id/d" students-list_0333.txt

        read -p "Enter updated student email: " email
        read -p "Enter updated student age: " age

        echo "$email,$age,$id" >> students-list_0333.txt

        echo "Student record updated successfully."
    else
        echo "No students found."
    fi
}

while true; do
    echo "------------------------------"
    echo "Welcome to the Bachelor of Software Engineering cohort student Management System!"
    echo "Please, choose an option below"
    echo "=============================="
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student"
    echo "4. Update student record"
    echo "5. Exit"
    read -p "Enter your choice: " choice
    echo "-------------------------------"

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
