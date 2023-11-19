# Generated by Django 3.2.18 on 2023-10-15 08:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('myschool', '0010_auto_20230910_0833'),
    ]

    operations = [
        migrations.CreateModel(
            name='Myschool',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('address', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.address')),
                ('grade', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.grade')),
                ('person', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.person', unique=True)),
                ('puple', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.puple')),
                ('subject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.subject')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myschool.teacher')),
            ],
        ),
    ]