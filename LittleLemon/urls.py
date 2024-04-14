"""LittleLemon URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""






# 原有版本
# from django.contrib import admin
# from django.urls import path, include
# from django.urls import path
# from . import views

# urlpatterns = [
#     path('admin/', admin.site.urls),
#     path('api/', include('LittleLemonAPI.urls')),
#     # path('my_endpoint/', views.MyEndpointView.as_view(), name='my_endpoint'),
    
# ]


# from django.contrib import admin
# from django.urls import path, include
# from rest_framework import routers
# from restaurant import views
# from rest_framework.authtoken.views import obtain_auth_token
# from restaurant.views import index
# router = routers.DefaultRouter()
# router.register(r'tables', views.BookingViewSet)


# from django.contrib import admin
# from django.urls import path, include
# from rest_framework import routers
# from LittleLemonAPI import views
# from rest_framework.authtoken.views import obtain_auth_token
# from LittleLemonAPI.views import index
# router = routers.DefaultRouter()
# router.register(r'tables', views.BookingViewSet)
# from django.urls import path
# from . import views


# urlpatterns = [
#     # path('', index),
#     path('admin/', admin.site.urls),
#     path('api/menu/', include('LittleLemonAPI.urls')),
#     path('api/booking/', include(router.urls)),
#     path('auth/', include('djoser.urls')),
#     path('auth/', include('djoser.urls.authtoken')),
#     path('api-token-auth', obtain_auth_token),

#     # 將根路徑指向 index 視圖
#     path('', views.index, name='index'),  
# ]

# 修改v 3.0
from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
# from LittleLemonAPI.views import BookingViewSet
from .views import BookingViewSet

from LittleLemonAPI import views

router = DefaultRouter()

router.register(r'tables', views.BookingViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    # path('', include('LittleLemonAPI.urls')),
    path('LittleLemonAPI/',include('LittleLemonAPI.urls')),
    path('auth/', include('djoser.urls')),
    path('auth/', include('djoser.urls.authtoken')),
    path('LittleLemonAPI/booking/', include(router.urls)),
]