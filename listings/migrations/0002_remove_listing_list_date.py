# Generated by Django 2.1.7 on 2019-04-02 08:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('listings', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='listing',
            name='list_date',
        ),
    ]