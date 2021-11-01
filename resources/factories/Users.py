from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user():
    return {
        'name': fake.first_name(),
        'lastname': fake.last_name(),
        'email': fake.free_email(),
        'password': "qwe123"
    }

def factory_invalid_email():

    first_name = fake.first_name()

    return {
        'name': first_name,
        'lastname': fake.last_name(),
        'email': first_name.lower() + 'test&email.com',
        'password': "qwe123"
    }

def factory_login_user():

    return {
        'name': 'Nilton',
        'lastname': 'Formis',
        'email': 'nformis@email.com',
        'password': "qwe123"
    }