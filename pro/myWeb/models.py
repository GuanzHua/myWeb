from django.db import models
from urllib import request
from urllib.parse import quote
import string

# Create your models here.


# 类别模型
class Category(models.Model):
    title = models.CharField(max_length=50)
    isDelete = models.BooleanField(default=False)
    def __str__(self):
        return "%s"%(self.title)

# 页面数据模型
class Python(models.Model):
    title = models.CharField(max_length=50)
    images = models.CharField(max_length=100,blank=True,null=True)
    pdf = models.CharField(max_length=100,blank=True,null=True)
    code = models.CharField(max_length=3000,blank=True,null=True)
    remark_id = models.CharField(max_length=50)
    isDelete = models.BooleanField(default=False)
    category = models.ForeignKey("Category")

    #code代码读取函数
    def _code(self):
        path = quote(self.code, safe=string.printable)
        with request.urlopen(path) as f:
            data = f.read()
            return data


    getcode = property(_code)  # 将类方法包装为属性


class Html(models.Model):
    title = models.CharField(max_length=50)
    images = models.CharField(max_length=100,blank=True,null=True)
    pdf = models.CharField(max_length=100,blank=True,null=True)
    code = models.CharField(max_length=30000,blank=True,null=True)
    remark_id = models.CharField(max_length=50)
    isDelete = models.BooleanField(default=False)
    category = models.ForeignKey("Category")

    # code代码读取函数
    def _code(self):
        path = quote(self.code, safe=string.printable)
        with request.urlopen(path) as f:
            data = f.read()
            return data

    getcode = property(_code)  # 将类方法包装为属性

class Django(models.Model):
    title = models.CharField(max_length=50)
    images = models.CharField(max_length=100,blank=True,null=True)
    pdf = models.CharField(max_length=100,blank=True,null=True)
    code = models.CharField(max_length=3000,blank=True,null=True)
    remark_id = models.CharField(max_length=50)
    isDelete = models.BooleanField(default=False)
    category = models.ForeignKey("Category")

    # code代码读取函数
    def _code(self):
        path = quote(self.code, safe=string.printable)
        with request.urlopen(path) as f:
            data = f.read()
            return data

    getcode = property(_code)  # 将类方法包装为属性

class Tornado(models.Model):
    title = models.CharField(max_length=50)
    images = models.CharField(max_length=100,blank=True,null=True)
    pdf = models.CharField(max_length=100,blank=True,null=True)
    code = models.CharField(max_length=3000,blank=True,null=True)
    remark_id = models.CharField(max_length=50)
    isDelete = models.BooleanField(default=False)
    category = models.ForeignKey("Category")

    # code代码读取函数
    def _code(self):
        path = quote(self.code, safe=string.printable)
        with request.urlopen(path) as f:
            data = f.read()
            return data

    getcode = property(_code)  # 将类方法包装为属性































