# Generated by Django 4.2.7 on 2023-12-05 23:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0002_alter_categoria_nombre'),
    ]

    operations = [
        migrations.AlterField(
            model_name='categoria',
            name='nombre',
            field=models.CharField(max_length=30, unique=True),
        ),
    ]
