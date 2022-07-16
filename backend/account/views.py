from rest_framework import generics
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView

from .models import User
from .serializers import UserSerializer, TokenSerializer


# Create your views here.
class UserCreate(generics.CreateAPIView):
    # API endpoint that allows creation of a new customer
    queryset = User.objects.all(),
    serializer_class = UserSerializer


class UserList(generics.ListAPIView):
    # API endpoint that allows customer to be viewed.
    queryset = User.objects.all()
    serializer_class = UserSerializer


class UserDetail(generics.RetrieveAPIView):
    # API endpoint that returns a single customer by pk.
    queryset = User.objects.all()
    serializer_class = UserSerializer


class TokenPairView(TokenObtainPairView):
    permission_classes = (AllowAny,)
    serializer_class = TokenSerializer
