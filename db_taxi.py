import json

class To_json:
    def to_j(self):
        return json.dumps(self, default=lambda o: o.__dict__, ensure_ascii = True)

class Client(To_json):
    def __init__(self, name, phone):
        self.name = name
        self.phone = phone

class Driver(To_json):
    def __init__(self, phone, tariff, car):
        self.phone = phone
        self.tariff = tariff
        self.car = car

class Order(To_json):
    def __init__(self, client, driver, date):
        self.client = client
        self.driver = driver
        self.date = date

class Car(To_json):
    def __init__(self, model, number):
        self.model = model
        self.number = number


clients = [Client("client1", 12), Client("client2", 123)]

cars = [Car("Kia", "A123BH"), Car("Lada", "T456CK")]

drivers = [Driver(21, "comfort", cars[0]), Driver(321, "comfort", cars[1])]

orders = [Order(clients[0], drivers[0], "12.09.21"), Order(clients[1], drivers[1], "12.09.21")]


db =json.dumps(
{
        "clients" : [
            clients[0].to_j(),
            clients[1].to_j()
        ],
        "cars" : [
            cars[0].to_j(),
            cars[1].to_j()
        ],
        "drivers" : [
            drivers[0].to_j(),
            drivers[1].to_j()
        ],
        "orders" : [
            orders[0].to_j(),
            orders[1].to_j()
        ]
}
)
