from django.urls import path
from rest_framework_simplejwt.views import TokenRefreshView

from .views import UserList, TokenPair

urlpatterns = [
    path('', UserList.as_view()),
    path('token/', TokenPair.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
]
