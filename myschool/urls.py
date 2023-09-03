from django.urls import path

from myschool.views import PersonListView, TeacherListView, SubjectDetailView, SubjectListView, TeacherDetailView, GradeDetailView, GradeListView, PupleDetailView, PupleListView

urlpatterns = [
    path("", PersonListView.as_view(), name="index"),
    path('teacher/', TeacherListView.as_view(), name='teacher-list'),
    path("subject/<pk>/", SubjectDetailView.as_view(), name="subject-detail"),
    path('subject/', SubjectListView.as_view(), name='subject-list'),
    path("teacher/<pk>/", TeacherDetailView.as_view(), name="teacher-detail"),
    path('grade/', GradeListView.as_view(), name='grade-list'),
    path('grade/<pk>/', GradeDetailView.as_view(), name='grade-detail'),
    path('puple/', PupleListView.as_view(), name='puple-list'),
    path('puple/<pk>/', PupleDetailView.as_view(), name='puple-detail'),

]


app_name='myschool'
