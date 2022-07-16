from rest_framework import serializers
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from .models import User

class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ['pk', 'first_name', 'last_name', 'email', 'created']


class TokenSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super(TokenSerializer, cls).get_token(user)

        # Add custom claims
        token['username'] = user.username
        return token
