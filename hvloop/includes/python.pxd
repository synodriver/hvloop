cdef extern from "Python.h":
    int PY_VERSION_HEX

    unicode PyUnicode_FromString(const char *)

    void* PyMem_RawMalloc(size_t n) nogil
    void* PyMem_RawRealloc(void *p, size_t n) nogil
    void* PyMem_RawCalloc(size_t nelem, size_t elsize) nogil
    void PyMem_RawFree(void *p) nogil

    object PyUnicode_EncodeFSDefault(object)
    void PyErr_SetInterrupt() nogil

    void _Py_RestoreSignals()

    object PyMemoryView_FromMemory(char *mem, ssize_t size, int flags)
    object PyMemoryView_FromObject(object obj)
    int PyMemoryView_Check(object obj)

    cdef enum:
        PyBUF_WRITE
