<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:178px;left:138px;height:auto;" onLoad="modelLoad">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="mainData" queryAction="queryOa_workweekly" saveAction="saveOa_workweekly" url="/work/workLog" tableName="oa_workweekly" idColumn="fID" autoNew="true"><column label="fID" name="fID" type="String" xid="default17"></column>
  <column label="版本" name="version" type="Integer" xid="default18"></column>
  <column label="填报人" name="fPersonID" type="String" xid="default19"></column>
  <column label="填报人名称" name="fPersonName" type="String" xid="default20"></column>
  <column label="填报部门" name="fDeptID" type="String" xid="default21"></column>
  <column label="填报部门名称" name="fDeptName" type="String" xid="default22"></column>
  <column label="创建日期" name="fCreateTime" type="DateTime" xid="default23"></column>
  <column label="填报日期" name="fDate" type="Date" xid="default24"></column>
  <column label="本周完成工作" name="fFinishWork" type="String" xid="default25"></column>
  <column label="下周工作计划" name="fWorkPlan" type="String" xid="default26"></column>
  <column label="需协调与帮助" name="fNeedHelp" type="String" xid="default27"></column>
  <column label="备注" name="fRemark" type="String" xid="default28"></column>
  <column label="图片路径" name="fImgURL" type="String" xid="default29"></column>
  <column label="发布范围" name="fReleaseScope" type="String" xid="default30"></column>
  <column label="本周工作总结" name="fWorkSummary" type="String" xid="default31"></column>
  <column label="发布范围ID" name="fReleaseScopeID" type="String" xid="default32"></column>
  <rule xid="rule1">
   <col name="fID" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default33">justep.UUID.createUUID()</expr></calculate> </col> </rule></div></div>  
<!--   <span component="$UI/system/components/justep/org/orgDialog" xid="psmDialog" onReceive="psmDialogReceive" multiSelection="true" includeOrgKind="psm"></span> --><div xid="waitDiv" style="position:relative;height:400px;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button2" style="position:absolute;font-size:30px;top:42%;left:42%;" icon="icon-loading-a">
    <i xid="i2" class="icon-loading-a"></i>
    <span xid="span3"></span></a> </div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"> 
    <div class="x-panel-top"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="工作周报"
        class="x-titlebar"> 
        <div class="x-titlebar-left"> 
          <a component="$UI/system/components/justep/button/button" label=""
            class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}"
            xid="backBtn"> 
            <i class="icon-chevron-left"/>  
            <span></span> 
          </a> 
        </div>  
        <div class="x-titlebar-title">工作周报</div>  
        <div class="x-titlebar-right reverse"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="saveBtn" xid="saveBtn" icon="icon-android-checkmark" onClick="saveBtnClick">
   <i xid="i1" class="icon-android-checkmark"></i>
   <span xid="span1">saveBtn</span></a>
  </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="weeklyContent" style="display:none;"> 
      <div component="$UI/system/components/justep/controlGroup/controlGroup"
        class="x-control-group" title="详细信息"> 
     
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30"> 
                    <label class="x-label left" bind-text='$model.mainData.label("fFinishWork")' xid="finishWorkL" style="width:100px;"/>  
                    <div class="x-edit"> 
                    
 					   <textarea class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  	  data="mainData" bind-ref="mainData.ref('fFinishWork')" xid="fFinishWork"/>  
                    </div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30"> 
                    <label class="x-label left" bind-text="$model.mainData.label('fWorkSummary')" xid="workSummary" style="width:100px;"/>  
                    <div class="x-edit"> 
                    
 					   <textarea class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  	  data="mainData" bind-ref="mainData.ref('fWorkSummary')" xid="fWorkSummary"/>  
                    </div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30"> 
                    <label class="x-label left" bind-text="$model.mainData.label('fWorkPlan')" xid="workPlanL" style="width:100px;"/>  
                    <div class="x-edit"> 
                    
 					   <textarea class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  	  data="mainData" bind-ref="mainData.ref('fWorkPlan')" xid="fWorkPlan"/>  
                    </div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label30"> 
                    <label class="x-label left" bind-text="$model.mainData.label('fNeedHelp')" xid="needHelp" style="width:100px;"/>  
                    <div class="x-edit"> 
                    
 					   <textarea class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  	  data="mainData" bind-ref="mainData.ref('fNeedHelp')" xid="fNeedHelp"/>  
                    </div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label20"> 
                    <label class="x-label left" bind-text="$model.mainData.label('fRemark')" xid="remarkL" style="width:100px;"/>  
                    <div class="x-edit"> 
                    
 					   <textarea class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  	  data="mainData" bind-ref="mainData.ref('fRemark')" xid="fRemark"/>  
                    </div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit"
                    class="x-label-edit x-label20"> 
                    <label class="x-label left" style="width:100px;"><![CDATA[图片]]></label>  
                    <div class="x-edit" xid="imgURL"> 
                    
                  	  <div component="$UI/system/components/justep/attachment/attachmentSimple" actionUrl="/baas/justep/attachment/simpleFileStore" xid="attachmentSimple1" bind-ref='$model.mainData.ref("fImgURL")'>
   <div class="x-attachment" xid="div6">
    <div class="x-attachment-content x-card-border" xid="div7">
     <div class="x-doc-process" xid="div9">
      <div class="progress-bar x-doc-process-bar" role="progressbar" style="width:0%;" xid="progressBar2"></div></div> 
     <div data-bind="foreach:$attachmentItems" xid="div10">
      <div class="x-attachment-cell" xid="div11">
       <div class="x-attachment-item x-item-other" data-bind="click:$model.previewOrRemoveItem.bind($model),style:{backgroundImage:($model.previewPicture.bind($model,$object))()}" xid="div12">
        <a data-bind="visible:$model.$state.get() == 'remove'" class="x-remove-barget" xid="a2"></a></div> </div> </div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload'" xid="div13">
      <div class="x-attachment-item x-item-upload" data-bind="visible:$state.get() == 'upload'" xid="div14"></div></div> 
     <div class="x-attachment-cell" data-bind="visible:$state.get() == 'upload' &amp;&amp; $attachmentItems.get().length &gt; 0" xid="div15">
      <div class="x-attachment-item x-item-remove" data-bind="click:changeState.bind($object,'remove')" xid="div16"></div></div> 
     <div style="clear:both;" xid="div17"></div></div> </div> </div></div> 
                  </div> 
        <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label20">
   <label class="x-label left" bind-text='$model.mainData.label("fReleaseScope")' xid="label1" style="width:100px;"></label>
   <div class="x-edit" style="position:relative;height:37px;" xid="div8">
    <span class="x-output" component="$UI/system/components/justep/output/output" data="mainData" bind-ref='$model.mainData.ref("fReleaseScope")' xid="output1"></span>
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="findBtn" style="position:absolute;top:0px;right:0px;" onClick="findBtnClick">
     <i xid="i3" class="icon-android-search" style="color:#808080;"></i>
     <span xid="span2"></span></a> </div> </div></div> 
    </div> 
  </div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="personDlg" onReceive="personDlgReceive" src="$UI/work/common/process/personDlgActivity.w"></span></div>