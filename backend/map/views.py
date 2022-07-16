from rest_framework import generics

from .models import Geolocation
from .serializers import GeolocationSerializer

# Create your views here.
class GeolocationCreate(generics.CreateAPIView):
    # API endpoint that allows creation of a new customer
    queryset = Geolocation.objects.all(),
    serializer_class = GeolocationSerializer


class GeolocationList(generics.ListAPIView):
    # API endpoint that allows customer to be viewed.
    queryset = Geolocation.objects.all()
    serializer_class = GeolocationSerializer


class GeolocationDetail(generics.RetrieveAPIView):
    # API endpoint that returns a single customer by pk.
    queryset = Geolocation.objects.all()
    serializer_class = GeolocationSerializer