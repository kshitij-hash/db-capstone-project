# Database Engineer Capstone Project
This repository contains all the necessary files for the Database Engineer Capstone Project.

## Scenario
Little Lemon needs to build a robust relational database system in MySQL in which they can store large amounts of data. They then need to easily manage and find this data as required. This database system should maintain information about the following aspects of the business:

* Bookings
* Orders
* Order delivery status
* Menu
* Customer details
* Staff information

## ER Diagram

![littlelemondm](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/031b45de-d44f-499c-8fe9-10e30d5b57f8)

## Stored Procedures
1. `GetMaxQuantity` displays the maximum ordered quantity in the Orders table
2. `CancelOrder` delete an order record based on the user input of the order id
3. `CheckBooking` check whether a table in the restaurant is already booked
4. `AddValidBooking` verify a booking, and decline any reservations for tables that are already booked under another name
5. `AddBooking` add a new table booking record
6. `UpdateBooking` update existing bookings in the booking table
7. `CancelBooking` to cancel or remove a booking

## Sales and Profits Charts

![Screenshot 2024-03-16 183555](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/fa15633f-3e31-4777-b785-1d4553993885)

![Screenshot 2024-03-16 183848](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/a02e310b-1cc2-4add-88ee-fdb2eb6bcd19)

![Screenshot 2024-03-16 185908](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/fcc86d30-9099-4727-b46a-b9089f1a8d9a)

![Screenshot 2024-03-16 190457](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/d26306ba-7403-4cd8-8096-c41b20d24060)

## Interactive Dashboard

![interactive dashboard little lemon](https://github.com/kshitij-hash/db-capstone-project/assets/83551355/f4c96245-8b2e-4e6a-852d-f95c67e040c2)


