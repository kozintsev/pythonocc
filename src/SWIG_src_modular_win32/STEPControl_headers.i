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

#include<Handle_STEPControl_ActorRead.hxx>
#include<Handle_STEPControl_ActorWrite.hxx>
#include<Handle_STEPControl_Controller.hxx>
#include<STEPControl_ActorRead.hxx>
#include<STEPControl_ActorWrite.hxx>
#include<STEPControl_Controller.hxx>
#include<STEPControl_Reader.hxx>
#include<STEPControl_StepModelType.hxx>
#include<STEPControl_Writer.hxx>

// Additional headers necessary for compilation.

#include<IFSelect.hxx>
#include<IFSelect_Act.hxx>
#include<IFSelect_ActFunc.hxx>
#include<IFSelect_Activator.hxx>
#include<IFSelect_AppliedModifiers.hxx>
#include<IFSelect_BasicDumper.hxx>
#include<IFSelect_CheckCounter.hxx>
#include<IFSelect_ContextModif.hxx>
#include<IFSelect_ContextWrite.hxx>
#include<IFSelect_DispGlobal.hxx>
#include<IFSelect_DispPerCount.hxx>
#include<IFSelect_DispPerFiles.hxx>
#include<IFSelect_DispPerOne.hxx>
#include<IFSelect_DispPerSignature.hxx>
#include<IFSelect_Dispatch.hxx>
#include<IFSelect_EditForm.hxx>
#include<IFSelect_EditValue.hxx>
#include<IFSelect_Editor.hxx>
#include<IFSelect_Functions.hxx>
#include<IFSelect_GeneralModifier.hxx>
#include<IFSelect_GraphCounter.hxx>
#include<IFSelect_HSeqOfSelection.hxx>
#include<IFSelect_IntParam.hxx>
#include<IFSelect_ListEditor.hxx>
#include<IFSelect_ModelCopier.hxx>
#include<IFSelect_ModifEditForm.hxx>
#include<IFSelect_ModifReorder.hxx>
#include<IFSelect_Modifier.hxx>
#include<IFSelect_Option.hxx>
#include<IFSelect_PacketList.hxx>
#include<IFSelect_ParamEditor.hxx>
#include<IFSelect_PrintCount.hxx>
#include<IFSelect_PrintFail.hxx>
#include<IFSelect_Profile.hxx>
#include<IFSelect_RemainMode.hxx>
#include<IFSelect_ReturnStatus.hxx>
#include<IFSelect_SelectAnyList.hxx>
#include<IFSelect_SelectAnyType.hxx>
#include<IFSelect_SelectBase.hxx>
#include<IFSelect_SelectCombine.hxx>
#include<IFSelect_SelectControl.hxx>
#include<IFSelect_SelectDeduct.hxx>
#include<IFSelect_SelectDiff.hxx>
#include<IFSelect_SelectEntityNumber.hxx>
#include<IFSelect_SelectErrorEntities.hxx>
#include<IFSelect_SelectExplore.hxx>
#include<IFSelect_SelectExtract.hxx>
#include<IFSelect_SelectFlag.hxx>
#include<IFSelect_SelectInList.hxx>
#include<IFSelect_SelectIncorrectEntities.hxx>
#include<IFSelect_SelectIntersection.hxx>
#include<IFSelect_SelectModelEntities.hxx>
#include<IFSelect_SelectModelRoots.hxx>
#include<IFSelect_SelectPointed.hxx>
#include<IFSelect_SelectRange.hxx>
#include<IFSelect_SelectRootComps.hxx>
#include<IFSelect_SelectRoots.hxx>
#include<IFSelect_SelectSent.hxx>
#include<IFSelect_SelectShared.hxx>
#include<IFSelect_SelectSharing.hxx>
#include<IFSelect_SelectSignature.hxx>
#include<IFSelect_SelectSignedShared.hxx>
#include<IFSelect_SelectSignedSharing.hxx>
#include<IFSelect_SelectSuite.hxx>
#include<IFSelect_SelectType.hxx>
#include<IFSelect_SelectUnion.hxx>
#include<IFSelect_SelectUnknownEntities.hxx>
#include<IFSelect_Selection.hxx>
#include<IFSelect_SelectionIterator.hxx>
#include<IFSelect_SequenceNodeOfSequenceOfAppliedModifiers.hxx>
#include<IFSelect_SequenceNodeOfSequenceOfGeneralModifier.hxx>
#include<IFSelect_SequenceNodeOfSequenceOfInterfaceModel.hxx>
#include<IFSelect_SequenceNodeOfTSeqOfDispatch.hxx>
#include<IFSelect_SequenceNodeOfTSeqOfSelection.hxx>
#include<IFSelect_SequenceOfAppliedModifiers.hxx>
#include<IFSelect_SequenceOfGeneralModifier.hxx>
#include<IFSelect_SequenceOfInterfaceModel.hxx>
#include<IFSelect_SessionDumper.hxx>
#include<IFSelect_SessionFile.hxx>
#include<IFSelect_SessionPilot.hxx>
#include<IFSelect_ShareOut.hxx>
#include<IFSelect_ShareOutResult.hxx>
#include<IFSelect_SignAncestor.hxx>
#include<IFSelect_SignCategory.hxx>
#include<IFSelect_SignCounter.hxx>
#include<IFSelect_SignMultiple.hxx>
#include<IFSelect_SignType.hxx>
#include<IFSelect_SignValidity.hxx>
#include<IFSelect_Signature.hxx>
#include<IFSelect_SignatureList.hxx>
#include<IFSelect_TSeqOfDispatch.hxx>
#include<IFSelect_TSeqOfSelection.hxx>
#include<IFSelect_TransformStandard.hxx>
#include<IFSelect_Transformer.hxx>
#include<IFSelect_WorkLibrary.hxx>
#include<IFSelect_WorkSession.hxx>
#include<InterfaceGraphic_Aspect.hxx>
#include<InterfaceGraphic_Cextern.hxx>
#include<InterfaceGraphic_Graphic3d.hxx>
#include<InterfaceGraphic_Labels.hxx>
#include<InterfaceGraphic_Portability.hxx>
#include<InterfaceGraphic_PrimitiveArray.hxx>
#include<InterfaceGraphic_Visual3d.hxx>
#include<InterfaceGraphic_WNT.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_Category.hxx>
#include<Interface_Check.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_GTool.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_Graph.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_IntList.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_MSG.hxx>
#include<Interface_Macros.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_STAT.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_SignType.hxx>
#include<Interface_Static.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_Statics.hxx>
#include<Interface_Translates.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_ValueInterpret.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>
#include<TopoDS_Shape.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_XSControl_WorkSession.hxx>
#include<Handle_StepData_StepModel.hxx>
#include<Handle_Transfer_Binder.hxx>
#include<Handle_Transfer_TransientProcess.hxx>
#include<Handle_StepRepr_Representation.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
#include<gp_Trsf.hxx>
#include<Handle_StepRepr_RepresentationRelationship.hxx>
#include<Handle_Transfer_Finder.hxx>
#include<Handle_Transfer_FinderProcess.hxx>
#include<Handle_StepShape_ShapeDefinitionRepresentation.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Transfer_ActorOfTransientProcess.hxx>
%}
