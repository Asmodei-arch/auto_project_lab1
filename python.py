name = input("Введите имя студента: ")
names_department = input(f"Введите номер кафедры студента по имени: {name}")
if names_department == "304":
    print(f"Hello, {name}, 304 department's student!")
else:
    print(f"Hello, some stranger by name {name}")
