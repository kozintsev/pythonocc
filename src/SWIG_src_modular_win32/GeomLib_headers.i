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
%{

// Headers necessary to define wrapped classes.

#include<GeomLib.hxx>
#include<GeomLib_Array1OfMat.hxx>
#include<GeomLib_Check2dBSplineCurve.hxx>
#include<GeomLib_CheckBSplineCurve.hxx>
#include<GeomLib_DenominatorMultiplier.hxx>
#include<GeomLib_DenominatorMultiplierPtr.hxx>
#include<GeomLib_Interpolate.hxx>
#include<GeomLib_InterpolationErrors.hxx>
#include<GeomLib_IsPlanarSurface.hxx>
#include<GeomLib_LogSample.hxx>
#include<GeomLib_MakeCurvefromApprox.hxx>
#include<GeomLib_PolyFunc.hxx>
#include<GeomLib_Tool.hxx>

// Additional headers necessary for compilation.

#include<GeomLib.hxx>
#include<GeomLib_Array1OfMat.hxx>
#include<GeomLib_Check2dBSplineCurve.hxx>
#include<GeomLib_CheckBSplineCurve.hxx>
#include<GeomLib_DenominatorMultiplier.hxx>
#include<GeomLib_DenominatorMultiplierPtr.hxx>
#include<GeomLib_Interpolate.hxx>
#include<GeomLib_InterpolationErrors.hxx>
#include<GeomLib_IsPlanarSurface.hxx>
#include<GeomLib_LogSample.hxx>
#include<GeomLib_MakeCurvefromApprox.hxx>
#include<GeomLib_PolyFunc.hxx>
#include<GeomLib_Tool.hxx>

// Needed headers necessary for compilation.

#include<Handle_Geom_BSplineSurface.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Mat.hxx>
#include<math_Vector.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<Handle_Geom_BSplineCurve.hxx>
#include<AdvApprox_ApproxAFunction.hxx>
#include<Handle_Geom2d_BSplineCurve.hxx>
#include<GeomLib.hxx>
#include<gp_Ax2.hxx>
#include<gp_GTrsf2d.hxx>
#include<Adaptor3d_CurveOnSurface.hxx>
#include<Handle_Geom_BoundedCurve.hxx>
#include<gp_Vec.hxx>
#include<Handle_Geom_BoundedSurface.hxx>
#include<gp_Dir.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<Adaptor3d_Curve.hxx>
%}
