# Generated by Django 2.1.7 on 2019-04-18 01:52

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('listings', '0004_auto_20190402_0826'),
    ]

    operations = [
        migrations.AlterField(
            model_name='listing',
            name='list_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2019, 4, 18, 1, 52, 57, 249428)),
        ),
    ]
