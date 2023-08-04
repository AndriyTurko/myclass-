from django.contrib import admin

# Register your models here.

from .models import Question, Choice, Theme


class ChoiceAdmin(admin.ModelAdmin):
    list_display = ('question', 'choice_text', 'votes')


admin.site.register(Question)
admin.site.register(Choice, ChoiceAdmin)
admin.site.register(Theme)

