from django.urls import path
from .views import AgregarOpinion, ModificarOpinion, EliminarOpinion


app_name = 'apps.opiniones'

urlpatterns = [
    path('agregar_opiniones/', AgregarOpinion, name='agregar_opiniones'),
    path('modificar_opiniones/<int:pk>',ModificarOpinion.as_view(), name='modificar_opiniones'),
    path('eliminar_opinion/<int:pk>',EliminarOpinion.as_view(), name='eliminar_opinion'),
]
