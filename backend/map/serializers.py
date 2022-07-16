from rest_framework import serializers
from .models import Geolocation

class GeolocationSerializer(serializers.ModelSerializer):

    class Meta:
        model = Geolocation
        fields = ['pk', 'name', 'longitude', 'latitude', 'created']