# Generated by Django 4.2 on 2024-03-07 20:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard', '0007_contacto_enviado'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyecto',
            name='enlace',
            field=models.URLField(default=None, max_length=300),
            preserve_default=False,
        ),
    ]
