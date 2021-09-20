import json

class Client():
    def __init__(self, name, phone):
        self.name = name
        self.phone = phone

class Driver():
    def __init__(self, phone, tariff, car):
        self.phone = phone
        self.tariff = tariff
        self.car = car

class Order():
    def __init__(self, client, driver, date):
        self.client = client
        self.driver = driver
        self.date = date

class Car():
    def __init__(self, model, number):
        self.model = model
        self.number = number

def to_json(i):
    return json.dumps(i, default=lambda o: o.__dict__, ensure_ascii = True)

clients = [Client("client1", 12), Client("client2", 123)]

cars = [Car("Kia", "A123BH"), Car("Lada", "T456CK")]

drivers = [Driver(21, "comfort", cars[0]), Driver(321, "comfort", cars[1])]

orders = [Order(clients[0], drivers[0], "12.09.21"), Order(clients[1], drivers[1], "12.09.21")]


db =json.dumps(
{
        "clients" : [
            to_json(clients[0]),
            to_json(clients[1])
        ],
        "cars" : [
            to_json(cars[0]),
            to_json(cars[1])
        ],
        "drivers" : [
            to_json(drivers[0]),
            to_json(drivers[1])
        ],
        "orders" : [
            to_json(orders[0]),
            to_json(orders[0])
        ]
}
)
