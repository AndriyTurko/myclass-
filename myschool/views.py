from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
from django.views import generic
from myschool.models import Person, Address, Teacher, Subject


class PersonListView(generic.ListView):
    model = Person
    

"""
def index(request):
    person_list = Person.objects.all()
    return render(request, 'myschool/all.html', {'person_list': person})
"""



class TeacherListView(generic.ListView):
    model = Teacher



class SubjectDetailView(generic.DetailView):
    model = Subject

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        print('11111111111', context)
        context.update({
            'teacher_name': self.object.teacher.person.name,
            'teacher_surname': self.object.teacher.person.surname
        })
        print('2222222222', context, self.object.teacher.person.surname)
        return context


class SubjectListView(generic.ListView):
    model = Subject
    


class TeacherDetailView(generic.DetailView):
    model = Teacher
"""
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        print('11111111111', context)
        context.update({
            'teacher_name': self.object.person.name,
            'teacher_surname': self.object.person.surname
        })
        print('2222222222', context)
        return context
"""