# This file was automatically generated by SWIG (http://www.swig.org).
# Version 2.0.7
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.



from sys import version_info
if version_info >= (2,6,0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_dparser_swigc', [dirname(__file__)])
        except ImportError:
            import _dparser_swigc
            return _dparser_swigc
        if fp is not None:
            try:
                _mod = imp.load_module('_dparser_swigc', fp, pathname, description)
            finally:
                fp.close()
            return _mod
    _dparser_swigc = swig_import_helper()
    del swig_import_helper
else:
    import _dparser_swigc
del version_info
try:
    _swig_property = property
except NameError:
    pass # Python < 2.2 doesn't have 'property'.
def _swig_setattr_nondynamic(self,class_type,name,value,static=1):
    if (name == "thisown"): return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name,None)
    if method: return method(self,value)
    if (not static):
        self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)

def _swig_setattr(self,class_type,name,value):
    return _swig_setattr_nondynamic(self,class_type,name,value,0)

def _swig_getattr(self,class_type,name):
    if (name == "thisown"): return self.this.own()
    method = class_type.__swig_getmethods__.get(name,None)
    if method: return method(self)
    raise AttributeError(name)

def _swig_repr(self):
    try: strthis = "proxy of " + self.this.__repr__()
    except: strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except AttributeError:
    class _object : pass
    _newclass = 0


class user_pyobjects(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, user_pyobjects, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, user_pyobjects, name)
    __repr__ = _swig_repr
    __swig_setmethods__["t"] = _dparser_swigc.user_pyobjects_t_set
    __swig_getmethods__["t"] = _dparser_swigc.user_pyobjects_t_get
    if _newclass:t = _swig_property(_dparser_swigc.user_pyobjects_t_get, _dparser_swigc.user_pyobjects_t_set)
    __swig_setmethods__["s"] = _dparser_swigc.user_pyobjects_s_set
    __swig_getmethods__["s"] = _dparser_swigc.user_pyobjects_s_get
    if _newclass:s = _swig_property(_dparser_swigc.user_pyobjects_s_get, _dparser_swigc.user_pyobjects_s_set)
    __swig_setmethods__["inced_global_state"] = _dparser_swigc.user_pyobjects_inced_global_state_set
    __swig_getmethods__["inced_global_state"] = _dparser_swigc.user_pyobjects_inced_global_state_get
    if _newclass:inced_global_state = _swig_property(_dparser_swigc.user_pyobjects_inced_global_state_get, _dparser_swigc.user_pyobjects_inced_global_state_set)
    def __init__(self): 
        this = _dparser_swigc.new_user_pyobjects()
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _dparser_swigc.delete_user_pyobjects
    __del__ = lambda self : None;
user_pyobjects_swigregister = _dparser_swigc.user_pyobjects_swigregister
user_pyobjects_swigregister(user_pyobjects)


def my_d_loc_t_s_set(*args):
  return _dparser_swigc.my_d_loc_t_s_set(*args)
my_d_loc_t_s_set = _dparser_swigc.my_d_loc_t_s_set

def my_d_loc_t_s_get(*args):
  return _dparser_swigc.my_d_loc_t_s_get(*args)
my_d_loc_t_s_get = _dparser_swigc.my_d_loc_t_s_get

def my_D_ParseNode_end_set(*args):
  return _dparser_swigc.my_D_ParseNode_end_set(*args)
my_D_ParseNode_end_set = _dparser_swigc.my_D_ParseNode_end_set

def my_D_ParseNode_end_skip_set(*args):
  return _dparser_swigc.my_D_ParseNode_end_skip_set(*args)
my_D_ParseNode_end_skip_set = _dparser_swigc.my_D_ParseNode_end_skip_set

def my_D_ParseNode_end_get(*args):
  return _dparser_swigc.my_D_ParseNode_end_get(*args)
my_D_ParseNode_end_get = _dparser_swigc.my_D_ParseNode_end_get

def my_D_ParseNode_end_skip_get(*args):
  return _dparser_swigc.my_D_ParseNode_end_skip_get(*args)
my_D_ParseNode_end_skip_get = _dparser_swigc.my_D_ParseNode_end_skip_get

def my_D_ParseNode_symbol_get(*args):
  return _dparser_swigc.my_D_ParseNode_symbol_get(*args)
my_D_ParseNode_symbol_get = _dparser_swigc.my_D_ParseNode_symbol_get

def remove_parse_tree_viewer(*args):
  return _dparser_swigc.remove_parse_tree_viewer(*args)
remove_parse_tree_viewer = _dparser_swigc.remove_parse_tree_viewer

def add_parse_tree_viewer(*args):
  return _dparser_swigc.add_parse_tree_viewer(*args)
add_parse_tree_viewer = _dparser_swigc.add_parse_tree_viewer

def del_parser(*args):
  return _dparser_swigc.del_parser(*args)
