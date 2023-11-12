# Generated by Django 3.2.18 on 2023-09-03 08:34

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myschool', '0008_auto_20230804_1121'),
    ]

    operations = [
        migrations.AlterField(
            model_name='grade',
            name='grade',
            field=models.CharField(max_length=4, unique=True),
        ),
        migrations.AlterField(
            model_name='puple',
            name='person',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.person', unique=True),
        ),
    ]