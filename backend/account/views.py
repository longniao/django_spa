from rest_framework import generics
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.backends import ModelBackend
from django.contrib.auth.hashers import check_password
from django.utils.decorators import method_decorator
from django.views.decorators.cache import cache_page
from django.views.decorators.vary import vary_on_cookie

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

    @method_decorator(vary_on_cookie)
    @method_decorator(cache_page(60 * 60))
    def dispatch(self, *args, **kwargs):
        return super(UserDetail, self).dispatch(*args, **kwargs)

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
