from django.db import models
from django.contrib.auth.models import User
from .models import Booking, Menu

# Create your models here.

class Category(models.Model):
    slug = models.SlugField()
    title = models.CharField(max_length=255, db_index=True)
    def __str__(self):
        return self.title

class MenuItem(models.Model):
    title = models.CharField(max_length=255, db_index=True)
    price = models.DecimalField(max_digits=6, decimal_places=2, db_index=True)
    featured = models.BooleanField(db_index=True)
    category = models.ForeignKey(Category, on_delete=models.PROTECT)
    def __str__(self):
        return self.title

class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    menuitem = models.ForeignKey(MenuItem, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    unit_price = models.DecimalField(max_digits=6, decimal_places=2)
    price = models.DecimalField(max_digits=6, decimal_places=2)

    class Meta():
        unique_together = ('menuitem','user')
    def __str__(self):
        return self.user

class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    delivery_crew = models.ForeignKey(User, on_delete=models.SET_NULL, related_name="delivery_crew", null=True, limit_choices_to={'groups__name': "Delivery crew"})
    status = models.BooleanField(db_index=True, default=0)
    total = models.DecimalField(max_digits=6, decimal_places=2)
    date = models.DateField(db_index=True)

    def __str__(self):
        return str(self.id)


class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    menuitem = models.ForeignKey(MenuItem, on_delete=models.CASCADE)
    quantity = models.SmallIntegerField()
    #unit_price = models.DecimalField(max_digits=6, decimal_places=2)
    #price = models.DecimalField(max_digits=6,decimal_places=2)

    class Meta():
        unique_together = ('order','menuitem')

# 新增的


from django.db import models

class Booking(models.Model):
    name = models.CharField(max_length=255)
    no_of_guests = models.IntegerField()
    booking_date = models.DateField()
    
    def __str__(self):
        return self.name

class MenuItem(models.Model):
    dish = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=5, decimal_places=2)
    inventory = models.IntegerField()
    
    def __str__(self):
        return f'{self.dish} : {self.price}'




# class Booking(models.Model):
#     name = models.CharField(max_length=255)
#     no_of_guests = models.IntegerField()
#     booking_date = models.DateField()
    
#     def __str__(self):
#         return self.name
    
# class MenuItem(models.Model):
#     dish = models.CharField(max_length=50)
#     price = models.DecimalField(max_digits=5, decimal_places=2)
#     inventory = models.IntegerField()
    
#     def __str__(self):
#         return f'{self.dish} : {self.price}'