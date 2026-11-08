students_name = input("Введите имя студента: ")
students_department = input(f"Введите номер кафедры студента по имени: {name}")
if students_department == "304":
    print(f"Hello, {students_name}, 304 department's student!")
else:
    print(f"Hello, some stranger by name {students_name}")
