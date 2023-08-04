from django.urls import path

from myschool.views import PersonListView, TeacherListView, SubjectDetailView, SubjectListView, TeacherDetailView

urlpatterns = [
    path("", PersonListView.as_view(), name="index"),
    path('teacher/', TeacherListView.as_view(), name='teacher-list'),
    path("subject/<pk>/", SubjectDetailView.as_view(), name="subject-detail"),
    path('subject/', SubjectListView.as_view(), name='subject-list'),
    path("teacher/<pk>/", TeacherDetailView.as_view(), name="teacher-detail"),

]


app_name='myschool'
