# Generated by Django 3.2.18 on 2023-06-19 14:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myschool', '0004_auto_20230619_1415'),
    ]

    operations = [
        migrations.AddField(
            model_name='person',
            name='address',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='myschool.address'),
        ),
    ]
