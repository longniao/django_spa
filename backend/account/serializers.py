from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from django.contrib.auth.hashers import make_password

from .models import User


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ['pk', 'first_name', 'last_name', 'email', 'password', 'phone', 'created']

    def validate_password(self, value: str) -> str:
        return make_password(value)

class TokenSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super(TokenSerializer, cls).get_token(user)

        # Add custom claims
        token['email'] = user.email
        return token
