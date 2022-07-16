from rest_framework import generics
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.backends import ModelBackend
from django.contrib.auth.hashers import check_password

from .models import User
from .serializers import UserSerializer, TokenSerializer


# Create your views here.
class UserCreate(generics.CreateAPIView):
    serializer_class = UserSerializer


class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer


class UserDetail(generics.RetrieveAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer


class UserUpdate(generics.RetrieveUpdateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer


class TokenPair(TokenObtainPairView):
    permission_classes = (AllowAny,)
    serializer_class = TokenSerializer

class UserAuthorizeWithEmailAndPassword(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = User.objects.get(email=username)
            if check_password(password, user.password):
                return user
        except Exception as e:
            return None
