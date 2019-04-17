from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from .models import *
from django.shortcuts import redirect

#python数据操作
def python_items(pagename):
    itemlist = Python.objects.filter(remark_id= pagename)
    return itemlist
def python_catalog(pagename):
    catalog = Python.objects.filter(remark_id = pagename)[0]    #取出所属页面第一个元素作为目录显示
    return catalog

#Html数据操作
def Html_items(pagename):
    itemlist = Html.objects.filter(remark_id= pagename)
    return itemlist
def Html_catalog(pagename):
    catalog = Html.objects.filter(remark_id = pagename)[0]    #取出所属页面第一个元素作为目录显示
    return catalog

#Django数据操作
def Django_items(pagename):
    itemlist = Django.objects.filter(remark_id= pagename)
    return itemlist
def Django_catalog(pagename):
    catalog = Django.objects.filter(remark_id = pagename)[0]    #取出所属页面第一个元素作为目录显示
    return catalog

#Tornado数据操作
def Tornado_items(pagename):
    itemlist = Tornado.objects.filter(remark_id= pagename)
    return itemlist
def Tornado_catalog(pagename):
    catalog = Tornado.objects.filter(remark_id = pagename)[0]    #取出所属页面第一个元素作为目录显示
    return catalog








#页面视图
def index(request):
    return render(request, 'myWeb/index.html')

def admin(request):
    return redirect('/myWeb/admin')



#python
def first_python(request):
    pagename = '第一个python程序与数据存储'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/first-python.html', result)

def variable_operator(request):
    pagename = 'print、input、变量和运算符'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/variable&operator.html', result)

def string_while(request):
    pagename = '字符串与循环中的while'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/string&while.html', result)

def boolean_list_trutle(request):
    pagename = '布尔值、List、条件循环语句与trutle'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/boolean&list&trutle.html', result)

def tuple_string_dict(request):
    pagename = '元组、字符串和字典'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/tuple&string&dict.html', result)

def function(request):
    pagename = '函数基础'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/function.html', result)

def decorator_partial_function(request):
    pagename = '装饰器、偏函数、作用域、异常处理与文件读写'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/decorator&partial&function.html', result)

def os_windows(request):
    pagename = 'OS模块、窗口控制、内存修改与语音'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/os&windows.html', result)

def recursion_time(request):
    pagename = '递归与时间相关模块'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/recursion&time.html', result)

def modular_object_oriented(request):
    pagename = '模块的使用与面向对象思想简介'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/modular&object-oriented.html', result)

def object_oriented(request):
    pagename = '面向对象思想的编程'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/object-oriented.html', result)

def object_oriented_email(request):
    pagename = '面向对象提升与收发邮件'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/object-oriented&email.html', result)

def tkinter_1(request):
    pagename = 'Tkinter与简易银行系统实战'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/tkinter-1.html', result)

def tkinter_2(request):
    pagename = 'Tkinter'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/tkinter-2.html', result)

def automated_office(request):
    pagename = '自动化办公与鼠标键盘模拟'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/automated-office.html', result)

def py2_py3_test(request):
    pagename = 'python2与python3的区别和测试'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/py2&py3&test.html', result)

def regular_expression(request):
    pagename = '正则表达式'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/regular-expression.html', result)

def urllib_json(request):
    pagename = '爬虫简介与Json'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/urllib&json.html', result)

def network_program(request):
    pagename = '网络编程'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/network-program.html', result)

def process(request):
    pagename = '进程与线程'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/process.html', result)

def thread_coroutine(request):
    pagename = '线程与协程'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/thread&coroutine.html', result)

def mysql(request):
    pagename = 'Mysql'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/mysql.html', result)

def mongodb_redis(request):
    pagename = 'MongoDB与Redis'
    result = {'catalog':python_catalog(pagename), 'items':python_items(pagename)}
    return render(request, 'myWeb/Python/mongodb&redis.html', result)





#HTML
def HTML_CSS_base(request):
    pagename = 'HTML与CSS基础'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/HTML&CSS-base.html', result)

def HTML_CSS_promote(request):
    pagename = 'HTML与CSS提升'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/HTML&CSS-promote.html', result)

def JavaScript_base(request):
    pagename = 'JavaScript基础'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/JavaScript-base.html', result)

def JavaScript_promote(request):
    pagename = 'JavaScript提升'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/JavaScript-promote.html', result)

def jQuery_base(request):
    pagename = 'JQuery基础'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/jQuery-base.html', result)

def jQuery_promote(request):
    pagename = 'JQuery提升'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/jQuery-promote.html', result)

def H5C3_base(request):
    pagename = 'HTML5与CSS3基础'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/H5C3-base.html', result)

def H5C3_promote(request):
    pagename = 'HTML5与CSS3提升'
    result = {'catalog':Html_catalog(pagename), 'items':Html_items(pagename)}
    return render(request, 'myWeb/HTML/H5C3-promote.html', result)



#Django
def Django_BaseProcess(request):
    pagename = 'Django基本流程'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/Django-BaseProcess.html', result)

def Django_Model(request):
    pagename = 'Django中的模型'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/Django-Model.html', result)

def Django_Views(request):
    pagename = 'Django中的视图'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/Django-Views.html', result)

def Django_Template(request):
    pagename = 'Django中的模板'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/Django-Template.html', result)

def Django_Senior(request):
    pagename = 'Django的高级使用'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/Django-Senior.html', result)

def GitHub(request):
    pagename = 'GitHub的使用'
    result = {'catalog':Django_catalog(pagename), 'items':Django_items(pagename)}
    return render(request, 'myWeb/Django/GitHub.html', result)



#Tornado
def Tornado_base(request):
    pagename = 'Tornado基础流程'
    result = {'catalog':Tornado_catalog(pagename), 'items':Tornado_items(pagename)}
    return render(request, 'myWeb/Tornado/Tornado-base.html', result)

def Request_Response(request):
    pagename = '请求与响应'
    result = {'catalog':Tornado_catalog(pagename), 'items':Tornado_items(pagename)}
    return render(request, 'myWeb/Tornado/Request&Response.html', result)

def Template_Database_Sequence(request):
    pagename = '模板和数据库以及接口的调用顺序'
    result = {'catalog':Tornado_catalog(pagename), 'items':Tornado_items(pagename)}
    return render(request, 'myWeb/Tornado/Template&Database&Sequence.html', result)

def Application_Security(request):
    pagename = '应用安全'
    result = {'catalog':Tornado_catalog(pagename), 'items':Tornado_items(pagename)}
    return render(request, 'myWeb/Tornado/Application-Security.html', result)

def Synchronization_Asynchronization_WebSocket(request):
    pagename = '同步与异步 + 使用WebSocket实现在线聊天'
    result = {'catalog':Tornado_catalog(pagename), 'items':Tornado_items(pagename)}
    return render(request, 'myWeb/Tornado/Synchronization&Asynchronization&WebSocket.html', result)






