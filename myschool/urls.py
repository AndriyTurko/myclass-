from django.urls import path

from myschool.views import MarkListView, SubjectCreateView, PersonCreateView, AddressCreateView, PersonDetailView, PersonListView, TeacherListView, SubjectDetailView, SubjectListView, TeacherDetailView, GradeDetailView, GradeListView, PupleDetailView, PupleListView, AddressListView, AddressDetailView, MyschoolListView

urlpatterns = [
    path("", MyschoolListView.as_view(template_name='myschool/myschool_list.html'), name="myschool-list"),
    path("person/", PersonListView.as_view(), name="person-list"),
    path("person/<pk>", PersonDetailView.as_view(), name="person-detail"),
    path('person/create/', PersonCreateView.as_view(), name='person-create'),
    path('teacher/', TeacherListView.as_view(), name='teacher-list'),
    path("subject/<pk>/", SubjectDetailView.as_view(), name="subject-detail"),
    path('subject/', SubjectListView.as_view(), name='subject-list'),
    path('subject/create/', SubjectCreateView.as_view(), name='subject-create'),
    path("teacher/<pk>/", TeacherDetailView.as_view(), name="teacher-detail"),
    path('grade/', GradeListView.as_view(), name='grade-list'),
    path('grade/<pk>/', GradeDetailView.as_view(), name='grade-detail'),
    path('puple/', PupleListView.as_view(), name='puple-list'),
    path('puple/<pk>/', PupleDetailView.as_view(), name='puple-detail'),
    path('address/', AddressListView.as_view(), name='address-list'),
    path('address/create/', AddressCreateView.as_view(), name='address-create'),
    path('address/<pk>/', AddressDetailView.as_view(), name='address-detail'),
    path('mark/', MarkListView.as_view(), name='mark-list'),
]


app_name='myschool'
