from django.contrib import admin

# Register your models here.

from myschool.models import Person, Address, Teacher, Subject


admin.site.register(Person)
admin.site.register(Address)
admin.site.register(Teacher)
admin.site.register(Subject)

