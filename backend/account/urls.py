from django.urls import path
from rest_framework_simplejwt.views import TokenRefreshView

from .views import UserCreate, UserList, UserDetail, UserUpdate, TokenPair

urlpatterns = [
    path('', UserList.as_view(), name='user-list'),
    path('create/', UserCreate.as_view(), name='create-user'),
    path('<int:pk>/', UserDetail.as_view(), name='retrieve-user'),
    path('update/<int:pk>/', UserUpdate.as_view(), name='update-user'),
    path('token/', TokenPair.as_view(), name='obtain-token'),
    path('token/refresh/', TokenRefreshView.as_view(), name='refresh-token'),
]
