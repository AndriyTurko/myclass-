# Generated by Django 3.2.18 on 2023-12-10 09:39

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('myschool', '0013_merge_0011_auto_20231126_0916_0012_delete_myschool'),
    ]

    operations = [
        migrations.AddField(
            model_name='person',
            name='user',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
