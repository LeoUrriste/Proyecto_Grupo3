from typing import Any
from django.db.models.query import QuerySet
from django.shortcuts import render, redirect
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic import ListView, DetailView
from django.urls import reverse_lazy, reverse
from django.http import HttpResponseRedirect
from .models import Categoria
from .models import Post
from apps.opiniones.models import Opinion
from apps.opiniones.forms import OpinionForm
# Create your views here.

class AgregarCategoria(CreateView):
    model = Categoria
    fields = ['nombre']
    template_name = 'post/agregar_categoria.html'
    success_url = reverse_lazy('inicio')
    
class AgregarPost(CreateView):
    model = Post
    fields = ['titulo','autor','texto','imagen','categoria']
    template_name = 'post/agregar_post.html'
    success_url = reverse_lazy('inicio')
    
    def form_valid(self,form):
        form.instance.colaborador = self.request.user
        return super().form_valid(form)

class ModificarPost(UpdateView):
    model = Post
    fields = ['titulo','autor','texto','imagen','categoria']
    template_name = 'post/agregar_post.html'
    success_url = reverse_lazy('inicio')
    
class ListarPost(ListView):
    model = Post
    template_name = 'post/listar_post.html'
    context_object_name = 'post'
    paginate_by = 3
    
    def get_context_data(self):
        context = super().get_context_data()
        categorias = Categoria.objects.all()
        context['categorias'] = categorias
        return context
    
    def get_queryset(self):
        query =self.request.GET.get('buscador')
        queryset = super().get_queryset()
        
        if query:
            queryset = queryset.filter(titulo__icontains = query)
        return queryset.order_by('titulo')
    
class EliminarPost(DeleteView):
    model = Post
    template_name = 'post/confirma_eliminar.html'
    success_url = 'inicio'
    
"""class PostDetalle(DetailView):
    model = Post
    template_name = 'post/post_detalle.html'
    context_object_name = 'post' """   
    
def post_detalle(request,id):
    post = Post.objects.get(id=id)
    opiniones = Opinion.objects.filter(post=id)
    form = OpinionForm(request.POST)
    
    if form.is_valid():
        if request.user.is_authenticated:
            aux = form.save(commit=False)
            aux.post = post
            aux.usuario = request.user
            aux.save()
            detalle_url = reverse('apps.post:detalle_post', kwargs={'id': post.id})
            return HttpResponseRedirect(detalle_url)
        else:
            return redirect('apps.usuarios:iniciar_sesion')
        
    contexto = {
        'post' : post,
        'form': form,
        'opiniones': opiniones
    }
    template_name = 'post/post_detalle.html'
    return render(request,template_name,contexto)

def listar_por_categoria(request, categoria):
    categoria = Categoria.objects.filter(nombre=categoria)
    post = Post.objects.filter(categoria=categoria[0].id).order_by('fecha_agregado')
    categorias = Categoria.objects.all()
    template_name = 'post/listar_post.html'
    contexto = {
        'post' : post,
        'categorias' : categorias
    }
    return render(request,template_name,contexto)

def ordenar_por(request):
    orden = request.GET.get('orden','')
    if orden == 'fecha':
        post = Post.objects.order_by('fecha_agregado')
    elif orden == 'titulo':
        post = Post.objects.order_by('titulo')
    else:
        post = Post.objects.all()
    template_name = 'post/listar_post.html'
    contexto = {
        'post' : post
    }
    return render(request,template_name, contexto)