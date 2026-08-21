from flask import Flask, request, jsonify

app = Flask(__name__)

dogs = []

@app.route("/")
def home():
    return "RabiesGuard API Running"

@app.route("/dogs", methods=["POST"])
def add_dog():
    data = request.json

    dog = {
        "rfid": data["rfid"],
        "ward": data["ward"],
        "vaccinated": data["vaccinated"],
        "sterilized": data["sterilized"]
    }

    dogs.append(dog)

    return jsonify({
        "message": "Dog record added",
        "dog": dog
    }), 201


@app.route("/dogs", methods=["GET"])
def get_dogs():
    return jsonify(dogs)


if __name__ == "__main__":
    app.run(debug=True)