/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module PColgp

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include PColgp_dependencies.i


%include PColgp_headers.i




%nodefaultctor Handle_PColgp_HArray1OfCirc2d;
class Handle_PColgp_HArray1OfCirc2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfCirc2d(const Handle_PColgp_HArray1OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfCirc2d(const PColgp_HArray1OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfCirc2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfCirc2d {
	PColgp_HArray1OfCirc2d* GetObject() {
	return (PColgp_HArray1OfCirc2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfXY;
class Handle_PColgp_HArray2OfXY : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXY(const Handle_PColgp_HArray2OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXY(const PColgp_HArray2OfXY *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXY const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfXY {
	PColgp_HArray2OfXY* GetObject() {
	return (PColgp_HArray2OfXY*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY(const PColgp_VArrayNodeOfFieldOfHArray1OfXY *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY {
	PColgp_VArrayNodeOfFieldOfHArray1OfXY* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfXY*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d(const PColgp_VArrayNodeOfFieldOfHArray1OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d {
	PColgp_VArrayNodeOfFieldOfHArray1OfLin2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfLin2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir(const PColgp_VArrayNodeOfFieldOfHArray1OfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir {
	PColgp_VArrayNodeOfFieldOfHArray1OfDir* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec(const PColgp_VArrayNodeOfFieldOfHArray2OfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec {
	PColgp_VArrayNodeOfFieldOfHArray2OfVec* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfXYZ;
class Handle_PColgp_HArray1OfXYZ : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXYZ(const Handle_PColgp_HArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXYZ(const PColgp_HArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfXYZ {
	PColgp_HArray1OfXYZ* GetObject() {
	return (PColgp_HArray1OfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfXY;
class Handle_PColgp_HArray1OfXY : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXY(const Handle_PColgp_HArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXY(const PColgp_HArray1OfXY *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfXY const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfXY {
	PColgp_HArray1OfXY* GetObject() {
	return (PColgp_HArray1OfXY*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfVec2d;
class Handle_PColgp_HArray2OfVec2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec2d(const Handle_PColgp_HArray2OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec2d(const PColgp_HArray2OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfVec2d {
	PColgp_HArray2OfVec2d* GetObject() {
	return (PColgp_HArray2OfVec2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfDir2d;
class Handle_PColgp_HArray1OfDir2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir2d(const Handle_PColgp_HArray1OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir2d(const PColgp_HArray1OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfDir2d {
	PColgp_HArray1OfDir2d* GetObject() {
	return (PColgp_HArray1OfDir2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir(const PColgp_VArrayNodeOfFieldOfHArray2OfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir {
	PColgp_VArrayNodeOfFieldOfHArray2OfDir* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfXYZ;
class Handle_PColgp_HArray2OfXYZ : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXYZ(const Handle_PColgp_HArray2OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXYZ(const PColgp_HArray2OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfXYZ {
	PColgp_HArray2OfXYZ* GetObject() {
	return (PColgp_HArray2OfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d(const PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d {
	PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_SeqNodeOfHSequenceOfVec;
class Handle_PColgp_SeqNodeOfHSequenceOfVec : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_SeqNodeOfHSequenceOfVec();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec(const Handle_PColgp_SeqNodeOfHSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec(const PColgp_SeqNodeOfHSequenceOfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_SeqNodeOfHSequenceOfVec {
	PColgp_SeqNodeOfHSequenceOfVec* GetObject() {
	return (PColgp_SeqNodeOfHSequenceOfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfLin2d;
class Handle_PColgp_HArray2OfLin2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfLin2d(const Handle_PColgp_HArray2OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfLin2d(const PColgp_HArray2OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfLin2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfLin2d {
	PColgp_HArray2OfLin2d* GetObject() {
	return (PColgp_HArray2OfLin2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfVec;
class Handle_PColgp_HArray2OfVec : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec(const Handle_PColgp_HArray2OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec(const PColgp_HArray2OfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfVec {
	PColgp_HArray2OfVec* GetObject() {
	return (PColgp_HArray2OfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfVec2d;
class Handle_PColgp_HArray1OfVec2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec2d(const Handle_PColgp_HArray1OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec2d(const PColgp_HArray1OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfVec2d {
	PColgp_HArray1OfVec2d* GetObject() {
	return (PColgp_HArray1OfVec2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_SeqNodeOfHSequenceOfDir;
class Handle_PColgp_SeqNodeOfHSequenceOfDir : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_SeqNodeOfHSequenceOfDir();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir(const Handle_PColgp_SeqNodeOfHSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir(const PColgp_SeqNodeOfHSequenceOfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_SeqNodeOfHSequenceOfDir {
	PColgp_SeqNodeOfHSequenceOfDir* GetObject() {
	return (PColgp_SeqNodeOfHSequenceOfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfDir;
class Handle_PColgp_HArray1OfDir : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir(const Handle_PColgp_HArray1OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir(const PColgp_HArray1OfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfDir {
	PColgp_HArray1OfDir* GetObject() {
	return (PColgp_HArray1OfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfDir2d;
class Handle_PColgp_HArray2OfDir2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir2d(const Handle_PColgp_HArray2OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir2d(const PColgp_HArray2OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfDir2d {
	PColgp_HArray2OfDir2d* GetObject() {
	return (PColgp_HArray2OfDir2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HSequenceOfVec;
class Handle_PColgp_HSequenceOfVec : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec(const Handle_PColgp_HSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec(const PColgp_HSequenceOfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HSequenceOfVec {
	PColgp_HSequenceOfVec* GetObject() {
	return (PColgp_HSequenceOfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt(const PColgp_VArrayNodeOfFieldOfHArray2OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt {
	PColgp_VArrayNodeOfFieldOfHArray2OfPnt* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfPnt*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfLin2d;
class Handle_PColgp_HArray1OfLin2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfLin2d(const Handle_PColgp_HArray1OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfLin2d(const PColgp_HArray1OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfLin2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfLin2d {
	PColgp_HArray1OfLin2d* GetObject() {
	return (PColgp_HArray1OfLin2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ(const PColgp_VArrayNodeOfFieldOfHArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ {
	PColgp_VArrayNodeOfFieldOfHArray1OfXYZ* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HSequenceOfDir;
class Handle_PColgp_HSequenceOfDir : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir(const Handle_PColgp_HSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir(const PColgp_HSequenceOfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HSequenceOfDir {
	PColgp_HSequenceOfDir* GetObject() {
	return (PColgp_HSequenceOfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d(const PColgp_VArrayNodeOfFieldOfHArray2OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d {
	PColgp_VArrayNodeOfFieldOfHArray2OfDir2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfDir2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ(const PColgp_VArrayNodeOfFieldOfHArray2OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ {
	PColgp_VArrayNodeOfFieldOfHArray2OfXYZ* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfPnt2d;
class Handle_PColgp_HArray2OfPnt2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt2d(const Handle_PColgp_HArray2OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt2d(const PColgp_HArray2OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfPnt2d {
	PColgp_HArray2OfPnt2d* GetObject() {
	return (PColgp_HArray2OfPnt2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfVec;
class Handle_PColgp_HArray1OfVec : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec(const Handle_PColgp_HArray1OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec(const PColgp_HArray1OfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfVec {
	PColgp_HArray1OfVec* GetObject() {
	return (PColgp_HArray1OfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfPnt2d;
class Handle_PColgp_HArray1OfPnt2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d(const Handle_PColgp_HArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d(const PColgp_HArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfPnt2d {
	PColgp_HArray1OfPnt2d* GetObject() {
	return (PColgp_HArray1OfPnt2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d(const PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d {
	PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_SeqNodeOfHSequenceOfPnt;
class Handle_PColgp_SeqNodeOfHSequenceOfPnt : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_SeqNodeOfHSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt(const PColgp_SeqNodeOfHSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_SeqNodeOfHSequenceOfPnt {
	PColgp_SeqNodeOfHSequenceOfPnt* GetObject() {
	return (PColgp_SeqNodeOfHSequenceOfPnt*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfPnt;
class Handle_PColgp_HArray2OfPnt : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt(const Handle_PColgp_HArray2OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt(const PColgp_HArray2OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfPnt {
	PColgp_HArray2OfPnt* GetObject() {
	return (PColgp_HArray2OfPnt*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt(const PColgp_VArrayNodeOfFieldOfHArray1OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt {
	PColgp_VArrayNodeOfFieldOfHArray1OfPnt* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfPnt*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d(const PColgp_VArrayNodeOfFieldOfHArray2OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d {
	PColgp_VArrayNodeOfFieldOfHArray2OfVec2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfVec2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_SeqNodeOfHSequenceOfXYZ;
class Handle_PColgp_SeqNodeOfHSequenceOfXYZ : public Handle_PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_SeqNodeOfHSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ(const PColgp_SeqNodeOfHSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_SeqNodeOfHSequenceOfXYZ {
	PColgp_SeqNodeOfHSequenceOfXYZ* GetObject() {
	return (PColgp_SeqNodeOfHSequenceOfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d(const PColgp_VArrayNodeOfFieldOfHArray1OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d {
	PColgp_VArrayNodeOfFieldOfHArray1OfDir2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfDir2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfCirc2d;
class Handle_PColgp_HArray2OfCirc2d : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfCirc2d(const Handle_PColgp_HArray2OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfCirc2d(const PColgp_HArray2OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfCirc2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfCirc2d {
	PColgp_HArray2OfCirc2d* GetObject() {
	return (PColgp_HArray2OfCirc2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray2OfDir;
class Handle_PColgp_HArray2OfDir : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray2OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir();
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir(const Handle_PColgp_HArray2OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir(const PColgp_HArray2OfDir *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray2OfDir const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray2OfDir {
	PColgp_HArray2OfDir* GetObject() {
	return (PColgp_HArray2OfDir*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HSequenceOfPnt;
class Handle_PColgp_HSequenceOfPnt : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt(const Handle_PColgp_HSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt(const PColgp_HSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HSequenceOfPnt {
	PColgp_HSequenceOfPnt* GetObject() {
	return (PColgp_HSequenceOfPnt*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d(const PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d {
	PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d(const PColgp_VArrayNodeOfFieldOfHArray2OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d {
	PColgp_VArrayNodeOfFieldOfHArray2OfLin2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfLin2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d(const PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d {
	PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d(const PColgp_VArrayNodeOfFieldOfHArray1OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d {
	PColgp_VArrayNodeOfFieldOfHArray1OfVec2d* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfVec2d*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HSequenceOfXYZ;
class Handle_PColgp_HSequenceOfXYZ : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ(const Handle_PColgp_HSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ(const PColgp_HSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HSequenceOfXYZ {
	PColgp_HSequenceOfXYZ* GetObject() {
	return (PColgp_HSequenceOfXYZ*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec;
class Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec(const Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec(const PColgp_VArrayNodeOfFieldOfHArray1OfVec *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec {
	PColgp_VArrayNodeOfFieldOfHArray1OfVec* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray1OfVec*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY;
class Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY : public Handle_PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY();
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY(const Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY(const PColgp_VArrayNodeOfFieldOfHArray2OfXY *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY {
	PColgp_VArrayNodeOfFieldOfHArray2OfXY* GetObject() {
	return (PColgp_VArrayNodeOfFieldOfHArray2OfXY*)$self->Access();
	}
};

%nodefaultctor Handle_PColgp_HArray1OfPnt;
class Handle_PColgp_HArray1OfPnt : public Handle_Standard_Persistent {
	public:
		%feature("autodoc", "1");
		~Handle_PColgp_HArray1OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt();
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt(const Handle_PColgp_HArray1OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt(const PColgp_HArray1OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_PColgp_HArray1OfPnt const DownCast(const Handle_Standard_Persistent &AnObject);

};
%extend Handle_PColgp_HArray1OfPnt {
	PColgp_HArray1OfPnt* GetObject() {
	return (PColgp_HArray1OfPnt*)$self->Access();
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfPnt;
class PColgp_FieldOfHArray2OfPnt : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt(const PColgp_FieldOfHArray2OfPnt &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfPnt &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt &Value);
		%feature("autodoc", "1");
		gp_Pnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfPnt();

};

%nodefaultctor PColgp_FieldOfHArray1OfLin2d;
class PColgp_FieldOfHArray1OfLin2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfLin2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfLin2d(const PColgp_FieldOfHArray1OfLin2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfLin2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin2d &Value);
		%feature("autodoc", "1");
		gp_Lin2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfLin2d();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d;
class PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfLin2d(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_HArray1OfVec;
class PColgp_HArray1OfVec : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfVec(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfVec(const Standard_Integer Low, const Standard_Integer Up, const gp_Vec &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Vec Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfVec();
		%feature("autodoc", "1");
		PColgp_HArray1OfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfVecLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfVecLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfVecUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfVecUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfVec & _CSFDB_GetPColgp_HArray1OfVecData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfVec();

};
%extend PColgp_HArray1OfVec {
	Handle_PColgp_HArray1OfVec GetHandle() {
	return *(Handle_PColgp_HArray1OfVec*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d;
class PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfVec2d(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_SeqNodeOfHSequenceOfDir;
class PColgp_SeqNodeOfHSequenceOfDir : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfDir(const Handle_PColgp_SeqNodeOfHSequenceOfDir &TheLast, const gp_Dir &TheItem);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfDir(const gp_Dir &TheItem, const Handle_PColgp_SeqNodeOfHSequenceOfDir &TheFirst);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfDir(const Handle_PColgp_SeqNodeOfHSequenceOfDir &ThePrevious, const Handle_PColgp_SeqNodeOfHSequenceOfDir &TheNext, const gp_Dir &TheItem);
		%feature("autodoc", "1");
		gp_Dir Value() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir Next() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir Previous() const;
		%feature("autodoc", "1");
		void SetValue(const gp_Dir &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColgp_SeqNodeOfHSequenceOfDir &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfDir &ANode);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfDir();
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir _CSFDB_GetPColgp_SeqNodeOfHSequenceOfDirMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfDirMyPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfDir &p);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPColgp_SeqNodeOfHSequenceOfDirMyItem() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir _CSFDB_GetPColgp_SeqNodeOfHSequenceOfDirMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfDirMyNext(const Handle_PColgp_SeqNodeOfHSequenceOfDir &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_SeqNodeOfHSequenceOfDir();

};
%extend PColgp_SeqNodeOfHSequenceOfDir {
	Handle_PColgp_SeqNodeOfHSequenceOfDir GetHandle() {
	return *(Handle_PColgp_SeqNodeOfHSequenceOfDir*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfPnt;
class PColgp_VArrayTNodeOfFieldOfHArray2OfPnt {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfPnt(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ;
class PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfXYZ(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_HArray2OfVec2d;
class PColgp_HArray2OfVec2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfVec2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfVec2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Vec2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec2d &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Vec2d Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfVec2d();
		%feature("autodoc", "1");
		PColgp_HArray2OfVec2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVec2dmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVec2dmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVec2dmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVec2dmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVec2dmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVec2dmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVec2dmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVec2dmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfVec2d & _CSFDB_GetPColgp_HArray2OfVec2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfVec2d();

};
%extend PColgp_HArray2OfVec2d {
	Handle_PColgp_HArray2OfVec2d GetHandle() {
	return *(Handle_PColgp_HArray2OfVec2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray1OfDir2d;
class PColgp_HArray1OfDir2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfDir2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfDir2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Dir2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Dir2d Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfDir2d();
		%feature("autodoc", "1");
		PColgp_HArray1OfDir2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfDir2dLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfDir2dLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfDir2dUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfDir2dUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfDir2d & _CSFDB_GetPColgp_HArray1OfDir2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfDir2d();

};
%extend PColgp_HArray1OfDir2d {
	Handle_PColgp_HArray1OfDir2d GetHandle() {
	return *(Handle_PColgp_HArray1OfDir2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfLin2d;
class PColgp_VArrayNodeOfFieldOfHArray2OfLin2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfLin2d(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfLin2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Lin2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfLin2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfLin2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfLin2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfLin2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfVec;
class PColgp_VArrayNodeOfFieldOfHArray1OfVec : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec(const gp_Vec &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfVecmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfVec();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfVec {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec*) &$self;
	}
};

%nodefaultctor PColgp_HArray1OfDir;
class PColgp_HArray1OfDir : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfDir(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfDir(const Standard_Integer Low, const Standard_Integer Up, const gp_Dir &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Dir Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfDir();
		%feature("autodoc", "1");
		PColgp_HArray1OfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfDirLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfDirLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfDirUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfDirUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfDir & _CSFDB_GetPColgp_HArray1OfDirData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfDir();

};
%extend PColgp_HArray1OfDir {
	Handle_PColgp_HArray1OfDir GetHandle() {
	return *(Handle_PColgp_HArray1OfDir*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ;
class PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfXYZ(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray1OfPnt2d;
class PColgp_FieldOfHArray1OfPnt2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt2d(const PColgp_FieldOfHArray1OfPnt2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfPnt2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d &Value);
		%feature("autodoc", "1");
		gp_Pnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfPnt2d();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d;
class PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfPnt2d(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray1OfVec;
class PColgp_FieldOfHArray1OfVec : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec(const PColgp_FieldOfHArray1OfVec &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfVec &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec &Value);
		%feature("autodoc", "1");
		gp_Vec & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfVec();

};

%nodefaultctor PColgp_FieldOfHArray1OfDir;
class PColgp_FieldOfHArray1OfDir : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir(const PColgp_FieldOfHArray1OfDir &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfDir &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir &Value);
		%feature("autodoc", "1");
		gp_Dir & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfDir();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d;
class PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfLin2d(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_HArray2OfDir;
class PColgp_HArray2OfDir : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfDir(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfDir(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Dir &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Dir Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfDir();
		%feature("autodoc", "1");
		PColgp_HArray2OfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDirmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDirmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDirmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDirmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDirmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDirmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDirmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDirmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfDir & _CSFDB_GetPColgp_HArray2OfDirData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfDir();

};
%extend PColgp_HArray2OfDir {
	Handle_PColgp_HArray2OfDir GetHandle() {
	return *(Handle_PColgp_HArray2OfDir*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfVec;
class PColgp_FieldOfHArray2OfVec : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec(const PColgp_FieldOfHArray2OfVec &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfVec &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec &Value);
		%feature("autodoc", "1");
		gp_Vec & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfVec();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfDir;
class PColgp_VArrayNodeOfFieldOfHArray1OfDir : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir(const gp_Dir &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfDirmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfDir();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfDir {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfLin2d;
class PColgp_HArray2OfLin2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfLin2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfLin2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Lin2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Lin2d &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Lin2d Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfLin2d();
		%feature("autodoc", "1");
		PColgp_HArray2OfLin2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfLin2dmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfLin2dmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfLin2dmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfLin2dmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfLin2dmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfLin2dmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfLin2dmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfLin2dmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfLin2d & _CSFDB_GetPColgp_HArray2OfLin2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfLin2d();

};
%extend PColgp_HArray2OfLin2d {
	Handle_PColgp_HArray2OfLin2d GetHandle() {
	return *(Handle_PColgp_HArray2OfLin2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfVec;
class PColgp_VArrayNodeOfFieldOfHArray2OfVec : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec(const gp_Vec &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfVecmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfVec();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfVec {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfVec;
class PColgp_VArrayTNodeOfFieldOfHArray2OfVec {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfVec(const gp_Vec &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfDir2d;
class PColgp_VArrayNodeOfFieldOfHArray2OfDir2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir2d(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Dir2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfDir2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfDir2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfDir2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d;
class PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfCirc2d(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray2OfDir;
class PColgp_FieldOfHArray2OfDir : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir(const PColgp_FieldOfHArray2OfDir &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfDir &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir &Value);
		%feature("autodoc", "1");
		gp_Dir & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfDir();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d;
class PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfPnt2d(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfDir;
class PColgp_VArrayNodeOfFieldOfHArray2OfDir : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir(const gp_Dir &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Dir & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfDirmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfDir();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfDir {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfDir*) &$self;
	}
};

%nodefaultctor PColgp_SeqNodeOfHSequenceOfPnt;
class PColgp_SeqNodeOfHSequenceOfPnt : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfPnt(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &TheLast, const gp_Pnt &TheItem);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfPnt(const gp_Pnt &TheItem, const Handle_PColgp_SeqNodeOfHSequenceOfPnt &TheFirst);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfPnt(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &ThePrevious, const Handle_PColgp_SeqNodeOfHSequenceOfPnt &TheNext, const gp_Pnt &TheItem);
		%feature("autodoc", "1");
		gp_Pnt Value() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt Next() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt Previous() const;
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &ANode);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfPnt();
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt _CSFDB_GetPColgp_SeqNodeOfHSequenceOfPntMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfPntMyPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &p);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPColgp_SeqNodeOfHSequenceOfPntMyItem() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt _CSFDB_GetPColgp_SeqNodeOfHSequenceOfPntMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfPntMyNext(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_SeqNodeOfHSequenceOfPnt();

};
%extend PColgp_SeqNodeOfHSequenceOfPnt {
	Handle_PColgp_SeqNodeOfHSequenceOfPnt GetHandle() {
	return *(Handle_PColgp_SeqNodeOfHSequenceOfPnt*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfPnt2d;
class PColgp_HArray2OfPnt2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Pnt2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt2d &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt2d();
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPnt2dmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPnt2dmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPnt2dmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPnt2dmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPnt2dmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPnt2dmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPnt2dmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPnt2dmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfPnt2d & _CSFDB_GetPColgp_HArray2OfPnt2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfPnt2d();

};
%extend PColgp_HArray2OfPnt2d {
	Handle_PColgp_HArray2OfPnt2d GetHandle() {
	return *(Handle_PColgp_HArray2OfPnt2d*) &$self;
	}
};

%nodefaultctor PColgp_HSequenceOfVec;
class PColgp_HSequenceOfVec : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		gp_Vec First() const;
		%feature("autodoc", "1");
		gp_Vec Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Vec &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColgp_HSequenceOfVec &S);
		%feature("autodoc", "1");
		void Prepend(const gp_Vec &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColgp_HSequenceOfVec &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Vec &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColgp_HSequenceOfVec &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Vec &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColgp_HSequenceOfVec &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfVec Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec &T);
		%feature("autodoc", "1");
		gp_Vec Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Vec &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Vec &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Vec &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		PColgp_HSequenceOfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec _CSFDB_GetPColgp_HSequenceOfVecFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfVecFirstItem(const Handle_PColgp_SeqNodeOfHSequenceOfVec &p);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec _CSFDB_GetPColgp_HSequenceOfVecLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfVecLastItem(const Handle_PColgp_SeqNodeOfHSequenceOfVec &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HSequenceOfVecSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfVecSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColgp_HSequenceOfVec {
	Handle_PColgp_HSequenceOfVec GetHandle() {
	return *(Handle_PColgp_HSequenceOfVec*) &$self;
	}
};

%nodefaultctor PColgp_HArray1OfVec2d;
class PColgp_HArray1OfVec2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfVec2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfVec2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Vec2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Vec2d Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfVec2d();
		%feature("autodoc", "1");
		PColgp_HArray1OfVec2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfVec2dLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfVec2dLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfVec2dUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfVec2dUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfVec2d & _CSFDB_GetPColgp_HArray1OfVec2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfVec2d();

};
%extend PColgp_HArray1OfVec2d {
	Handle_PColgp_HArray1OfVec2d GetHandle() {
	return *(Handle_PColgp_HArray1OfVec2d*) &$self;
	}
};

%nodefaultctor PColgp_SeqNodeOfHSequenceOfVec;
class PColgp_SeqNodeOfHSequenceOfVec : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfVec(const Handle_PColgp_SeqNodeOfHSequenceOfVec &TheLast, const gp_Vec &TheItem);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfVec(const gp_Vec &TheItem, const Handle_PColgp_SeqNodeOfHSequenceOfVec &TheFirst);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfVec(const Handle_PColgp_SeqNodeOfHSequenceOfVec &ThePrevious, const Handle_PColgp_SeqNodeOfHSequenceOfVec &TheNext, const gp_Vec &TheItem);
		%feature("autodoc", "1");
		gp_Vec Value() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec Next() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec Previous() const;
		%feature("autodoc", "1");
		void SetValue(const gp_Vec &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColgp_SeqNodeOfHSequenceOfVec &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfVec &ANode);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfVec();
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec _CSFDB_GetPColgp_SeqNodeOfHSequenceOfVecMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfVecMyPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfVec &p);
		%feature("autodoc", "1");
		const gp_Vec & _CSFDB_GetPColgp_SeqNodeOfHSequenceOfVecMyItem() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfVec _CSFDB_GetPColgp_SeqNodeOfHSequenceOfVecMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfVecMyNext(const Handle_PColgp_SeqNodeOfHSequenceOfVec &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_SeqNodeOfHSequenceOfVec();

};
%extend PColgp_SeqNodeOfHSequenceOfVec {
	Handle_PColgp_SeqNodeOfHSequenceOfVec GetHandle() {
	return *(Handle_PColgp_SeqNodeOfHSequenceOfVec*) &$self;
	}
};

%nodefaultctor PColgp_HArray1OfLin2d;
class PColgp_HArray1OfLin2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfLin2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfLin2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Lin2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin2d &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Lin2d Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfLin2d();
		%feature("autodoc", "1");
		PColgp_HArray1OfLin2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfLin2dLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfLin2dLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfLin2dUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfLin2dUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfLin2d & _CSFDB_GetPColgp_HArray1OfLin2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfLin2d();

};
%extend PColgp_HArray1OfLin2d {
	Handle_PColgp_HArray1OfLin2d GetHandle() {
	return *(Handle_PColgp_HArray1OfLin2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray1OfPnt;
class PColgp_HArray1OfPnt : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt(const Standard_Integer Low, const Standard_Integer Up, const gp_Pnt &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt();
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfPntLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfPntLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfPntUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfPntUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfPnt & _CSFDB_GetPColgp_HArray1OfPntData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfPnt();

};
%extend PColgp_HArray1OfPnt {
	Handle_PColgp_HArray1OfPnt GetHandle() {
	return *(Handle_PColgp_HArray1OfPnt*) &$self;
	}
};

%nodefaultctor PColgp_HSequenceOfDir;
class PColgp_HSequenceOfDir : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		gp_Dir First() const;
		%feature("autodoc", "1");
		gp_Dir Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Dir &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColgp_HSequenceOfDir &S);
		%feature("autodoc", "1");
		void Prepend(const gp_Dir &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColgp_HSequenceOfDir &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Dir &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColgp_HSequenceOfDir &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Dir &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColgp_HSequenceOfDir &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfDir Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir &T);
		%feature("autodoc", "1");
		gp_Dir Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Dir &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Dir &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Dir &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		PColgp_HSequenceOfDir(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir _CSFDB_GetPColgp_HSequenceOfDirFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfDirFirstItem(const Handle_PColgp_SeqNodeOfHSequenceOfDir &p);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfDir _CSFDB_GetPColgp_HSequenceOfDirLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfDirLastItem(const Handle_PColgp_SeqNodeOfHSequenceOfDir &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HSequenceOfDirSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfDirSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColgp_HSequenceOfDir {
	Handle_PColgp_HSequenceOfDir GetHandle() {
	return *(Handle_PColgp_HSequenceOfDir*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfVec2d;
class PColgp_VArrayNodeOfFieldOfHArray2OfVec2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec2d(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfVec2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfVec2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfVec2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfVec2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfVec2d*) &$self;
	}
};

%nodefaultctor PColgp_SeqExplorerOfHSequenceOfVec;
class PColgp_SeqExplorerOfHSequenceOfVec {
	public:
		%feature("autodoc", "1");
		~PColgp_SeqExplorerOfHSequenceOfVec();
		%feature("autodoc", "1");
		PColgp_SeqExplorerOfHSequenceOfVec(const Handle_PColgp_HSequenceOfVec &S);
		%feature("autodoc", "1");
		gp_Vec Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Vec &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Vec &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Vec &T);

};

%nodefaultctor PColgp_SeqNodeOfHSequenceOfXYZ;
class PColgp_SeqNodeOfHSequenceOfXYZ : public PMMgt_PManaged {
	public:
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfXYZ(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &TheLast, const gp_XYZ &TheItem);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfXYZ(const gp_XYZ &TheItem, const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &TheFirst);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfXYZ(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &ThePrevious, const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &TheNext, const gp_XYZ &TheItem);
		%feature("autodoc", "1");
		gp_XYZ Value() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ Next() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ Previous() const;
		%feature("autodoc", "1");
		void SetValue(const gp_XYZ &AnItem);
		%feature("autodoc", "1");
		void SetNext(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &ANode);
		%feature("autodoc", "1");
		void SetPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &ANode);
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfXYZ();
		%feature("autodoc", "1");
		PColgp_SeqNodeOfHSequenceOfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ _CSFDB_GetPColgp_SeqNodeOfHSequenceOfXYZMyPrevious() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfXYZMyPrevious(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &p);
		%feature("autodoc", "1");
		const gp_XYZ & _CSFDB_GetPColgp_SeqNodeOfHSequenceOfXYZMyItem() const;
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ _CSFDB_GetPColgp_SeqNodeOfHSequenceOfXYZMyNext() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_SeqNodeOfHSequenceOfXYZMyNext(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_SeqNodeOfHSequenceOfXYZ();

};
%extend PColgp_SeqNodeOfHSequenceOfXYZ {
	Handle_PColgp_SeqNodeOfHSequenceOfXYZ GetHandle() {
	return *(Handle_PColgp_SeqNodeOfHSequenceOfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfDir2d;
class PColgp_VArrayNodeOfFieldOfHArray1OfDir2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir2d(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfDir2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Dir2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfDir2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfDir2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfDir2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfDir2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfDir;
class PColgp_VArrayTNodeOfFieldOfHArray2OfDir {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfDir(const gp_Dir &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray1OfPnt;
class PColgp_FieldOfHArray1OfPnt : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfPnt(const PColgp_FieldOfHArray1OfPnt &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfPnt &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt &Value);
		%feature("autodoc", "1");
		gp_Pnt & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfPnt();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d;
class PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Circ2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfCirc2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfCirc2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfPnt;
class PColgp_HArray2OfPnt : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Pnt &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt();
		%feature("autodoc", "1");
		PColgp_HArray2OfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPntmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPntmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPntmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPntmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPntmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPntmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfPntmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfPntmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfPnt & _CSFDB_GetPColgp_HArray2OfPntData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfPnt();

};
%extend PColgp_HArray2OfPnt {
	Handle_PColgp_HArray2OfPnt GetHandle() {
	return *(Handle_PColgp_HArray2OfPnt*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfXYZ;
class PColgp_VArrayNodeOfFieldOfHArray1OfXYZ : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXYZ(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_XYZ & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfXYZmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfXYZ();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfXYZ {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfDir2d;
class PColgp_FieldOfHArray2OfDir2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfDir2d(const PColgp_FieldOfHArray2OfDir2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfDir2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d &Value);
		%feature("autodoc", "1");
		gp_Dir2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfDir2d();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfPnt;
class PColgp_VArrayNodeOfFieldOfHArray1OfPnt : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfPntmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfPnt();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfPnt {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfCirc2d;
class PColgp_FieldOfHArray2OfCirc2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfCirc2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfCirc2d(const PColgp_FieldOfHArray2OfCirc2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfCirc2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ2d &Value);
		%feature("autodoc", "1");
		gp_Circ2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Circ2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfCirc2d();

};

%nodefaultctor PColgp_HArray1OfPnt2d;
class PColgp_HArray1OfPnt2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Pnt2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Pnt2d Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt2d();
		%feature("autodoc", "1");
		PColgp_HArray1OfPnt2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfPnt2dLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfPnt2dLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfPnt2dUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfPnt2dUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfPnt2d & _CSFDB_GetPColgp_HArray1OfPnt2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfPnt2d();

};
%extend PColgp_HArray1OfPnt2d {
	Handle_PColgp_HArray1OfPnt2d GetHandle() {
	return *(Handle_PColgp_HArray1OfPnt2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfVec;
class PColgp_VArrayTNodeOfFieldOfHArray1OfVec {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfVec();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfVec(const gp_Vec &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_HArray1OfXYZ;
class PColgp_HArray1OfXYZ : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfXYZ(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfXYZ(const Standard_Integer Low, const Standard_Integer Up, const gp_XYZ &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_XYZ Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfXYZ();
		%feature("autodoc", "1");
		PColgp_HArray1OfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfXYZLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfXYZLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfXYZUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfXYZUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfXYZ & _CSFDB_GetPColgp_HArray1OfXYZData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfXYZ();

};
%extend PColgp_HArray1OfXYZ {
	Handle_PColgp_HArray1OfXYZ GetHandle() {
	return *(Handle_PColgp_HArray1OfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfVec;
class PColgp_HArray2OfVec : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfVec(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfVec(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Vec &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Vec Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfVec();
		%feature("autodoc", "1");
		PColgp_HArray2OfVec(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVecmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVecmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVecmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVecmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVecmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVecmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfVecmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfVecmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfVec & _CSFDB_GetPColgp_HArray2OfVecData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfVec();

};
%extend PColgp_HArray2OfVec {
	Handle_PColgp_HArray2OfVec GetHandle() {
	return *(Handle_PColgp_HArray2OfVec*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray1OfXYZ;
class PColgp_FieldOfHArray1OfXYZ : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXYZ();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXYZ(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXYZ(const PColgp_FieldOfHArray1OfXYZ &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfXYZ &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ &Value);
		%feature("autodoc", "1");
		gp_XYZ & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XYZ & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfXYZ();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfVec2d;
class PColgp_VArrayNodeOfFieldOfHArray1OfVec2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec2d(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfVec2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Vec2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfVec2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfVec2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfVec2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfVec2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfXYZ;
class PColgp_HArray2OfXYZ : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfXYZ(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfXYZ(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_XYZ &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XYZ &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_XYZ Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfXYZ();
		%feature("autodoc", "1");
		PColgp_HArray2OfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYZmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYZmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYZmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYZmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYZmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYZmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYZmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYZmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfXYZ & _CSFDB_GetPColgp_HArray2OfXYZData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfXYZ();

};
%extend PColgp_HArray2OfXYZ {
	Handle_PColgp_HArray2OfXYZ GetHandle() {
	return *(Handle_PColgp_HArray2OfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfPnt;
class PColgp_VArrayNodeOfFieldOfHArray2OfPnt : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfPntmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfPnt();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfPnt {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfXY;
class PColgp_VArrayTNodeOfFieldOfHArray1OfXY {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfXY(const gp_XY &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XY &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_SeqExplorerOfHSequenceOfDir;
class PColgp_SeqExplorerOfHSequenceOfDir {
	public:
		%feature("autodoc", "1");
		~PColgp_SeqExplorerOfHSequenceOfDir();
		%feature("autodoc", "1");
		PColgp_SeqExplorerOfHSequenceOfDir(const Handle_PColgp_HSequenceOfDir &S);
		%feature("autodoc", "1");
		gp_Dir Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Dir &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Dir &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Dir &T);

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfDir;
class PColgp_VArrayTNodeOfFieldOfHArray1OfDir {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfDir();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfDir(const gp_Dir &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray2OfPnt2d;
class PColgp_FieldOfHArray2OfPnt2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfPnt2d(const PColgp_FieldOfHArray2OfPnt2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfPnt2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d &Value);
		%feature("autodoc", "1");
		gp_Pnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfPnt2d();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfXY;
class PColgp_VArrayNodeOfFieldOfHArray1OfXY : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXY(const gp_XY &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XY &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfXY(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_XY & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfXYmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfXY();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfXY {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfXY*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfVec2d;
class PColgp_FieldOfHArray2OfVec2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfVec2d(const PColgp_FieldOfHArray2OfVec2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfVec2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d &Value);
		%feature("autodoc", "1");
		gp_Vec2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfVec2d();

};

%nodefaultctor PColgp_HArray1OfCirc2d;
class PColgp_HArray1OfCirc2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfCirc2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfCirc2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Circ2d &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ2d &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_Circ2d Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfCirc2d();
		%feature("autodoc", "1");
		PColgp_HArray1OfCirc2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfCirc2dLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfCirc2dLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfCirc2dUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfCirc2dUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfCirc2d & _CSFDB_GetPColgp_HArray1OfCirc2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfCirc2d();

};
%extend PColgp_HArray1OfCirc2d {
	Handle_PColgp_HArray1OfCirc2d GetHandle() {
	return *(Handle_PColgp_HArray1OfCirc2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfXY;
class PColgp_HArray2OfXY : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfXY(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfXY(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_XY &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XY &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_XY Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfXY();
		%feature("autodoc", "1");
		PColgp_HArray2OfXY(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfXYmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfXYmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfXY & _CSFDB_GetPColgp_HArray2OfXYData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfXY();

};
%extend PColgp_HArray2OfXY {
	Handle_PColgp_HArray2OfXY GetHandle() {
	return *(Handle_PColgp_HArray2OfXY*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d;
class PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfCirc2d(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray1OfDir2d;
class PColgp_FieldOfHArray1OfDir2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfDir2d(const PColgp_FieldOfHArray1OfDir2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfDir2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d &Value);
		%feature("autodoc", "1");
		gp_Dir2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfDir2d();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d;
class PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfDir2d(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray2OfXYZ;
class PColgp_FieldOfHArray2OfXYZ : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXYZ(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXYZ(const PColgp_FieldOfHArray2OfXYZ &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfXYZ &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ &Value);
		%feature("autodoc", "1");
		gp_XYZ & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XYZ & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfXYZ();

};

%nodefaultctor PColgp_FieldOfHArray2OfXY;
class PColgp_FieldOfHArray2OfXY : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXY();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXY(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfXY(const PColgp_FieldOfHArray2OfXY &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfXY &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY &Value);
		%feature("autodoc", "1");
		gp_XY & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XY & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfXY();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfXYZ;
class PColgp_VArrayNodeOfFieldOfHArray2OfXYZ : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXYZ();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXYZ(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XYZ &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_XYZ & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfXYZmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfXYZ();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfXYZ {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_SeqExplorerOfHSequenceOfPnt;
class PColgp_SeqExplorerOfHSequenceOfPnt {
	public:
		%feature("autodoc", "1");
		~PColgp_SeqExplorerOfHSequenceOfPnt();
		%feature("autodoc", "1");
		PColgp_SeqExplorerOfHSequenceOfPnt(const Handle_PColgp_HSequenceOfPnt &S);
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Pnt &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Pnt &T);

};

%nodefaultctor PColgp_HSequenceOfPnt;
class PColgp_HSequenceOfPnt : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		gp_Pnt First() const;
		%feature("autodoc", "1");
		gp_Pnt Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Pnt &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColgp_HSequenceOfPnt &S);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColgp_HSequenceOfPnt &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Pnt &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColgp_HSequenceOfPnt &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Pnt &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColgp_HSequenceOfPnt &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfPnt Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt &T);
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_Pnt &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Pnt &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_Pnt &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		PColgp_HSequenceOfPnt(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt _CSFDB_GetPColgp_HSequenceOfPntFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfPntFirstItem(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &p);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfPnt _CSFDB_GetPColgp_HSequenceOfPntLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfPntLastItem(const Handle_PColgp_SeqNodeOfHSequenceOfPnt &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HSequenceOfPntSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfPntSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColgp_HSequenceOfPnt {
	Handle_PColgp_HSequenceOfPnt GetHandle() {
	return *(Handle_PColgp_HSequenceOfPnt*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d;
class PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfPnt2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfPnt2d*) &$self;
	}
};

%nodefaultctor PColgp_HArray2OfCirc2d;
class PColgp_HArray2OfCirc2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfCirc2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfCirc2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Circ2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Circ2d &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Circ2d Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfCirc2d();
		%feature("autodoc", "1");
		PColgp_HArray2OfCirc2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfCirc2dmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfCirc2dmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfCirc2dmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfCirc2dmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfCirc2dmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfCirc2dmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfCirc2dmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfCirc2dmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfCirc2d & _CSFDB_GetPColgp_HArray2OfCirc2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfCirc2d();

};
%extend PColgp_HArray2OfCirc2d {
	Handle_PColgp_HArray2OfCirc2d GetHandle() {
	return *(Handle_PColgp_HArray2OfCirc2d*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray1OfCirc2d;
class PColgp_FieldOfHArray1OfCirc2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfCirc2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfCirc2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfCirc2d(const PColgp_FieldOfHArray1OfCirc2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfCirc2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ2d &Value);
		%feature("autodoc", "1");
		gp_Circ2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Circ2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfCirc2d();

};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfXY;
class PColgp_VArrayTNodeOfFieldOfHArray2OfXY {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfXY(const gp_XY &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XY &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfLin2d;
class PColgp_VArrayNodeOfFieldOfHArray1OfLin2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfLin2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfLin2d(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Lin2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfLin2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Lin2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfLin2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfLin2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfLin2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfLin2d*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray1OfXY;
class PColgp_FieldOfHArray1OfXY : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXY();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXY(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfXY(const PColgp_FieldOfHArray1OfXY &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfXY &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY &Value);
		%feature("autodoc", "1");
		gp_XY & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XY & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfXY();

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfXY;
class PColgp_VArrayNodeOfFieldOfHArray2OfXY : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXY();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXY(const gp_XY &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_XY &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfXY(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_XY & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfXYmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfXY();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfXY {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfXY*) &$self;
	}
};

%nodefaultctor PColgp_FieldOfHArray2OfLin2d;
class PColgp_FieldOfHArray2OfLin2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfLin2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfLin2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray2OfLin2d(const PColgp_FieldOfHArray2OfLin2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray2OfLin2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin2d &Value);
		%feature("autodoc", "1");
		gp_Lin2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray2OfLin2d();

};

%nodefaultctor PColgp_HSequenceOfXYZ;
class PColgp_HSequenceOfXYZ : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		gp_XYZ First() const;
		%feature("autodoc", "1");
		gp_XYZ Last() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_XYZ &T);
		%feature("autodoc", "1");
		void Append(const Handle_PColgp_HSequenceOfXYZ &S);
		%feature("autodoc", "1");
		void Prepend(const gp_XYZ &T);
		%feature("autodoc", "1");
		void Prepend(const Handle_PColgp_HSequenceOfXYZ &S);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_XYZ &T);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PColgp_HSequenceOfXYZ &S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_XYZ &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PColgp_HSequenceOfXYZ &S);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer I, const Standard_Integer J);
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ SubSequence(const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Handle_PColgp_HSequenceOfXYZ Split(const Standard_Integer Index);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ &T);
		%feature("autodoc", "1");
		gp_XYZ Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_XYZ &T) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_XYZ &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex) const;
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_XYZ &T) const;
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		PColgp_HSequenceOfXYZ(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ _CSFDB_GetPColgp_HSequenceOfXYZFirstItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfXYZFirstItem(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &p);
		%feature("autodoc", "1");
		Handle_PColgp_SeqNodeOfHSequenceOfXYZ _CSFDB_GetPColgp_HSequenceOfXYZLastItem() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfXYZLastItem(const Handle_PColgp_SeqNodeOfHSequenceOfXYZ &p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HSequenceOfXYZSize() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HSequenceOfXYZSize(const Standard_Integer p);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PColgp_HSequenceOfXYZ {
	Handle_PColgp_HSequenceOfXYZ GetHandle() {
	return *(Handle_PColgp_HSequenceOfXYZ*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d;
class PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray2OfVec2d(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Vec2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_FieldOfHArray1OfVec2d;
class PColgp_FieldOfHArray1OfVec2d : public DBC_BaseArray {
	public:
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec2d();
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec2d(const Standard_Integer Size);
		%feature("autodoc", "1");
		PColgp_FieldOfHArray1OfVec2d(const PColgp_FieldOfHArray1OfVec2d &Varray);
		%feature("autodoc", "1");
		void Resize(const Standard_Integer Size);
		%feature("autodoc", "1");
		void Assign(const PColgp_FieldOfHArray1OfVec2d &Other);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d &Value);
		%feature("autodoc", "1");
		gp_Vec2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		virtual		~PColgp_FieldOfHArray1OfVec2d();

};

%nodefaultctor PColgp_HArray1OfXY;
class PColgp_HArray1OfXY : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray1OfXY(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PColgp_HArray1OfXY(const Standard_Integer Low, const Standard_Integer Up, const gp_XY &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY &Value);
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		gp_XY Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray1OfXY();
		%feature("autodoc", "1");
		PColgp_HArray1OfXY(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfXYLowerBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfXYLowerBound(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray1OfXYUpperBound() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray1OfXYUpperBound(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray1OfXY & _CSFDB_GetPColgp_HArray1OfXYData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray1OfXY();

};
%extend PColgp_HArray1OfXY {
	Handle_PColgp_HArray1OfXY GetHandle() {
	return *(Handle_PColgp_HArray1OfXY*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d;
class PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfDir2d(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Dir2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};

%nodefaultctor PColgp_HArray2OfDir2d;
class PColgp_HArray2OfDir2d : public Standard_Persistent {
	public:
		%feature("autodoc", "1");
		PColgp_HArray2OfDir2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		PColgp_HArray2OfDir2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Dir2d &V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir2d &Value);
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		gp_Dir2d Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		virtual		Handle_Standard_Persistent ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		void ShallowDump(Standard_OStream & s) const;
		%feature("autodoc", "1");
		PColgp_HArray2OfDir2d();
		%feature("autodoc", "1");
		PColgp_HArray2OfDir2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDir2dmyLowerRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDir2dmyLowerRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDir2dmyLowerCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDir2dmyLowerCol(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDir2dmyUpperRow() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDir2dmyUpperRow(const Standard_Integer p);
		%feature("autodoc", "1");
		Standard_Integer _CSFDB_GetPColgp_HArray2OfDir2dmyUpperCol() const;
		%feature("autodoc", "1");
		void _CSFDB_SetPColgp_HArray2OfDir2dmyUpperCol(const Standard_Integer p);
		%feature("autodoc", "1");
		const PColgp_FieldOfHArray2OfDir2d & _CSFDB_GetPColgp_HArray2OfDir2dData() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_HArray2OfDir2d();

};
%extend PColgp_HArray2OfDir2d {
	Handle_PColgp_HArray2OfDir2d GetHandle() {
	return *(Handle_PColgp_HArray2OfDir2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d;
class PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Pnt2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray1OfPnt2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray1OfPnt2d*) &$self;
	}
};

%nodefaultctor PColgp_SeqExplorerOfHSequenceOfXYZ;
class PColgp_SeqExplorerOfHSequenceOfXYZ {
	public:
		%feature("autodoc", "1");
		~PColgp_SeqExplorerOfHSequenceOfXYZ();
		%feature("autodoc", "1");
		PColgp_SeqExplorerOfHSequenceOfXYZ(const Handle_PColgp_HSequenceOfXYZ &S);
		%feature("autodoc", "1");
		gp_XYZ Value(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const gp_XYZ &T);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_XYZ &T, const Standard_Integer FromIndex, const Standard_Integer ToIndex);
		%feature("autodoc", "1");
		Standard_Integer Location(const Standard_Integer N, const gp_XYZ &T);

};

%nodefaultctor PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d;
class PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d : public PStandard_ArrayNode {
	public:
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d();
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Circ2d &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;
		%feature("autodoc", "1");
		PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d(const Storage_stCONSTclCOM &a);
		%feature("autodoc", "1");
		const gp_Circ2d & _CSFDB_GetPColgp_VArrayNodeOfFieldOfHArray2OfCirc2dmyValue() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d();

};
%extend PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d {
	Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d GetHandle() {
	return *(Handle_PColgp_VArrayNodeOfFieldOfHArray2OfCirc2d*) &$self;
	}
};

%nodefaultctor PColgp_VArrayTNodeOfFieldOfHArray1OfPnt;
class PColgp_VArrayTNodeOfFieldOfHArray1OfPnt {
	public:
		%feature("autodoc", "1");
		~PColgp_VArrayTNodeOfFieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfPnt();
		%feature("autodoc", "1");
		PColgp_VArrayTNodeOfFieldOfHArray1OfPnt(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		void SetValue(const gp_Pnt &aValue);
		%feature("autodoc", "1");
		Standard_Address Value() const;

};