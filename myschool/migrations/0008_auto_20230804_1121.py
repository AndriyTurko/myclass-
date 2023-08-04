# Generated by Django 3.2.18 on 2023-08-04 11:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myschool', '0007_subject_teacher'),
    ]

    operations = [
        migrations.CreateModel(
            name='Grade',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('grade', models.CharField(max_length=4)),
                ('spec', models.CharField(max_length=30)),
                ('floor', models.IntegerField(default=1)),
                ('room', models.IntegerField()),
            ],
        ),
        migrations.AlterField(
            model_name='teacher',
            name='education',
            field=models.CharField(max_length=100),
        ),
        migrations.CreateModel(
            name='Puple',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('grade', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.grade')),
                ('person', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.person')),
            ],
        ),
    ]