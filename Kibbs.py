print("Hello, Class")
a=10
b=0
try:
    print("this is outer try block")
    try:
        print(a/b)
    except ZeroDivisionError:
        print("Division by zero")
    finally:
        print("inside inner finally block")

except Exception:
    print("General Exception")
finally:
    print("inside outer finally block")                   