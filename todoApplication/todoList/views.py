from django.shortcuts import render, get_object_or_404
from .models import TodoListItem
from django.http import HttpResponseRedirect
# Create your views here.

def todoappview(request):
    all_todo_items=TodoListItem.objects.all()
    return render(request,'todo.html',{'all_items':all_todo_items})

def defaultview(request):
    return render(request,'index.html',{})

def addTodoView(request):
    x=request.POST['content']
    new_item=TodoListItem(content=x)
    new_item.save()
    return HttpResponseRedirect('/todoapp/')

def deleteTodoView(request,i):
    y=TodoListItem.objects.get(id=i)
    y.delete()
    return HttpResponseRedirect('/todoapp/')


def taskCompletionStatus(request,i):
    task=TodoListItem.objects.get(id=i)
    task.completed=not task.completed
    task.save()
    return HttpResponseRedirect('/todoapp/')