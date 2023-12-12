from django.shortcuts import render

def index(request):
    template_name = 'index.html'
    context = {'valor': 50 }
    return render(request, template_name, context)

def contacto(request):
    template_name = 'contacto.html'
    nombres = ['Informatorio']
    context = {'nombres': nombres }
    return render(request, template_name, context)

def acerca_de(request):
    template_name = 'acerca_de.html'
    nombres = ['Informatorio']
    context = {'nombres': nombres }
    return render(request, template_name, context)