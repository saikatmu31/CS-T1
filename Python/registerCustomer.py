customer_list = []
def validate_contact_number(number):
    if(len(number)!=10):
        return False
    return True

def registerCustomer(customer_name,email,password,address,contact_number):
    if(not customer_name or not email or not password or not address or not contact_number):
        return False
    if not validate_contact_number(contact_number):
        return False
    new_customer = {
        'customer_name':customer_name,
        'email':email,
        'address':address,
        'contact_number':int(contact_number)
    }
    return new_customer


customer_name = input("Enter Customer Name : ")
email = input("Enter Customer Email : ")
password = input("Enter Customer Password : ")
address = input("Enter Customer Address : ")
contact_number = input("Enter Customer Contact Number : ")
    
customer_details = registerCustomer(customer_name,email,password,address,contact_number)
print(customer_details)
customer_list.append(customer_details)
print("Customer Added Successfully!")