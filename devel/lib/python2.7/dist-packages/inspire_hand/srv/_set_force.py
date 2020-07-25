# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inspire_hand/set_forceRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class set_forceRequest(genpy.Message):
  _md5sum = "3c8721b68bc7d5e3d85bff9ad38312ed"
  _type = "inspire_hand/set_forceRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 force0
int32 force1
int32 force2
int32 force3
int32 force4
int32 force5
"""
  __slots__ = ['force0','force1','force2','force3','force4','force5']
  _slot_types = ['int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       force0,force1,force2,force3,force4,force5

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(set_forceRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.force0 is None:
        self.force0 = 0
      if self.force1 is None:
        self.force1 = 0
      if self.force2 is None:
        self.force2 = 0
      if self.force3 is None:
        self.force3 = 0
      if self.force4 is None:
        self.force4 = 0
      if self.force5 is None:
        self.force5 = 0
    else:
      self.force0 = 0
      self.force1 = 0
      self.force2 = 0
      self.force3 = 0
      self.force4 = 0
      self.force5 = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6i().pack(_x.force0, _x.force1, _x.force2, _x.force3, _x.force4, _x.force5))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.force0, _x.force1, _x.force2, _x.force3, _x.force4, _x.force5,) = _get_struct_6i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6i().pack(_x.force0, _x.force1, _x.force2, _x.force3, _x.force4, _x.force5))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.force0, _x.force1, _x.force2, _x.force3, _x.force4, _x.force5,) = _get_struct_6i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6i = None
def _get_struct_6i():
    global _struct_6i
    if _struct_6i is None:
        _struct_6i = struct.Struct("<6i")
    return _struct_6i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inspire_hand/set_forceResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class set_forceResponse(genpy.Message):
  _md5sum = "6133e5998441599a96899c74dc63d85d"
  _type = "inspire_hand/set_forceResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool force_accepted

"""
  __slots__ = ['force_accepted']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       force_accepted

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(set_forceResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.force_accepted is None:
        self.force_accepted = False
    else:
      self.force_accepted = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.force_accepted))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.force_accepted,) = _get_struct_B().unpack(str[start:end])
      self.force_accepted = bool(self.force_accepted)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.force_accepted))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.force_accepted,) = _get_struct_B().unpack(str[start:end])
      self.force_accepted = bool(self.force_accepted)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class set_force(object):
  _type          = 'inspire_hand/set_force'
  _md5sum = 'f0c08814d46342da9135d3a2a4ea2666'
  _request_class  = set_forceRequest
  _response_class = set_forceResponse
