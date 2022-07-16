from django.db import models

# Create your models here.

class User(models.Model):
    id = models.IntegerField('Id', primary_key=True)
    first_name = models.CharField("First Name", max_length=50)
    last_name = models.CharField("Last Name", max_length=50)
    email = models.EmailField()
    password = models.CharField("Password", max_length=50)
    phone = models.CharField("Phone", max_length=15)
    created = models.DateField(auto_now_add=True)

    def __str__(self):
        return '%s %s' % (self.first_name, self.last_name)