del_parser = _dparser_swigc.del_parser

def make_parser(*args):
  return _dparser_swigc.make_parser(*args)
make_parser = _dparser_swigc.make_parser

def run_parser(*args):
  return _dparser_swigc.run_parser(*args)
run_parser = _dparser_swigc.run_parser

def make_tables(*args):
  return _dparser_swigc.make_tables(*args)
make_tables = _dparser_swigc.make_tables

def load_parser_tables(*args):
  return _dparser_swigc.load_parser_tables(*args)
load_parser_tables = _dparser_swigc.load_parser_tables

def unload_parser_tables(*args):
  return _dparser_swigc.unload_parser_tables(*args)
unload_parser_tables = _dparser_swigc.unload_parser_tables
class d_loc_t(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, d_loc_t, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, d_loc_t, name)
    __repr__ = _swig_repr
    __swig_setmethods__["s"] = _dparser_swigc.d_loc_t_s_set
    __swig_getmethods__["s"] = _dparser_swigc.d_loc_t_s_get
    if _newclass:s = _swig_property(_dparser_swigc.d_loc_t_s_get, _dparser_swigc.d_loc_t_s_set)
    __swig_setmethods__["ws"] = _dparser_swigc.d_loc_t_ws_set
    __swig_getmethods__["ws"] = _dparser_swigc.d_loc_t_ws_get
    if _newclass:ws = _swig_property(_dparser_swigc.d_loc_t_ws_get, _dparser_swigc.d_loc_t_ws_set)
    __swig_setmethods__["col"] = _dparser_swigc.d_loc_t_col_set
    __swig_getmethods__["col"] = _dparser_swigc.d_loc_t_col_get
    if _newclass:col = _swig_property(_dparser_swigc.d_loc_t_col_get, _dparser_swigc.d_loc_t_col_set)
    __swig_setmethods__["line"] = _dparser_swigc.d_loc_t_line_set
    __swig_getmethods__["line"] = _dparser_swigc.d_loc_t_line_get
    if _newclass:line = _swig_property(_dparser_swigc.d_loc_t_line_get, _dparser_swigc.d_loc_t_line_set)
    def __init__(self): 
        this = _dparser_swigc.new_d_loc_t()
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _dparser_swigc.delete_d_loc_t
    __del__ = lambda self : None;
d_loc_t_swigregister = _dparser_swigc.d_loc_t_swigregister
d_loc_t_swigregister(d_loc_t)

class D_ParseNode(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, D_ParseNode, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, D_ParseNode, name)
    __repr__ = _swig_repr
    __swig_setmethods__["symbol"] = _dparser_swigc.D_ParseNode_symbol_set
    __swig_getmethods__["symbol"] = _dparser_swigc.D_ParseNode_symbol_get
    if _newclass:symbol = _swig_property(_dparser_swigc.D_ParseNode_symbol_get, _dparser_swigc.D_ParseNode_symbol_set)
    __swig_setmethods__["start_loc"] = _dparser_swigc.D_ParseNode_start_loc_set
    __swig_getmethods__["start_loc"] = _dparser_swigc.D_ParseNode_start_loc_get
    if _newclass:start_loc = _swig_property(_dparser_swigc.D_ParseNode_start_loc_get, _dparser_swigc.D_ParseNode_start_loc_set)
    __swig_setmethods__["globals"] = _dparser_swigc.D_ParseNode_globals_set
    __swig_getmethods__["globals"] = _dparser_swigc.D_ParseNode_globals_get
    if _newclass:globals = _swig_property(_dparser_swigc.D_ParseNode_globals_get, _dparser_swigc.D_ParseNode_globals_set)
    __swig_setmethods__["user"] = _dparser_swigc.D_ParseNode_user_set
    __swig_getmethods__["user"] = _dparser_swigc.D_ParseNode_user_get
    if _newclass:user = _swig_property(_dparser_swigc.D_ParseNode_user_get, _dparser_swigc.D_ParseNode_user_set)
    def __init__(self): 
        this = _dparser_swigc.new_D_ParseNode()
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _dparser_swigc.delete_D_ParseNode
    __del__ = lambda self : None;
D_ParseNode_swigregister = _dparser_swigc.D_ParseNode_swigregister
D_ParseNode_swigregister(D_ParseNode)


def d_get_child(*args):
  return _dparser_swigc.d_get_child(*args)
d_get_child = _dparser_swigc.d_get_child

def d_find_in_tree(*args):
  return _dparser_swigc.d_find_in_tree(*args)
d_find_in_tree = _dparser_swigc.d_find_in_tree

def d_get_number_of_children(*args):
  return _dparser_swigc.d_get_number_of_children(*args)
d_get_number_of_children = _dparser_swigc.d_get_number_of_children
# This file is compatible with both classic and new-style classes.


