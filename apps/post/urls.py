from django.urls import path

from .views import AgregarCategoria, AgregarPost, ListarPost, ModificarPost, EliminarPost, post_detalle, listar_por_categoria, ordenar_por
app_name = 'apps.post'

urlpatterns = [
    path("agregar_categoria/", AgregarCategoria.as_view(), name='agregar_categoria'),
    path("agregar_post/", AgregarPost.as_view(), name='agregar_post'),
    path("listar_post/", ListarPost.as_view(), name='listar_post'),
    path('modificar_post/<int:pk>', ModificarPost.as_view(), name='modificar_post'),
    path('eliminar_post/<int:pk>', EliminarPost.as_view(), name='eliminar_post'),
    path('detalle_post/<int:id>', post_detalle, name='detalle_post'),
    path("listar_por_categoria/<str:categoria>", listar_por_categoria, name='listar_por_categoria'),
    path("ordenar_por/", ordenar_por, name='ordenar_por'),
]
