///get_class_data()

// single quote is important
return json_decode('
{
    "elizabeth" : {
        "name" : "Elizabeth",
        "health" : 10,
        "attack" : 8,
        "defence" : 8,
        "speed" : 9,
        "critical" : 25,
        "experience" : 0,
        "actions" : []
    },
    "spider" : {
        "name" : "Spider",
        "health" : 3,
        "attack" : 5,
        "defence" : 4,
        "speed" : 10,
        "critical" : 5,
        "experience" : 10,
        "actions" : ["attack", "defend"]
    }
}');
