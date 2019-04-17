from django.contrib import admin
from .models import Category, Python, Html, Django, Tornado

# Register your models here.

admin.site.site_title="Guanzh"
admin.site.site_header="Guanzh管理"


#自定义管理页面
@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    def pk_state(self):
        return self.pk

    def title_state(self):
        return self.title

    def delete_state(self):
        if self.isDelete:
            return "是"
        else:
            return "否"

    #设置页面列名称
    pk_state.short_description = u"序  号"
    title_state.short_description = u"类  别"
    delete_state.short_description = u"是否删除？"

    #设置页面显示信息
    list_display = [pk_state, title_state, delete_state]
    list_display_links = [title_state]
    list_filter = ['title']
    search_fields = ['title']
    list_per_page = 10


@admin.register(Python)
class PythonAdmin(admin.ModelAdmin):
    def pk_state(self):
        return self.pk

    def title_state(self):
        return self.title

    def images_state(self):
        return self.images

    def pdf_state(self):
        return self.pdf

    def code_state(self):
        return self.code

    def mark_state(self):
        return self.remark_id

    def category_state(self):
        return self.category

    def delete_state(self):
        if self.isDelete:
            return "是"
        else:
            return "否"

    pk_state.short_description = u"序  号"
    title_state.short_description = u"类  别"
    images_state.short_description = u"图片路径"
    pdf_state.short_description = u"pdf路径"
    code_state.short_description = u"代码段路径"
    mark_state.short_description = u"所属页面"
    category_state.short_description = u"所属类别"
    delete_state.short_description = u"是否删除？"


    #列表页属性
    list_display = [pk_state, title_state, images_state, pdf_state, code_state, mark_state, category_state, delete_state]
    list_display_links = [title_state]
    list_filter = ['remark_id']
    search_fields = ['title']
    list_per_page = 10

@admin.register(Html)
class HtmlAdmin(admin.ModelAdmin):
    def pk_state(self):
        return self.pk

    def title_state(self):
        return self.title

    def images_state(self):
        return self.images

    def pdf_state(self):
        return self.pdf

    def code_state(self):
        return self.code

    def mark_state(self):
        return self.remark_id

    def category_state(self):
        return self.category

    def delete_state(self):
        if self.isDelete:
            return "是"
        else:
            return "否"

    pk_state.short_description = u"序  号"
    title_state.short_description = u"类  别"
    images_state.short_description = u"图片路径"
    pdf_state.short_description = u"pdf路径"
    code_state.short_description = u"代码段路径"
    mark_state.short_description = u"所属页面"
    category_state.short_description = u"所属类别"
    delete_state.short_description = u"是否删除？"


    #列表页属性
    list_display = [pk_state, title_state, images_state, pdf_state, code_state, mark_state, category_state, delete_state]
    list_display_links = [title_state]
    list_filter = ['remark_id']
    search_fields = ['title']
    list_per_page = 10

@admin.register(Django)
class HtmlAdmin(admin.ModelAdmin):
    def pk_state(self):
        return self.pk

    def title_state(self):
        return self.title

    def images_state(self):
        return self.images

    def pdf_state(self):
        return self.pdf

    def code_state(self):
        return self.code

    def mark_state(self):
        return self.remark_id

    def category_state(self):
        return self.category

    def delete_state(self):
        if self.isDelete:
            return "是"
        else:
            return "否"

    pk_state.short_description = u"序  号"
    title_state.short_description = u"类  别"
    images_state.short_description = u"图片路径"
    pdf_state.short_description = u"pdf路径"
    code_state.short_description = u"代码段路径"
    mark_state.short_description = u"所属页面"
    category_state.short_description = u"所属类别"
    delete_state.short_description = u"是否删除？"


    #列表页属性
    list_display = [pk_state, title_state, images_state, pdf_state, code_state, mark_state, category_state, delete_state]
    list_display_links = [title_state]
    list_filter = ['remark_id']
    search_fields = ['title']
    list_per_page = 10

@admin.register(Tornado)
class HtmlAdmin(admin.ModelAdmin):
    def pk_state(self):
        return self.pk

    def title_state(self):
        return self.title

    def images_state(self):
        return self.images

    def pdf_state(self):
        return self.pdf

    def code_state(self):
        return self.code

    def mark_state(self):
        return self.remark_id

    def category_state(self):
        return self.category

    def delete_state(self):
        if self.isDelete:
            return "是"
        else:
            return "否"

    pk_state.short_description = u"序  号"
    title_state.short_description = u"类  别"
    images_state.short_description = u"图片路径"
    pdf_state.short_description = u"pdf路径"
    code_state.short_description = u"代码段路径"
    mark_state.short_description = u"所属页面"
    category_state.short_description = u"所属类别"
    delete_state.short_description = u"是否删除？"


    #列表页属性
    list_display = [pk_state, title_state, images_state, pdf_state, code_state, mark_state, category_state, delete_state]
    list_display_links = [title_state]
    list_filter = ['remark_id']
    search_fields = ['title']
    list_per_page = 10






