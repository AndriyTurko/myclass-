# Generated by Django 3.2.18 on 2023-06-19 14:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myschool', '0005_person_address'),
    ]

    operations = [
        migrations.AlterField(
            model_name='person',
            name='address',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.address'),
        ),
    ]