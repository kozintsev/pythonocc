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

#include<IntCurve_IConicTool.hxx>
#include<IntCurve_IntConicConic.hxx>
#include<IntCurve_IntConicConic_1.hxx>
#include<IntCurve_IntConicConic_Tool.hxx>
#include<IntCurve_IntImpConicParConic.hxx>
#include<IntCurve_MyImpParToolOfIntImpConicParConic.hxx>
#include<IntCurve_PConic.hxx>
#include<IntCurve_PConicTool.hxx>
#include<IntCurve_ProjectOnPConicTool.hxx>

// Additional headers necessary for compilation.

#include<IntCurveSurface_HInter.hxx>
#include<IntCurveSurface_Intersection.hxx>
#include<IntCurveSurface_IntersectionPoint.hxx>
#include<IntCurveSurface_IntersectionSegment.hxx>
#include<IntCurveSurface_SequenceNodeOfSequenceOfPnt.hxx>
#include<IntCurveSurface_SequenceNodeOfSequenceOfSeg.hxx>
#include<IntCurveSurface_SequenceOfPnt.hxx>
#include<IntCurveSurface_SequenceOfSeg.hxx>
#include<IntCurveSurface_TheCSFunctionOfHInter.hxx>
#include<IntCurveSurface_TheExactHInter.hxx>
#include<IntCurveSurface_TheHCurveTool.hxx>
#include<IntCurveSurface_TheHSurfaceTool.hxx>
#include<IntCurveSurface_TheInterferenceOfHInter.hxx>
#include<IntCurveSurface_ThePolygonOfHInter.hxx>
#include<IntCurveSurface_ThePolygonToolOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronOfHInter.hxx>
#include<IntCurveSurface_ThePolyhedronToolOfHInter.hxx>
#include<IntCurveSurface_TheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter.hxx>
#include<IntCurveSurface_TransitionOnCurve.hxx>
#include<IntCurve_IConicTool.hxx>
#include<IntCurve_IntConicConic.hxx>
#include<IntCurve_IntConicConic_1.hxx>
#include<IntCurve_IntConicConic_Tool.hxx>
#include<IntCurve_IntImpConicParConic.hxx>
#include<IntCurve_MyImpParToolOfIntImpConicParConic.hxx>
#include<IntCurve_PConic.hxx>
#include<IntCurve_PConicTool.hxx>
#include<IntCurve_ProjectOnPConicTool.hxx>
#include<IntCurvesFace_Intersector.hxx>
#include<IntCurvesFace_ShapeIntersector.hxx>

// Needed headers necessary for compilation.

#include<IntRes2d_Domain.hxx>
#include<gp_Pnt2d.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<gp_Elips2d.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Vec2d.hxx>
%}
