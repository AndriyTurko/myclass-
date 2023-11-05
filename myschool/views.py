from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
from django.views import generic
from myschool.models import Person, Address, Teacher, Subject, Grade, Puple


class PersonListView(generic.ListView):
    model = Person


class PersonDetailView(generic.DetailView):
    model = Person


class PersonCreateView(generic.edit.CreateView):
    model = Person
    fields = '__all__'
    

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
    
class SubjectCreateView(generic.edit.CreateView):
    model = Subject
    fields = '__all__'


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

class GradeListView(generic.ListView):
    model = Grade


class GradeDetailView(generic.DetailView):
    model = Grade

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        puple_list = Puple.objects.filter(grade=self.object)
        context.update({
            'puple_list': puple_list,
        })
        return context


class PupleListView(generic.ListView):
    model = Puple


class PupleDetailView(generic.DetailView):
    model = Puple


class AddressListView(generic.ListView):
    model = Address

class AddressDetailView(generic.DetailView):
    model = Address

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        person_list = Person.objects.filter(address=self.object)
        context.update({
            'person_list': person_list,
        })
        return context


class MyschoolListView(generic.TemplateView):
    pass


class AddressCreateView(generic.edit.CreateView):
    model = Address
    fields = ['country', 'region', 'town', 'street', 'number']
