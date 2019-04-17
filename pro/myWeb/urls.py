from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^admin/$',views.admin, name="admin"),

    #Python
    url(r'^Python/first-python/$', views.first_python, name="first_python"),
    url(r'^Python/variable&operator/$', views.variable_operator, name="variable_operator"),
    url(r'^Python/string&while/$', views.string_while, name="string_while"),
    url(r'^Python/boolean&list&trutle/$', views.boolean_list_trutle, name="boolean_list_trutle"),
    url(r'^Python/tuple&string&dict/$', views.tuple_string_dict, name="tuple_string_dict"),
    url(r'^Python/function/$', views.function, name="function"),
    url(r'^Python/decorator&partial&function/$', views.decorator_partial_function, name="decorator_partial_function"),
    url(r'^Python/os&windows/$', views.os_windows, name="os_windows"),
    url(r'^Python/recursion&time/$', views.recursion_time, name="recursion_time"),
    url(r'^Python/modular&object-oriented/$', views.modular_object_oriented, name="modular_object_oriented"),
    url(r'^Python/object-oriented/$', views.object_oriented, name="object_oriented"),
    url(r'^Python/object-oriented&email/$', views.object_oriented_email, name="object_oriented_email"),
    url(r'^Python/tkinter-1/$', views.tkinter_1, name="tkinter_1"),
    url(r'^Python/tkinter-2/$', views.tkinter_2, name="tkinter_2"),
    url(r'^Python/automated-office/$', views.automated_office, name="automated_office"),
    url(r'^Python/py2&py3&test/$', views.py2_py3_test, name="py2_py3_test"),
    url(r'^Python/regular-expression/$', views.regular_expression, name="regular_expression"),
    url(r'^Python/urllib&json/$', views.urllib_json, name="urllib_json"),
    url(r'^Python/network-program/$', views.network_program, name="network_program"),
    url(r'^Python/process/$', views.process, name="process"),
    url(r'^Python/thread&coroutine/$', views.thread_coroutine, name="thread_coroutine"),
    url(r'^Python/mysql/$', views.mysql, name="mysql"),
    url(r'^Python/mongodb&redis/$', views.mongodb_redis, name="mongodb_redis"),

    #HTML
    url(r'^HTML/HTML&CSS-base/$', views.HTML_CSS_base, name="HTML_CSS_base"),
    url(r'^HTML/HTML&CSS-promote/$', views.HTML_CSS_promote, name="HTML_CSS_promote"),
    url(r'^HTML/JavaScript-base/$', views.JavaScript_base, name="JavaScript_base"),
    url(r'^HTML/JavaScript-promote/$', views.JavaScript_promote, name="JavaScript_promote"),
    url(r'^HTML/jQuery-base/$', views.jQuery_base, name="jQuery_base"),
    url(r'^HTML/jQuery-promote/$', views.jQuery_promote, name="jQuery_promote"),
    url(r'^HTML/H5C3-base/$', views.H5C3_base, name="H5C3_base"),
    url(r'^HTML/H5C3-promote/$', views.H5C3_promote, name="H5C3_promote"),

    #Django
    url(r'^Django/Django-BaseProcess/$', views.Django_BaseProcess, name="Django_BaseProcess"),
    url(r'^Django/Django-Model/$', views.Django_Model, name="Django_Model"),
    url(r'^Django/Django-Views/$', views.Django_Views, name="Django_Views"),
    url(r'^Django/Django-Template/$', views.Django_Template, name="Django_Template"),
    url(r'^Django/Django-Senior/$', views.Django_Senior, name="Django_Senior"),
    url(r'^Django/GitHub/$', views.GitHub, name="GitHub"),

    #Tornado
    url(r'^Tornado/Tornado-base/$', views.Tornado_base, name="Tornado_base"),
    url(r'^Tornado/Request&Response/$', views.Request_Response, name="Request_Response"),
    url(r'^Tornado/Template&Database&Sequence/$', views.Template_Database_Sequence, name="Template_Database_Sequence"),
    url(r'^Tornado/Application-Security/$', views.Application_Security, name="Application_Security"),
    url(r'^Tornado/Synchronization&Asynchronization&WebSocket/$', views.Synchronization_Asynchronization_WebSocket, name="Synchronization_Asynchronization_WebSocket"),


]