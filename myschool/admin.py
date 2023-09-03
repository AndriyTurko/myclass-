from django.contrib import admin

# Register your models here.

from myschool.models import Person, Address, Teacher, Subject, Grade, Puple


admin.site.register(Person)
admin.site.register(Address)
admin.site.register(Teacher)
admin.site.register(Subject)
admin.site.register(Grade)
admin.site.register(Puple)

