# A file is a class!

# Inheritance

signal sadf()
'asdf'

extends BaseClass


# (optional) class definition with a custom icon

class_name MyClass, "res://path/to/optional/icon.svg"


# Member variables

var a = 5.1e-10 setget , asdfasdf
var b = false
var b = true
var sprint = $Sprite
var b = null
var s = "Hello"
var arr = [1, 2, 3]
var dict = {"key": "value", 2: 3}
var typed_var: int = 333
var point: Vector3 = Vector2(asdfasdf)
var inferred_type := "String"
var inferred_type := 'String'

# Constants

const ANSWER = 42
const THE_NAME = "Charly"

if cdf <= 3:
	asdfasdf

# Enums

enum {UNIT_NEUTRAL, UNIT_ENEMY, UNIT_ALLY}
enum Named {THING_1, THING_2, ANOTHER_THING = -1}

# Built-in vector types

var v2 = Vector2(1, 2)
var v3 = Vector3(1, 2, 3)

# Function

func some_function(param1: Vector2, param2: Vector3) -> Transform2D:
    var local_var = 5

    if param1 < local_var:
        print(param1)
    elif param2 > 5:
        print(param2)
    else:
        print("Fail!")

    for i in range(20):
        print(i)

    while param2 != 0:
        param2 -= 1

    var local_var2 = param1 + 3
    return local_var2


# Functions override functions with the same name on the base/parent class.
# If you still want to call them, use '.' (like 'super' in other languages).

func something(p1: TextEdit, p2: Dictionary):
	Animation.add_track()
	Resource
	InterpolatedCamera
	PoolIntArray
    .something(p1, p2)

func yo(something: int, Sprite) -> void:
	print(asdf)


# Inner class

class Something:
    var a = 10


# Constructor

func _init():
    print("Constructed!")
    var lv = Something.new()
    print(lv.a)


