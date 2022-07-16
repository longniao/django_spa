from django.db import models

# Create your models here.
from account.models import User

class Geolocation(models.Model):
    id = models.IntegerField('Id', primary_key=True)
    user = models.ForeignKey(User, default=0, on_delete=models.CASCADE)
    name = models.CharField("Name", max_length=100)
    longitude = models.FloatField('Latitude')
    latitude = models.FloatField('Longitude')
    created = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name

