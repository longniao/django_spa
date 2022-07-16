from rest_framework import generics
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q

from .models import User
from .serializers import UserSerializer, TokenSerializer


# Create your views here.
class UserCreate(generics.CreateAPIView):
    # API endpoint that allows creation of a new customer
    queryset = User.objects.all()
    serializer_class = UserSerializer


class UserList(generics.ListAPIView):
    # API endpoint that allows customer to be viewed.
    queryset = User.objects.all()
    serializer_class = UserSerializer


class UserDetail(generics.RetrieveAPIView):
    # API endpoint that returns a single customer by pk.
    queryset = User.objects.all()
    serializer_class = UserSerializer


class TokenPair(TokenObtainPairView):
    permission_classes = (AllowAny,)
    serializer_class = TokenSerializer

class UserAuthorizeWithEmailAndPassword(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = User.objects.get(email=username)
            return user
            if user.check_password(password):
                return user
        except Exception as e:
            return None
