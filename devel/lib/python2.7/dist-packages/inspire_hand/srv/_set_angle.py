# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from inspire_hand/set_angleRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class set_angleRequest(genpy.Message):
  _md5sum = "5857a59881cd283e6c5a491fae619822"
  _type = "inspire_hand/set_angleRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 angle0
int32 angle1
int32 angle2
int32 angle3
int32 angle4
int32 angle5
"""
  __slots__ = ['angle0','angle1','angle2','angle3','angle4','angle5']
  _slot_types = ['int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       angle0,angle1,angle2,angle3,angle4,angle5

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(set_angleRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.angle0 is None:
        self.angle0 = 0
      if self.angle1 is None:
        self.angle1 = 0
      if self.angle2 is None:
        self.angle2 = 0
      if self.angle3 is None:
        self.angle3 = 0
      if self.angle4 is None:
        self.angle4 = 0
      if self.angle5 is None:
        self.angle5 = 0
    else:
      self.angle0 = 0
      self.angle1 = 0
      self.angle2 = 0
      self.angle3 = 0
      self.angle4 = 0
      self.angle5 = 0

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
      buff.write(_get_struct_6i().pack(_x.angle0, _x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.angle5))
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
      (_x.angle0, _x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.angle5,) = _get_struct_6i().unpack(str[start:end])
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
      buff.write(_get_struct_6i().pack(_x.angle0, _x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.angle5))
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
      (_x.angle0, _x.angle1, _x.angle2, _x.angle3, _x.angle4, _x.angle5,) = _get_struct_6i().unpack(str[start:end])
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
"""autogenerated by genpy from inspire_hand/set_angleResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class set_angleResponse(genpy.Message):
  _md5sum = "c1508b076c4c46f43d5103fcfc81271e"
  _type = "inspire_hand/set_angleResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool angle_accepted
"""
  __slots__ = ['angle_accepted']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       angle_accepted

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(set_angleResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.angle_accepted is None:
        self.angle_accepted = False
    else:
      self.angle_accepted = False

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
      buff.write(_get_struct_B().pack(self.angle_accepted))
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
      (self.angle_accepted,) = _get_struct_B().unpack(str[start:end])
      self.angle_accepted = bool(self.angle_accepted)
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
      buff.write(_get_struct_B().pack(self.angle_accepted))
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
      (self.angle_accepted,) = _get_struct_B().unpack(str[start:end])
      self.angle_accepted = bool(self.angle_accepted)
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
class set_angle(object):
  _type          = 'inspire_hand/set_angle'
  _md5sum = 'b897f7828905e174d7da19d5b21c5ed3'
  _request_class  = set_angleRequest
  _response_class = set_angleResponse
