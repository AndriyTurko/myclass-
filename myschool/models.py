from django.db import models
from django.core.validators import MinLengthValidator

# Create your models here.


class Address(models.Model):
    country = models.CharField(max_length=30)
    region = models.CharField(max_length=30)
    town = models.CharField(max_length=30)
    street = models.CharField(max_length=30)
    number = models.CharField(max_length=30)

    def __str__(self):
        return self.town + " " + self.street + ' ' + self.number

    def get_absolute_url(self):
        return '/myschool/address/' + str(self.pk)

class Person(models.Model):
    name = models.CharField(max_length=30, validators=[MinLengthValidator(3)])
    surname = models.CharField(max_length=30, validators=[MinLengthValidator(3)])
    birth_date = models.DateField()
    address = models.ForeignKey(Address, on_delete=models.CASCADE)

    def __str__(self):
        return self.name + ' ' + self.surname

    def get_absolute_url(self):
        return '/myschool/person/'


class Teacher(models.Model):
    experience = models.CharField(max_length=30)
    salary = models.CharField(max_length=30)
    education = models.CharField(max_length=100)
    person = models.ForeignKey(Person, on_delete=models.CASCADE)

    def __str__(self):
        return self.education + ' ' + self.experience



class Subject(models.Model):
    name = models.CharField(max_length=30)
    description = models.CharField(max_length=30)
    hours = models.CharField(max_length=30)
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return '/myschool/subject/' + str(self.pk) 



class Grade(models.Model):
    grade = models.CharField(max_length=4, unique=True)
    spec = models.CharField(max_length=30)
    floor = models.IntegerField(default=1)
    room = models.IntegerField()

    def __str__(self):
        return self.grade



class Puple(models.Model):
    person = models.ForeignKey(Person, on_delete=models.CASCADE, unique=True)
    grade = models.ForeignKey(Grade, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.person) + ' ' + str(self.grade)

