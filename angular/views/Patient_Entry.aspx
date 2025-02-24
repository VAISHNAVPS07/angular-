<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Slider.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="Patient_Entry.aspx.cs" Inherits="PatientReport_Patient_Entry" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
         <script type="text/javascript">

             function getConfirmation() {
                 debugger;
                 var retVal = confirm("Do you want to retain the previously visited information ?");

                 if (retVal == true) {
                     //document.write("User wants to continue!");
                     //DataRetriew_CheckedChanged();

                     return true;
                 }
                 else {
                     //document.write("User does not want to continue!");
                     //DataRetriew_CheckedChanged().retain = false;
                     return false;
                 }
             }

             function AddConfirmSubmit() {
                 debugger;

                 var confirm_value3_submit = document.createElement("INPUT");
                 confirm_value3_submit.type = "hidden";
                 confirm_value3_submit.name = "confirm_value3_submit";
                 confirm_value3_submit.value = "Yes";

                 if (confirm("Are you sure you want to Submit the Echo patient Details? Once You Submit You can't Edit the data back."))
                     confirm_value3_submit.value = "Yes";
                 else
                     confirm_value3_submit.value = "No";

                 document.forms[0].appendChild(confirm_value3_submit);

             }


      </script>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ToolkitScriptManager ID="toolkit1" runat="server">
            </asp:ToolkitScriptManager>
            <style>
             
             .modelBackground {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }
              .mandatory {
            color: red;
        }
</style>
            <center><b><asp:Label ID="Literal1" runat="server" Text="Echo Patient Entry" Font-Size="Large" ></asp:Label></b></center>
            <div class="container">

                <div class="container" style="background-color: white; font-size: 13px; border: outset">


                    <div class="row">
                        <div class="col-md-4" style="padding-top: 1%" visible="false" runat="server">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label419" runat="server" Text="Disease ID :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtDiseaseID" Width="100%" runat="server" OnTextChanged="txtPatientID_changed" Enabled="false" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblPatientID" runat="server" Text="Hospital No. :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtPatientID" Width="100%" runat="server" OnTextChanged="txtPatientID_changed" AutoPostBack="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label11" runat="server" Text="Name:"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtName" runat="server" Width="100%" Enabled="false" AutoPostBack="true" ></asp:TextBox>


                                </div>
                            </div>
                        </div>
                       <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblAge" runat="server" Text="YOB:"></asp:Label>

                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtYoB" Width="100%" runat="server" Enabled="false" AutoPostBack="true"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
<%--                         <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblAge" runat="server" Text="YOB:"></asp:Label>

                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtYoB" Width="100%" runat="server" Enabled="false" AutoPostBack="true"></asp:TextBox>
                                </div>

                            </div>
                        </div>--%>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblSex" runat="server" Text="Sex:"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:RadioButtonList ID="rdbtnfemale" runat="server" RepeatDirection="Horizontal" Enabled="False">
                                        <asp:ListItem Text="&nbsp&nbspMale&nbsp&nbsp&nbsp&nbsp" Value="M">   </asp:ListItem>
                                        <asp:ListItem Text="&nbsp&nbspFemale" Value="F"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblPhoneNo" runat="server" Text="Phone No.:"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtPhoneNo" Width="100%" runat="server" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblHospitalNo" runat="server" Text="IP  NO  :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtIPNo" Width="100%" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>










                    <div class="row">
<%--                       <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblHospitalNo" runat="server" Text="IP  NO  :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtIPNo" Width="100%" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>--%>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblDeptUnit" runat="server" Text="Dept/Unit:"></asp:Label><span class="mandatory">*</span>
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddldept" class="form-control" Width="100%"
                                        runat="server" AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        TabIndex="25" DataSourceID="SqlDataSource4" DataTextField="Dept_Name"
                                        DataValueField="Dept_ID">
                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:ConnectionStringKMC %>"
                                        ProviderName="System.Data.SqlClient"
                                        SelectCommand="SELECT Dept_ID, Dept_Name FROM Department_M WHERE  Active = 'Y' "></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblWardOpd" runat="server" Text="Ward/OPD :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <%--<asp:TextBox class="form-control" ID="txtWardOpd" Width="100%" runat="server"></asp:TextBox>--%>
                                       <asp:DropDownList ID="ddwardopd" class="form-control" Width="100%"
                                        runat="server" AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        TabIndex="25">
                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                        <asp:ListItem Value="Ward">Ward</asp:ListItem>
                                        <asp:ListItem Value="Opd">Opd</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div id="Div1" class="col-md-4" style="padding-top: 1%" runat="server">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
                                    <span class="mandatory">*</span>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtDate" runat="server" Width="100%" ClientIDMode="Static" autocomplete="off"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtDate" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="row">
<%--                        <div id="Div1" class="col-md-4" style="padding-top: 1%" runat="server">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
                                    <span class="mandatory">*</span>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtDate" runat="server" Width="100%" ClientIDMode="Static" autocomplete="off"></asp:TextBox>
                                    <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtDate" Format="dd/MM/yyyy">
                                    </asp:CalendarExtender>
                                </div>

                            </div>
                        </div>--%>
                        <div class="col-md-4" style="padding-top: 1%; padding-bottom: 0.5%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="lblConsultantDoctor" runat="server" Text="Consultant Doctor:"></asp:Label><span class="mandatory">*</span>
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" ID="txtConsultantDocotor" Style="height: 58px; width: 100%" runat="server" Enabled="false" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-md-8">
                                    <asp:TextBox ID="txtunit" runat="server" Visible="false" Height="10px" Width="10px"></asp:TextBox>
                                    <asp:RadioButtonList ID="rblunit" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblunit_SelectedIndexChanged">
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6" style="padding-top: 0.5%">
                            <div class="form-group form-inline">

                                <div class="col-md-10" >
                                    <asp:RadioButtonList ID="rbldoc" runat="server" RepeatDirection="Horizontal" Visible="false" OnSelectedIndexChanged="rbldoc_SelectedIndexChanged" AutoPostBack="true">
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                    </div>
                                        <%--Wrote these below lines on 6-12-2018--%>
                    <div class="row">
                        <div class="col-md-4">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                        <asp:CheckBox ID="DataRetriew" Style="font-weight: 100;white-space: nowrap;" runat="server"  Text="&nbsp&nbspRetrieve last visited information?" OnCheckedChanged = "DataRetriew_CheckedChanged" AutoPostBack="true"/> 
                                <%--<asp:Button ID="button1" runat="server" Style="display: none" />--%>
                        </div>
                            </div>
<%--                            <html>
   <head>
   <asp:HiddenField ID="senderID" runat="server" />
     
       <%-- <script type="text/javascript">
            function ConfirmationBox() {
                debugger;

                var result = confirm('Are you sure you want to delete the file?');
                if (result) {

                    return true;
                }
                else {
                    return false;
                }
            }
    </script>--%>

      
<%--   </head>
   <body>--%>
<%--      <p>Click the following button to see the result: </p>
      
      <form>
         <input type="button" value="Click Me" onclick="getConfirmation();" />
      </form>--%>
      
<%--   </body>
</html>--%>
                      </div>
                     <%--Wrote these above lines on 5-12-2018--%>
                </div>
                </div>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-8" style="padding-top: 1%; padding-bottom: 0.5%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label2" runat="server" Text="Quality of Acoustic Window :"></asp:Label>
                                </div>
                                <div class="col-md-8">
                                    <asp:RadioButtonList ID="radioAcoustic" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="&nbsp&nbspExcellent&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" Value="Excellent">   </asp:ListItem>
                                        <asp:ListItem Text="&nbsp&nbspGood&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" Value="Good"></asp:ListItem>
                                        <asp:ListItem Text="&nbsp&nbspPoor&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" Value="Poor"></asp:ListItem>
                                        <asp:ListItem Text="&nbsp&nbspVery Poor" Value="Very Poor"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <%--////////////////////////////ATRIUM/////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label1" runat="server" Text="LEFT ATRIUM"></asp:Label></b></u></center>
                                </div>


                            </div>


                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label4" runat="server" Width="100%" Text="A-P DIMENSION"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtLeftAPD" runat="server" Width="100%" ></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label7" runat="server" Width="100%" Text="mm(19-40)"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label3" runat="server" Width="100%" Text="1-S DIMENSION"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtLeft1SD" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label5" runat="server" Width="100%" Text="mm(<50-55)"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label13" runat="server" Width="100%" Text="AREA"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtLeftArea" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label14" runat="server" Width="100%" Text="cm"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label17" runat="server" Width="100%" Text="VOLUME"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtLeftVolume" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label18" runat="server" Width="100%" Text="ml"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>

                    <%--/////////////RIGHT ATRIUM/////////////--%>
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label170" runat="server" Text="RIGHT ATRIUM"></asp:Label></b></u></center>
                                </div>

                            </div>


                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label173" runat="server" Width="100%" Text="A-P DIMENSION"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRightAPD" Width="100%" runat="server"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label174" runat="server" Width="100%" Text="mm(19-40)"></asp:Label>
                                </div>
                            </div>
                        </div>




                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label177" runat="server" Width="100%" Text="1-S DIMENSION"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRight1SD" Width="100%" runat="server"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label178" runat="server" Width="100%" Text="mm(<50-55)"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%; padding-bottom: 3.5%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label181" runat="server" Width="100%" Text="AREA"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRightArea" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label182" runat="server" Text="cm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%; padding-bottom: 3.5%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label185" runat="server" Text="VOLUME" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRightVolume" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label186" runat="server" Text="ml" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <%--////////////////////////////LV-RV/////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label21" runat="server" Text="LV"></asp:Label></b></u></center>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label23" runat="server" Text="IVS: S/D" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtIVSSD" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label24" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label27" runat="server" Text="PW: S/D " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPWSD" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label28" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label31" runat="server" Text="EDV" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtEDV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label32" runat="server" Text="ml" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label35" runat="server" Text=" ESV" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtESV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label36" runat="server" Text="ml" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label39" runat="server" Text="ALEF" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtALEF" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label40" runat="server" Text="%" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label43" runat="server" Text="SV" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtSV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label44" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">

                                    <asp:Label ID="Label47" runat="server" Text="CO" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtCO" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label46" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>


                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label51" runat="server" Text="EDD" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtEDD" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label52" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label55" runat="server" Text="ESD" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtESD" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label56" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label59" runat="server" Text="EF " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtEF" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label60" runat="server" Text="%" Width="100%"> </asp:Label>
                                </div>
                            </div>
                        </div>
 
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label63" runat="server" Text="FS " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtFS" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label64" runat="server" Text="%" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label67" runat="server" Text="HR" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtHR" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label68" runat="server" Text="bpm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>



                    <%--////////////////////////////////////////////////////////////////////RV////////////////////////////////////////////////////////////--%>

                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label22" runat="server" Text="RV"></asp:Label></b></u></center>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label10" runat="server" Text="RV Fractional Area" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRVFArea" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label12" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label19" runat="server" Text="RVOT FRACTION" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRvotFrac" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label20" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label171" runat="server" Text="FREE WALL" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtFreeWall" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label172" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label6" runat="server" Text="EF" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRVEF" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label8" runat="server" Text="%" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label187" runat="server" Text="TAPSE" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px;">
                                    <asp:TextBox class="form-control" ID="txtTapse" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label188" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
                <%--//////////////////////////////////////////////////////////////////AORTA/////////////////////////////////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">

                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-md-12">
                                    <u><b>
                                        <center> <asp:Label ID="Label243" runat="server" Text=" AORTA " Width="100%"></asp:Label></center>
                                    </b></u>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label246" runat="server" Text=" ROOT    " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRoot" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-1">

                                    <asp:Label ID="Label247" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label250" runat="server" Text=" SINOTUBULAR JUNCTION  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtSinJunction" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-1">

                                    <asp:Label ID="Label251" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label254" runat="server" Text="ASCENDING AORTA    " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAscAorta" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label255" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label258" runat="server" Text="ARCH  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtArch" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label259" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label262" runat="server" Text="   DESCENDING AORTA   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtDesAorta" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label263" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label268" runat="server" Text=" ABDOMINAL AORTA " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAbdAorta" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label269" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label266" runat="server" Text=" MACS    " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px;">
                                    <asp:TextBox class="form-control" ID="txtMacs" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label267" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <%--////////////////////////////Mitral Valve    - AORTIC Valve /////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label48" runat="server" Text="Mitral Valve"></asp:Label></b></u></center>
                                </div>


                            </div>


                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label50" runat="server" Text=" DT" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="drpDT" runat="server" class="form-control" Width="100%">

                                        <asp:ListItem Text="Select" Value="">Select</asp:ListItem>
                                        <asp:ListItem Text="E>A" Value="E>A">E>A</asp:ListItem>
                                        <asp:ListItem Text="FA" Value="E>>A">E>>A</asp:ListItem>
                                        <asp:ListItem Text="A>E" Value="A>E">A>E</asp:ListItem>
                                        <asp:ListItem Text="E=A" Value="E=A">E=A</asp:ListItem>
                                        <asp:ListItem Text="E only" Value="E only">E only</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>



                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label76" runat="server" Text="PV  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label79" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label82" runat="server" Text="MV-E  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtMVE" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label83" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label86" runat="server" Text=" MV-A " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtMVA" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label87" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label90" runat="server" Text=" IVRT " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtIVRT" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label91" runat="server" Text="ml" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label94" runat="server" Text=" IVCT" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtIVCT" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label95" runat="server" Text="ml" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>





                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-md-4">
                                    <asp:Label ID="Label98" runat="server" Text=" MVO by PHT " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="TXTMVObyPHT" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label71" runat="server" Text="cm<sup>2</sup>" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>





                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label101" runat="server" Text=" MVO by 2D ECHO     " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtMVObyECHO" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label102" runat="server" Text="cm<sup>2</sup>" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label643" runat="server" Text=" MPG    " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtMIMPG" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label644" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                         <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label642" runat="server" Text=" PPG    " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtMIPPG" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label645" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label103" runat="server" Text=" Prosthetic Valve   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtMVPros" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>


                    </div>
                    
                </div>
                <%--///////////////////////////////////////////////AORTIC Valve/////////////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label15" runat="server" Text=" AORTIC Valve "></asp:Label></b></u></center>
                                </div>

                            </div>


                        </div>
                    </div>

                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label25" runat="server" Text=" PV " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOPV" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label26" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label33" runat="server" Text="MACS " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOMacs" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label34" runat="server" Text="cm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label41" runat="server" Text="PPG" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOPPG" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label42" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>



                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label54" runat="server" Text="MPG " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOMPG" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label57" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label62" runat="server" Text="ET " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOET" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label65" runat="server" Text="ms" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>






                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">

                                    <asp:Label ID="Label70" runat="server" Text="VTI" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtAOVTI" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label73" runat="server" Text="cm" Width="100%"></asp:Label>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="row">



                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label78" runat="server" Text=" Prosthetic Valve" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtAOProcs" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <%--////////////////////////////TRICUSPID VALVE   /////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label100" runat="server" Text="TRICUSPID VALVE"></asp:Label></b></u></center>
                                </div>


                            </div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label105" runat="server" Text=" DT" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRDT" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label104" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label106" runat="server" Text="  TRICUSPID ANNULUS DIMENSION  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRANNDIM" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label107" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label108" runat="server" Text="PV   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRPV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label109" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label110" runat="server" Text="TRICUSPID VALVE AREA BY PHT  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRVALAR" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label111" runat="server" Text="cm<sup>2</sup>" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label112" runat="server" Text="TV-E  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRTVE" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label113" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label114" runat="server" Text="RV MPI" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="TxtTRRVMPI" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label115" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label116" runat="server" Text=" TV-A  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRTVA" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label117" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label646" runat="server" Text=" MPG  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRMPG" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label647" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                         <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label648" runat="server" Text=" PPG  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtTRPPG" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label649" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label118" runat="server" Text="Prosthetic Valve " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtTRPROS" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label120" runat="server" Text=" RVSP= " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtTRRVSP" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label121" runat="server" Text="+RAP mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <%--////////////////////////////PULMONARY VALVE   /////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-6">
                                    <b><u>
                                        <asp:Label ID="Label119" runat="server" Text=" PULMONARY VALVE"></asp:Label></u></b>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label140" runat="server" Text="  Pulmonary Annulus  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULAN" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label143" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label122" runat="server" Text=" PV" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULPV" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label123" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label124" runat="server" Text="  Pulmonary Dimension   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULDI" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label125" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label126" runat="server" Text=" AT   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULAT" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label127" runat="server" Text="ms" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label128" runat="server" Text="MPA  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULMPA" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label129" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label130" runat="server" Text="PPG  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPPG" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label131" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label132" runat="server" Text="LPA" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtLPA" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label133" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label134" runat="server" Text=" MPG  " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULMPG" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label135" runat="server" Text="mmHg" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label136" runat="server" Text=" RPA " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULRPA" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label141" runat="server" Text=" mm " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label137" runat="server" Text=" Prosthetic Valve" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULPROS" runat="server" Width="100%"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label138" runat="server" Text=" VELOCITY-LPA " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtPULVELLPA" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label142" runat="server" Text=" m/s " Width="100%"></asp:Label>
                                </div>

                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">
                                </div>

                            </div>
                        </div>
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label144" runat="server" Text="  VELOCITY-RPA " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtPULVELRPA" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">
                                    <asp:Label ID="Label145" runat="server" Text=" m/s " Width="100%"></asp:Label>
                                </div>

                            </div>
                        </div>


                    </div>

                </div>

                <%--////////////////////////////PULMONARY VENOUS FLOW-RAP/////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label139" runat="server" Text="PULMONARY VENOUS FLOW"></asp:Label></b></u></center>
                                </div>


                            </div>


                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label147" runat="server" Text="PULMONARY VEIN S" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtVENS" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label148" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label151" runat="server" Text="PULMONARY VEIN D " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtVEND" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label152" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label155" runat="server" Text="PULMONARY VEIN Ar" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtVENAr" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label156" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label159" runat="server" Text=" PULMONARY VEIN Adur" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtPULAdur" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label160" runat="server" Text="ms" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <%--/////////////////////////////////////////////PULMONARY VENOUS FLOW/////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">

                                <div class="col-sm-12">
                                    <center> <u><b>  <asp:Label ID="Label16" runat="server" Text="RAP"></asp:Label></b></u></center>
                                </div>

                            </div>


                        </div>
                    </div>
                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label37" runat="server" Text=" IVC-MAX/MIN" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtRAPIVC" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label38" runat="server" Text="mm" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label53" runat="server" Text="HEPATIC VEIN S" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtHEPS" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label58" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">

                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label69" runat="server" Text="HEPATIC VEIN D " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox class="form-control" ID="txtHEPD" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label72" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <asp:Label ID="Label77" runat="server" Text="REVERSAL FLOW VELOCITY" Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-4" style="padding-bottom: 12px">
                                    <asp:TextBox class="form-control" ID="txtFLOW" runat="server" Width="100%"></asp:TextBox>

                                </div>
                                <div class="col-md-4">

                                    <asp:Label ID="Label80" runat="server" Text="m/s" Width="100%"></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <%--   ////////////////////////Type of Heart Disease://///////////////////////--%>
                <%-- <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">

                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <b><u>
                                    <asp:CheckBox ID="CheckBox1" runat="server"
                                        Text="Chech if Patient has any Heart Disease" OnCheckedChanged="chk_CheckedChanged" AutoPostBack="true" />
                                </u></b>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <%--   ////////////////////////Type of Heart Disease://///////////////////////--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">

                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <b><u>
                                    <asp:Label ID="Label163" runat="server" Text="Type of Heart Disease:"></asp:Label></u></b>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <%--<asp:CheckBox ID="chkCongenital" runat="server"
                                    Text="Congenital Heart Disease" OnCheckedChanged="chk_CheckedChanged" AutoPostBack="true" onclick="popup(this)"/>
                                
                 <asp:ModalPopupExtender ID="model" runat="server" PopupControlID="popupselectNo" TargetControlID="chkCongenital">
                 </asp:ModalPopupExtender>--%>

                                <asp:CheckBox ID="checkCongenital" runat="server" Text="Congenital Heart Disease" onclick="popup(this)" OnCheckedChanged="checkCongenital_CheckedChanged" />
                                <asp:Button ID="buttonOpen" runat="server" Style="display: none" />

                                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"
                                    OnCancelScript="butdone" PopupControlID="Panel1" TargetControlID="buttonOpen" BackgroundCssClass="modelBackground">
                                </asp:ModalPopupExtender>

                                <script type="text/javascript" language="javascript">
                                    function popup(checkbox) {
                                        debugger;
                                        var uname = document.getElementById('<%=txtPatientID.ClientID%>').value;
                                        if (uname == "") {
                                            alert("Enter Patient ID!");
                                            checkbox.checked = false;
                                        }
                                        else {
                                            if (checkbox.checked) {
                                                $get('<%= buttonOpen.ClientID %>').click();
                                                return true;
                                            }
                                        }

                                        if (butclose1.click = true)
                                            $get('<%= butclose.ClientID %>').click();
                                        clear();

                                    }
                                </script>

                            </div>
                        </div>


                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckValvular" runat="server" Text="&nbsp&nbspValvular Heart Disease" onclick="popup1(this)" />
                                <asp:Button ID="buttonOpen1" runat="server" Style="display: none" />

                                <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
                                    OnCancelScript="butdone" PopupControlID="Panel2" TargetControlID="buttonOpen1" BackgroundCssClass="modelBackground">
                                </asp:ModalPopupExtender>

                                <script type="text/javascript" language="javascript">
                                    function popup1(checkbox) {
                                        debugger;
                                        var uname = document.getElementById('<%=txtPatientID.ClientID%>').value;
                                        if (uname == "") {
                                            alert("Enter Patient ID!");
                                            checkbox.checked = false;
                                        }
                                        else {
                                            if (checkbox.checked) {
                                                $get('<%= buttonOpen1.ClientID %>').click();
                                                return true;
                                            }
                                        }

                                        if (butclose1.click = true)
                                            $get('<%= butclose1.ClientID %>').click();

                                    }
                                </script>
                            </div>
                        </div>


                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckIschemic" runat="server" Text="&nbsp&nbspIschemic Heart Disease" onclick="popup2(this)" />
                                <asp:Button ID="buttonIschemic" runat="server" Style="display: none" />

                                <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server"
                                    OnCancelScript="buttonOpenIschemic" PopupControlID="Panel3" TargetControlID="buttonIschemic" BackgroundCssClass="modelBackground">
                                </asp:ModalPopupExtender>

                                <script type="text/javascript" language="javascript">
                                    function popup2(checkbox) {
                                        debugger;
                                        var uname = document.getElementById('<%=txtPatientID.ClientID%>').value;
                                        if (uname == "") {
                                            alert("Enter Patient ID!");
                                            checkbox.checked = false;
                                        }
                                        else {
                                            if (checkbox.checked) {
                                                $get('<%= buttonIschemic.ClientID %>').click();
                                                return true;
                                            }
                                        }

                                        if (close_buttonIschemic.click = true)
                                            $get('<%= butcloseIschemic.ClientID %>').click();

                                    }
                                </script>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="chkCardiomyopathy" runat="server" Text="&nbsp&nbspCardiomyopathy Heart Disease " onclick="popup4(this)" />
                                <asp:Button ID="buttonCardiomyopathy" runat="server" Style="display: none" />

                                <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server"
                                    OnCancelScript="butdone" PopupControlID="Panel4" TargetControlID="buttonCardiomyopathy" BackgroundCssClass="modelBackground">
                                </asp:ModalPopupExtender>

                                <script type="text/javascript" language="javascript">
                                    function popup4(checkbox) {
                                        debugger;
                                        var uname = document.getElementById('<%=txtPatientID.ClientID%>').value;
                                        if (uname == "") {
                                            alert("Enter Patient ID!");
                                            checkbox.checked = false;
                                        }
                                        else {
                                            if (checkbox.checked) {
                                                $get('<%= buttonCardiomyopathy.ClientID %>').click();
                                                return true;
                                            }
                                        }

                                        if (butclose1.click = true)
                                            $get('<%= ButtonCARDIOMYOPATHYClose.ClientID %>').click();

                                    }
                                </script>
                            </div>
                        </div>


                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="chkOtherHeartDisease" runat="server" Text="&nbsp&nbspOther Heart Disease " onclick="popup5(this)" />
                                <asp:Button ID="buttonOther" runat="server" Style="display: none" />

                                <asp:ModalPopupExtender ID="ModalPopupExtender5" runat="server"
                                    OnCancelScript="butdone" PopupControlID="Panel5" TargetControlID="buttonOther" BackgroundCssClass="modelBackground">
                                </asp:ModalPopupExtender>

                                <script type="text/javascript" language="javascript">
                                    function popup5(checkbox) {
                                        debugger;
                                        var uname = document.getElementById('<%=txtPatientID.ClientID%>').value;
                                        if (uname == "") {
                                            alert("Enter Patient ID!");
                                            checkbox.checked = false;
                                        }
                                        else {
                                            if (checkbox.checked) {
                                                $get('<%= buttonOther.ClientID %>').click();
                                                return true;
                                            }
                                        }

                                        if (butclose1.click = true)
                                            $get('<%= ButtonbuttonOtherClose.ClientID %>').click();

                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </div>



                <%--   ////////////////////////Overal Findings://///////////////////////--%>
                <div class="container" id="OveralFindings" runat="server" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-2">

                                    <asp:Label ID="Label164" runat="server" Text="Overal Findings"></asp:Label>

                                </div>
                                <div class="col-md-10" style="padding-bottom: 12px">


                                    <asp:TextBox class="form-control" ID="txtOveralFindings" Width="88%" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <%--   ////////////////////////Final Impression/////////////////////////--%>
                <div class="container" id="FinalImpression" runat="server" style="background-color: white; font-size: large; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-2">

                                    <asp:Label ID="Label165" runat="server" Text="Final Impression"></asp:Label>

                                </div>
                                <div class="col-md-12" style="padding-bottom: 12px">


                                    <asp:TextBox class="form-control" ID="txtFinalImpression" Height="109px" style="overflow:auto;"  TextMode="MultiLine" Width="80%" Rows="2" Columns="20" runat="server" Text="" ></asp:TextBox>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <%--   ////////////////////////CONSULTANT/UNIT   /////////////////////////--%>
                <div class="container" id="CONSULTANT" runat="server" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-2">

                                    <asp:Label ID="Label166" runat="server" Text="CONSULTANT/UNIT"></asp:Label>

                                </div>
                                <div class="col-md-10" style="padding-bottom: 12px">


                                    <asp:TextBox class="form-control" ID="txtConsultantUnit" runat="server" TextMode="MultiLine" Style="height: 58px; width: 256px;" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <%--   //////////////////////// PERFORMED BY  /////////////////////////--%>
                <div class="container" id="PERFORMEDBY" runat="server" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-5">

                                    <asp:Label ID="Label167" runat="server" Text=" PERFORMED BY"></asp:Label><span class="mandatory">*</span>

                                </div>
                                <div class="col-md-7" style="padding-bottom: 12px">


                                     <asp:DropDownList ID="drpPerformedBy" class="form-control" Width="100%"
                                        runat="server" AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        TabIndex="25" DataSourceID="SqlDataSource1" DataTextField="Staff_Name"
                                        DataValueField="Staff_ID">
                                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                        ConnectionString="<%$ ConnectionStrings:ConnectionStringKMC %>"
                                        ProviderName="System.Data.SqlClient"
                                        SelectCommand="SELECT Staff_ID, Staff_Name FROM Staff_Details WHERE  Active = 'Y'" >
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="Y" Name="Active" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top: 1%">
                            <div class="form-group form-inline">
                                <div class="col-md-5">

                                    <asp:Label ID="Label168" runat="server" Text=" ENTERED BY"></asp:Label>

                                </div>
                                <div class="col-md-7">


                                    <asp:TextBox class="form-control" ID="txtEnteredBy" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <center>
                                <div class="col-md-3">
                                   
                                   
                                </div>
                               </center>
                            <div class="col-md-6" style="padding-bottom: 12px">
                                <center>
  <%--                                   <asp:Button ID="btnSave" Visible="true" runat="server" Font-Bold="true" Text="Save" onclick="btnSave_Click"
                                        Height="31px" Width="29%"  style="background-color: #561f03; color: white;"/>
                                    <asp:Button ID="btnsubmit" runat="server" Height="31px"  
                                        Style="font-weight: 700; background-color: #561f03; color: white;" Text="Submit" Width="29%" onclick="btnSave_Click" OnClientClick="AddConfirmSubmit(this)"/>
                                    <asp:Button ID="btnPdf" runat="server" Height="31px" visible="true" enable="false" 
                                        Style="font-weight: 700;color: white;" Text="GeneratePDF" Width="29%" onclick="Button4_Click1" AutoPostBack="true"/>--%>

                                    <asp:Button ID="btnSave" Visible="true" runat="server" Font-Bold="true" Text="Save" onclick="btnSave_Click"
                                         style="background-color: #561f03;  margin-bottom:10px; color: white;"  CssClass="btn"/>
                                    <asp:Button ID="btnsubmit" runat="server"  
                                        Style="font-weight: 700; background-color: #561f03; margin-bottom:10px; color: white;" Text="Submit"   CssClass="btn"  onclick="btnSave_Click" OnClientClick="AddConfirmSubmit(this)"/>
                                    <asp:Button ID="btnPdf" runat="server"  visible="true" enable="false" 
                                        Style="font-weight: 700;  margin-bottom:10px; color: white;" Text="GeneratePDF" CssClass="btn"  onclick="Button4_Click1" AutoPostBack="true"/>


                            </div>
                            </center>


                        </div>
                    </div>
                </div>
                <div id="Div2" class="container" style="background-color: white; font-size: 13px; border: outset" visible="false" runat="server">
                    <div class="row">
                        <div class="col-md-12" style="padding-top: 1%">
                            <center>
                                <div class="col-md-3">
                                   
                                   
                                </div>
                               </center>
                            <div class="col-md-6" style="padding-bottom: 12px">
                                <center>
                                    <asp:Button ID="Button5" runat="server" Height="31px"
                                        Style="font-weight: 700" Text="Rework" Width="29%"  />
                                    <asp:Button ID="Button6" runat="server" Height="31px"
                                        Style="font-weight: 700" Text="Approve" Width="29%"  />
                            </div>
                            </center>


                        </div>
                    </div>
                </div>
            </div>
            <%--///////////////////////////////popup for CONGENITAL TYPES////////////////////////--%>

            <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Style="bottom: 10px">

                <asp:UpdatePanel ID="UpdatePanel2" CssClass="popup" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>

                        <div class="container" style="background-color: white; font-size: 13px;" runat="server" id="divCont" onscroll="v">
                            <div id="divCongenital" runat="server">
                                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                                    <div class="row">

                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label9" runat="server" Style="font-weight: 100;" Text="CONGENITAL TYPES"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkASD" Style="font-weight: 100;" runat="server" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"
                                                    Text="ASD" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkVSD" runat="server" Style="font-weight: 100;" Text="VSD" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkPDA" runat="server" Style="font-weight: 100;" Text="PDA" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkTOF" runat="server" Style="font-weight: 100;" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"
                                                    Text="TOF" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkTGA" runat="server" Text="TGA " Style="font-weight: 100;" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkEbstein_Anomaly" runat="server" Style="font-weight: 100;" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"
                                                    Text="Ebstein Anomaly" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkTA" runat="server" Text="TA" Style="font-weight: 100;" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <asp:CheckBox ID="chkDORV" runat="server" Text="DORV " Style="font-weight: 100;" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="form-group form-inline">
                                            <div class="col-md-2 ">
                                                <asp:CheckBox ID="chkFetal" runat="server" Text="Fetal " OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" Style="font-weight: 100;" />
                                            </div>
                                 
                                            <asp:RadioButtonList ID="rdbtnfetal" runat="server" RepeatDirection="Horizontal" Visible="false">
                                                <asp:ListItem Text="Normal" Value="Normal"> &nbsp; &nbsp; &nbsp;  </asp:ListItem>
                                                <asp:ListItem Text="Abnormal" Value="Abnormal">&nbsp; &nbsp; &nbsp; </asp:ListItem>
                                            </asp:RadioButtonList>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group form-inline">
                                            <div class="col-md-2">
                                                <asp:CheckBox ID="chkOTHERS" runat="server" Text="OTHERS " OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" Style="font-weight: 100;" />
                                            </div>
                                            <div class="col-md-1" style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtConOther" runat="server" TextMode="MultiLine" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <hr>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label29" runat="server" Style="font-weight: bold;"  Text=" QP" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4" style="margin-bottom:12px">
                                                    <asp:TextBox class="form-control" ID="txtQP" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label30" runat="server" Text="ml" Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label161" runat="server" Text="QS " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtQS" runat="server" Width="100%"></asp:TextBox>

                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label162" runat="server" Text="ml" Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>




                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-5">
                                                    <b>
                                                        <asp:Label ID="Label45" runat="server" Text=" AORTIC ARCH " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <%-- <div class="col-md-4">
                                <asp:CheckBox ID="TextBox1" runat="server" Text="LEFT" ></asp:CheckBox>
                            </div>
                            <div class="col-md-4">

                                <asp:CheckBox ID="Label2" runat="server" Text="RIGHT"></asp:CheckBox>
                            </div>--%>
                                                <div class="col-md-7">
                                                    <asp:RadioButtonList ID="radioAoratic" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="LEFT" Value="LEFT">   </asp:ListItem>
                                                        <asp:ListItem Text="RIGHT" Value="RIGHT"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                </div>
                                                <div class="col-md-4">
                                                </div>
                                                <div class="col-md-4">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-5">
                                                    <b>
                                                        <asp:Label ID="Label49" runat="server" Text=" SITUS" Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <%--<div class="col-md-3">
                                <asp:CheckBox ID="CheckBox8" runat="server" Text="Solitus" ></asp:CheckBox>
                            </div>
                            <div class="col-md-4">

                                <asp:CheckBox ID="CheckBox9" runat="server" Text="Inversus"></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -8%;">

                                <asp:CheckBox ID="CheckBox10" runat="server" Text="Ambiguous"></asp:CheckBox>
                            </div>--%>
                                                <div class="col-md-7">
                                                    <asp:RadioButtonList ID="radioSitus" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Solitus" Value="Solitus">   </asp:ListItem>
                                                        <asp:ListItem Text="Inversus" Value="Inversus"></asp:ListItem>
                                                        <asp:ListItem Text="Ambiguous" Value="Ambiguous"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label" runat="server" Font-Bold="true" Text=" POSITION" Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <%--<div class="col-md-4" style="margin-left: 4%;">
                                <asp:CheckBox ID="CheckBox11" runat="server" Text="Levocardia" ></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -10%;">

                                <asp:CheckBox ID="CheckBox12" runat="server" Text="Dextrocardia"></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -11%;">

                                <asp:CheckBox ID="CheckBox13" runat="server" Text="Mesocardia"></asp:CheckBox>
                            </div>--%>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioPosition" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Levocardia" Value="Levocardia">   </asp:ListItem>
                                                        <asp:ListItem Text="Dextrocardia" Value="Dextrocardia"></asp:ListItem>
                                                        <asp:ListItem Text="Mesocardia" Value="Mesocardia"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-5">
                                                    <b>
                                                        <asp:Label ID="Label61" runat="server" Text="  ATRIOVENTRICULAR RELATION  " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <%-- <div class="col-md-3">
                            </div>--%>
                                                <%-- <div class="col-md-4" style="margin-left: -4%;">

                                <asp:CheckBox ID="CheckBox15" runat="server" Text="Concordance"></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -4%;">

                                <asp:CheckBox ID="CheckBox16" runat="server" Text="Discordance"></asp:CheckBox>
                            </div>--%>
                                                <div class="col-md-7">
                                                    <asp:RadioButtonList ID="radioATRelation" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Concordance" Value="Concordance">   </asp:ListItem>
                                                        <asp:ListItem Text="Discordance" Value="Discordance"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label66" runat="server" Font-Bold="true" Text=" INTERATRIAL SEPTUM " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <%--<div class="col-md-4" style="margin-left: 5%;">
                                <asp:CheckBox ID="CheckBox17" runat="server" Text="Intact" ></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -18%;">

                                <asp:CheckBox ID="CheckBox18" runat="server" Text="PFO"></asp:CheckBox>
                            </div>
                            <div class="col-md-4" style="margin-left: -12%;">

                                <asp:CheckBox ID="CheckBox19" runat="server" Text="ASD"></asp:CheckBox>
                            </div>--%>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radiointseptum" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Intact" Value="Intact">   </asp:ListItem>
                                                        <asp:ListItem Text="PFO" Value="PFO"></asp:ListItem>
                                                        <asp:ListItem Text="ASD" Value="ASD"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>


                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-5">
                                                    <b>
                                                        <asp:Label ID="Label74" runat="server" Text=" VENTRICULAR GREAT ARTERIAL RELATION" Style="font-weight: bold;"></asp:Label></b>
                                                </div>

                                                <%-- <div class="col-md-4" style="margin-left: 16%;">

                                        <asp:CheckBox ID="CheckBox21" runat="server" Text="Concordance"></asp:CheckBox>
                                    </div>
                                    <div class="col-md-4" style="margin-left: -5%;">

                                        <asp:CheckBox ID="CheckBox22" runat="server" Text="Discordance"></asp:CheckBox>
                                    </div>--%>
                                                <div class="col-md-7">
                                                    <asp:RadioButtonList ID="radioVeGARealtion" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Concordance" Value="Concordance">   </asp:ListItem>
                                                        <asp:ListItem Text="Discordance" Value="Discordance"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label75" runat="server" Font-Bold="true" Text=" INTERVENTRICULAR SEPTUM " Style="font-weight: bold;"></asp:Label></b>
                                                </div>

                                                <%--<div class="col-md-4" style="margin-left: 23%;">

                                        <asp:CheckBox ID="CheckBox24" runat="server" Text="Intact"></asp:CheckBox>
                                    </div>
                                    <div class="col-md-4" style="margin-left: -7%;">

                                        <asp:CheckBox ID="CheckBox25" runat="server" Text="VSD"></asp:CheckBox>
                                    </div>--%>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioinSeptum" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Intact" Value="Intact">   </asp:ListItem>
                                                        <asp:ListItem Text="VSD" Value="VSD"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <hr style="font-weight: 100; color: black; height: 10px">

                            <%--////////////////////////////////////////////////ASD/////////////////////////////////////////////////--%>
                            <div id="ASD" runat="server" visible="false">
                                <div class="row">
                                    <%--  --%>
                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label81" runat="server" Style="font-weight: bold;" Text=" ASD "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label84" runat="server" Style="font-weight: bold;" Text=" ASD TYPE"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioASPType" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Size in 4CV" Value="Size in 4CV">   </asp:ListItem>
                                                        <asp:ListItem Text="Size in SCV" Value="Size in SCV"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioASDTypes" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Ostium Primum " Value="Ostium Primum ">   </asp:ListItem>
                                                        <asp:ListItem Text="Ostium Secundum" Value="Ostium Secundum"></asp:ListItem>
                                                        <asp:ListItem Text="Sinus Venosus " Value="Sinus Venosus ">   </asp:ListItem>
                                                        <asp:ListItem Text="Coronary Sinus" Value="Coronary Sinus"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label85" runat="server" Text=" SHUNT " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioShunt" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Left to Right " Value="Left to Right">   </asp:ListItem>
                                                        <asp:ListItem Text="Right to Left" Value="Right to Left"></asp:ListItem>
                                                        <asp:ListItem Text="Bidirectional " Value="Bidirectional ">   </asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                </div>
                                                <div class="col-md-4">
                                                </div>
                                                <div class="col-md-4">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label88" runat="server" Text=" PULMONARY VEINS CONNECTION " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:RadioButton ID="rdbtnPVNormal" runat="server" Text="" GroupName="grpPVconnection" Visible="true" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true" />
                                                    <label for="rdbtnPVNormal">Normal</label>
                                                    <asp:RadioButton ID="rdbtnPVAbnormal" runat="server"
                                                        GroupName="grpPVconnection" Text="" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"  Visible="true"/>
                                                    <label for="rdbtnPVAbnormal">Abnormal</label>

                                                </div>
                                                <div class="col-md-2">

                                                    <asp:TextBox class="form-control" ID="txtAb" runat="server" Visible="false"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-3">
                                                    <b>
                                                        <asp:Label ID="Label89" runat="server" Text="RIMS" Style="font-weight: bold;"></asp:Label></b>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="CheckMrim" runat="server" Text="Mitral Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtMRim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="CheckArim" runat="server" Text="Aortic Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtARim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="CheckSrim" runat="server" Text="SVC Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtSVCRim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="CheckIrim" runat="server" Text="IVC Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtIVCRim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="Checkcrim" runat="server" Text="CS Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtCSRim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 0%">
                                            <div class="form-group form-inline">

                                                <div class="col-md-5">
                                                    <asp:CheckBox ID="Checkpsrim" runat="server" Text="Posterior/Superior Rim" OnCheckedChanged="CheckBox5_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtPSRim" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label92" runat="server" Text="TEE Finding : " Style="font-weight: bold;"></asp:Label></b>
                                                </div>

                                                <div class="col-md-4" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtTEE" runat="server"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>

                                    </div>

                                </div>

                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////vsd/////////////////////////////////////////////////--%>
                            <div id="VSD" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label93" runat="server" Style="font-weight: bold;" Text=" VSD "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-1">
                                                    <b>
                                                        <asp:Label ID="Label96" runat="server" Style="font-weight: bold;" Text="TYPE OF VSD "></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioVSD" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Perimembranous" Value="Perimembranous">   </asp:ListItem>
                                                        <asp:ListItem Text="Sub-Aortic" Value="Sub-Aortic"></asp:ListItem>
                                                        <asp:ListItem Text="Inlet" Value="Inlet">   </asp:ListItem>
                                                        <asp:ListItem Text="Outlet" Value="Outlet">   </asp:ListItem>
                                                        <asp:ListItem Text="Muscular" Value="Muscular"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label97" runat="server" Style="font-weight: bold;" Text="VSD GRADIENT " Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-2" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtVsdGradient" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-1">

                                                    <asp:Label ID="Label99" runat="server" Text="mmHg " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label146" runat="server" Text=" FLOW  " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioFLOW" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Left to Right" Value="Left to Right">   </asp:ListItem>
                                                        <asp:ListItem Text="Right to Left" Value="Right to Left"></asp:ListItem>
                                                        <asp:ListItem Text="Bidirectional Shunt" Value="Bidirectional Shunt">   </asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label149" runat="server" Text=" AR " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioAR" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>


                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label150" runat="server" Text=" MR " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioMR" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>


                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label153" runat="server" Text=" LA/LV DILATION " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioDilation" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Nil" Value="Nil">   </asp:ListItem>
                                                        <asp:ListItem Text="Mild" Value="Mild"></asp:ListItem>
                                                        <asp:ListItem Text="Moderate" Value="Moderate">   </asp:ListItem>
                                                        <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label154" runat="server" Text=" RVSP :  " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-2" style="margin-bottom:12px">
                                                    <asp:TextBox class="form-control" ID="txtrvsp" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">

                                                    <asp:Label ID="Label157" runat="server" Text="mmHg   " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////PDA/////////////////////////////////////////////////--%>
                            <div id="PDA" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label158" runat="server" Style="font-weight: bold;" Text=" PDA "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label169" runat="server" Style="font-weight: bold;" Text="  SIZE OF PDA " Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4" style="margin-bottom:12px">
                                                    <asp:TextBox class="form-control" ID="txtPDA" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label175" runat="server" Text="mm    " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label176" runat="server" Style="font-weight: bold;" Text=" SIZE OF AMPULA  " Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtAmpula" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label179" runat="server" Text="mm    " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label180" runat="server" Style="font-weight: bold;" Text="PDA GRADIENT " Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4" style="margin-bottom:12px">
                                                    <asp:TextBox class="form-control" ID="txtPdaGradient" runat="server" Width="100%"></asp:TextBox>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label183" runat="server" Style="font-weight: bold;" Text="BI-VENTRICULAR SYSTOLIC FUNCTION"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioBIFunction" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Normal" Value="Normal">   </asp:ListItem>
                                                        <asp:ListItem Text="Dysfunction" Value="Dysfunction"></asp:ListItem>


                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">

                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label184" runat="server" Style="font-weight: bold;" Text="DUCTAL TYPE "></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioDuctal" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Tubular" Value="Tubular">   </asp:ListItem>
                                                        <asp:ListItem Text="Window" Value="Window"></asp:ListItem>
                                                        <asp:ListItem Text="Vertical" Value="Vertical">   </asp:ListItem>
                                                        <asp:ListItem Text="Cone" Value="Cone"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">

                                        <div class="col-md-7" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label189" runat="server" Style="font-weight: bold;" Text="SHUNT "></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radiopdaShunt" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Left to Right" Value="Left to Right">   </asp:ListItem>
                                                        <asp:ListItem Text="Right to Left" Value="Right to Left"></asp:ListItem>
                                                        <asp:ListItem Text="Bidirectional" Value="Bidirectional">   </asp:ListItem>


                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-5" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label190" runat="server" Style="font-weight: bold;" Text="PATENT DUCTUS ARTERIOSUS  "></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioArteriosus" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Small" Value="Small">   </asp:ListItem>
                                                        <asp:ListItem Text="Moderate" Value="Moderate"></asp:ListItem>
                                                        <asp:ListItem Text="Large" Value="Large">   </asp:ListItem>


                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label191" runat="server" Text=" LA/LV DILATION " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-8">
                                                    <asp:RadioButtonList ID="radioPDADilation" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Nil" Value="Nil">   </asp:ListItem>
                                                        <asp:ListItem Text="Mild" Value="Mild"></asp:ListItem>
                                                        <asp:ListItem Text="Moderate" Value="Moderate">   </asp:ListItem>
                                                        <asp:ListItem Text="Severe" Value="Severe">   </asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label192" runat="server" Text=" RVSP :  " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-2" style="margin-bottom:12px">
                                                    <asp:TextBox class="form-control" ID="txtPDArvsp" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-2">

                                                    <asp:Label ID="Label193" runat="server" Text="mmHg   " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////TOF/////////////////////////////////////////////////--%>
                            <div id="TOF" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label194" runat="server" Style="font-weight: bold;" Text=" TOF "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label195" runat="server" Style="font-weight: bold;" Text="NAKATA INDEX"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:TextBox class="form-control" ID="txtNIndex" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label196" runat="server"> (300mm<sup>2</sup>/m<sup>2</sup>)(CSA(RPA+LPA))/BSA </asp:Label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label197" runat="server" Style="font-weight: bold;" Text="MCGOON RATIO"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtMRatio" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label198" runat="server">(RPA+LPA/Des. Aorta)</asp:Label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////  TGA/////////////////////////////////////////////////--%>
                            <div id="TGA" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label199" runat="server" Style="font-weight: bold;" Text="   TGA "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label200" runat="server" Style="font-weight: bold;" Text="COMMENT"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtTGAComment" Width="253%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////  EBSTEIN ANOMALY/////////////////////////////////////////////////--%>
                            <div id="EBSTEIN_ANOMALY" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label201" runat="server" Style="font-weight: bold;" Text="EBSTEIN ANOMALY"></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label202" runat="server" Style="font-weight: bold;" Text="CELERMAJER INDEX"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtCIndex" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label203" runat="server"> cm<sup>2</sup> </asp:Label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-12" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label204" runat="server" Style="font-weight: bold;" Text="RATIO "></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioAnoRatio" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Grade1 (<0.5)" Value="Grade1 (<0.5)">   </asp:ListItem>
                                                        <asp:ListItem Text="Grade2 (0.5-0.9)" Value="Grade2 (0.5-0.9)"></asp:ListItem>
                                                        <asp:ListItem Text="Grade3 (1.0-1.49)" Value="Grade3 (1.0-1.49)">   </asp:ListItem>
                                                        <asp:ListItem Text="Grade4 (>=1.5)" Value="Grade4 (>=1.5)">   </asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                            </div>
                            <%--//////////////////////////////////////////////// TA/////////////////////////////////////////////////--%>
                            <div id="TA" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label205" runat="server" Style="font-weight: bold;" Text="TA"></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label206" runat="server" Style="font-weight: bold;" Text="COMMENT"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtTAComment" Width="253%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <hr />
                            </div>
                            <%--////////////////////////////////////////////////    DORV/////////////////////////////////////////////////--%>
                            <div id="DORV" runat="server" visible="false">
                                <div class="row">

                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b><u>
                                                <asp:Label ID="Label207" runat="server" Style="font-weight: bold;" Text="DORV"></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="container" style="background-color: white; font-size: 13px; border: solid; border-color: lightgray">
                                    <div class="row">
                                        <div class="col-md-8" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-2">
                                                    <b>
                                                        <asp:Label ID="Label208" runat="server" Style="font-weight: bold;" Text="COMMENT"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6" style="margin-bottom:12px">

                                                    <asp:TextBox class="form-control" ID="txtDORVComment" Width="253%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <hr />
                            </div>
                            <center>
                 <asp:Button ID="butdone" runat="server" Text="Done"  font-size="16px" onclick="Click_open_buttonCongenital"/>
                    <asp:Button ID="butclose" runat="server" Text="Close"  font-size="16px" onclick="close_button"/>

                </center>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>




            <%--///--%>
            <%--///////////////////////////////VALVULAR TYPES////////////////////////--%>

            <asp:Panel ID="Panel2" runat="server" ScrollBars="Both" Style="bottom: 10px">

                <asp:UpdatePanel ID="UpdatePanel3" CssClass="popup" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>

                        <div class="container" id="divValvular" runat="server" style="background-color: white; font-size: 13px; border: outset">
                            <div class="row">

                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label209" runat="server" Style="font-weight: bold;" Text=" VALVULAR TYPES "></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckMS" Style="font-weight: 100;" runat="server" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true"
                                            Text="MS" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckMR" runat="server" Style="font-weight: 100;" Text="MR " OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckAS" runat="server" Style="font-weight: 100;" Text="AS " OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckAR" runat="server" Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true"
                                            Text="AR " />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckPS" runat="server" Text="PS  " Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckPR" runat="server" Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true"
                                            Text="PR" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <asp:CheckBox ID="CheckMV" runat="server" Text="MV" Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">
                                        <asp:CheckBox ID="CheckTS" runat="server" Text="TS " Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />

                                    </div>
                                    <div class="col-md-6"  style="margin-bottom:12px">
                                        <asp:TextBox class="form-control" Visible="false" ID="txtTS" runat="server" Width="80%" TextMode="MultiLine" />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="form-group form-inline">
                                    <div class="col-md-2"  style="margin-bottom:12px">
                                        <asp:CheckBox ID="CheckTR" runat="server" Text="TR  " Style="font-weight: 100;" OnCheckedChanged="CheckBoxChecked" AutoPostBack="true" />
                                    </div>
                                    <div class="col-md-6" style="margin-bottom:12px">
                                        <asp:TextBox class="form-control" Visible="false" ID="txtTR" runat="server" Width="80%" TextMode="MultiLine" />
                                    </div>
                                </div>
                            </div>





                            <%--////////////////////////////////////////////////     VALVULAR TYPES /////////////////////////////////////////////////--%>

                            <%--////////////////////////////////////////////////     MS    //////////////////////////////////////////////////////////--%>

                            <div id="Div3" class="container"  runat="server"  style="background-color: white; font-size: 13px; border: outset">

                                <div id="Div4" class="row" runat="server">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">

                                                <asp:Label ID="Label210" runat="server" Style="font-weight: bold;" Text="Prosthetic Valve :"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="col-md-4" style="margin-top: -3%;">

                                            <asp:TextBox class="form-control" ID="txtprosthetic_valve" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                        </div>

                                    </div>
                                </div>
                                <div  runat="server" id="valvular_MS"  visible="false">
                                    <div class="row">

                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label211" runat="server" Style="font-weight: bold;" Text="MS"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label212" runat="server" Style="font-weight: bold;" Text=" Gradient" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtGradient" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label213" runat="server" Text=" mmHg  " Width="100%"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label214" runat="server" Text=" Valvular by 2DE   " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtValvular_by_2DE" runat="server" Width="100%"></asp:TextBox>

                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label215" runat="server" Width="100%">Cm<sup>2</sup></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label216" runat="server" Style="font-weight: bold;" Text=" Valvular by PHT " Width="100%"></asp:Label></b>
                                                </div>
                                                <div class="col-md-4">
                                                    <asp:TextBox class="form-control" ID="txtValvular_by_PHT" runat="server" Width="100%"></asp:TextBox>
                                                </div>
                                                <div class="col-md-4">

                                                    <asp:Label ID="Label217" runat="server" Width="100%">Cm<sup>2</sup></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label218" runat="server" Text="  SubValvular Pathology " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">

                                                    <asp:RadioButtonList ID="radioSubValvular_Pathology" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Mild" Value="Mild">   </asp:ListItem>
                                                        <asp:ListItem Text="Moderate" Value="Moderate"></asp:ListItem>
                                                        <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                                <div class="col-md-2">
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label219" runat="server" Text="SubValvular Pathology" Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">

                                                    <asp:RadioButtonList ID="radioSubValvular_Pathology1" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Significant" Value="Significant">   </asp:ListItem>
                                                        <asp:ListItem Text="Insignificant" Value="Insignificant"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label220" runat="server" Text=" AML Calcification " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">

                                                    <asp:RadioButtonList ID="radioAML_Calcification" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>
                                                        <asp:ListItem Text="Spects" Value="Spects"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label221" runat="server" Text="Pml Calcification" Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioPml_Calcification" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>
                                                        <asp:ListItem Text="Spects" Value="Spects"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label222" runat="server" Text=" MR " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioMRValu" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Mild" Value="Mild">   </asp:ListItem>
                                                        <asp:ListItem Text="Moderate" Value="Moderate"></asp:ListItem>
                                                        <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label223" runat="server" Text="LA appandage Clot " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-7">
                                                    <asp:RadioButtonList ID="radioLA_appandage_Clot" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>
                                                        <asp:ListItem Text="Not visible" Value="Not visible"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label224" runat="server" Text="MR Jet " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioMR_Jet" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Central" Value="Central">   </asp:ListItem>
                                                        <asp:ListItem Text="Centric" Value="Centric"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label225" runat="server" Text="LA Size " Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="radioLA_Size" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Normal" Value="Normal">   </asp:ListItem>
                                                        <asp:ListItem Text="Mod" Value="Mod"></asp:ListItem>
                                                        <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6" style="padding-top: 1%">
                                            <div class="form-group form-inline">
                                                <div class="col-md-4">
                                                    <b>
                                                        <asp:Label ID="Label226" runat="server" Text="LA Spontoneous echo contrast" Style="font-weight: bold;"></asp:Label></b>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:RadioButtonList ID="rdioLA_Spontoneous_echo_contrast" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>

                                                    </asp:RadioButtonList>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <%--////////////////////////////////////////////////  MR /////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_MR" runat="server" visible="false" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label227" runat="server" Style="font-weight: bold;" Text="MR"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label228" runat="server" Style="font-weight: bold;" Text="  ROA  " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtROA" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label229" runat="server" Width="100%">cm<sup>2</sup>(by Pisa Method) </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label230" runat="server" Text="REGURGITANT VOLUME " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRegurgitant_Volume" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label231" runat="server" Text="ml" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label232" runat="server" Style="font-weight: bold;" Text="REGURGITANT FRACTION" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRegurgitant_Fraction" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label233" runat="server" Text="% " Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label234" runat="server" Text="VENA CONTRACTA" Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtVena_Contracta" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label235" runat="server" Text="mm " Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>




                            <%--////////////////////////////////////////////////    AS /////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_AS" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label236" runat="server" Style="font-weight: bold;" Text="  AS"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label237" runat="server" Style="font-weight: bold;" Text="  ROA  " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtLvot_Velocity" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label238" runat="server" Width="100%">m/s </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label239" runat="server" Text="LVOT DIAMETER" Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtLvot_Diameter" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label240" runat="server" Text="mm" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label241" runat="server" Style="font-weight: bold;" Text="  LVOT VTI    " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtLvot_Vti" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label242" runat="server" Text=" ms " Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--////////////////////////////////////////////////   AR /////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_AR" runat="server" visible="false" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label244" runat="server" Style="font-weight: bold;" Text=" AR"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label245" runat="server" Style="font-weight: bold;" Text="ARPHT  " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtARPHT" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label248" runat="server" Width="100%">ms </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label249" runat="server" Text="REGURGITANT VOLUME  " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRegurgitant_VolumeAR" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label252" runat="server" Text="ml" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label253" runat="server" Style="font-weight: bold;" Text=" ROA" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtROAAR" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label256" runat="server" Width="100%">cm<sup>2</sup> (by Pisa Method)  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label257" runat="server" Text=" REGURGITANT FRACTION " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRegurgitant_FractionAR" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label260" runat="server" Text="%" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label261" runat="server" Style="font-weight: bold;" Text=" VENA CONTRACTA " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtVena_ContractaAR" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label264" runat="server" Width="100%">mm  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label265" runat="server" Text=" AR jet WIDTH " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtArjet_Width" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label270" runat="server" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>




                            <%--////////////////////////////////////////////////     PS /////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_PS" runat="server" visible="false" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label271" runat="server" Style="font-weight: bold;" Text="PS" Width="100%"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label272" runat="server" Style="font-weight: bold;" Text="PULMONARY VTI" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtPulmonary_VTI" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label273" runat="server">ms </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label274" runat="server" Text=" RVOT VELOCITY    " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRVOT_velocity" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label275" runat="server" Text="m/s" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label276" runat="server" Style="font-weight: bold;" Text="RVOT DIMENSION   " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRVOT_Dimension" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label277" runat="server" Width="100%">  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label278" runat="server" Text="RVOT VTI " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRVOT_VTI" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label279" runat="server" Text="ms" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label280" runat="server" Style="font-weight: bold;" Text="MCGOON RATIO" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtPulmonary_Valve_Area_By_Continuity" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label281" runat="server" Width="100%">  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label282" runat="server" Text="RPA DIMENSION   " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRPA_Dimension" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label283" runat="server" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label284" runat="server" Style="font-weight: bold;" Text=" LPA DIMENSION " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtIPA_Dimension" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label285" runat="server" Width="100%">  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label286" runat="server" Text="NAKATA INDEX  " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtNakata_Index" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label287" runat="server" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-8">
                                                <b>
                                                    <asp:Label ID="Label288" runat="server" Style="font-weight: bold;" Text="  PULMONARY VALVE AREA BY CONTINUITY EQUATION " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtMcgoon_Ratio" runat="server" Width="100%"></asp:TextBox>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--////////////////////////////////////////////////     PR/////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_PR" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label289" runat="server" Style="font-weight: bold;" Text="PR"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label290" runat="server" Style="font-weight: bold;" Text="PRPHT  " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtPRPHT" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label291" runat="server" Width="100%">ms </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label292" runat="server" Text="      ROA         " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtROAPR" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label293" runat="server" Width="100%">cm<sup>2</sup></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label294" runat="server" Style="font-weight: bold;" Text="REGURGITANT VOLUME       " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtREGURGITANT_VOLUMEPR" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label295" runat="server" Width="100%"> ml </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label296" runat="server" Text="REGURGITANT FRACTION " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtREGURGITANT_FRACTIONPR" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label297" runat="server" Width="100%">%</asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label298" runat="server" Style="font-weight: bold;" Text=" PRPPG " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtPRPPG" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label299" runat="server" Width="100%">  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label300" runat="server" Text="   PREDPG     " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtPREDPG" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label301" runat="server" Width="100%"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label302" runat="server" Style="font-weight: bold;" Text="REDUCTANCE WAVE " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtREDUCTANCE_WAVE" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label303" runat="server" Width="100%">  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>



                            <%--////////////////////////////////////////////////     MV/////////////////////////////////////////////////--%>

                            <div class="container" id="valvular_MV" runat="server" visible="false" style="background-color: white; font-size: 13px; border: outset">
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b><u>
                                                    <asp:Label ID="Label304" runat="server" Style="font-weight: bold;" Text="MV"></asp:Label></u></b>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label305" runat="server" Style="font-weight: bold;" Text="Mitral valve area by 2DE " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtMitral_valve_area_by_2DE" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label306" runat="server" Width="100%">cm<sup>2</sup></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label307" runat="server" Text=" Mitral valve area by PHT" Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtMitral_valve_area_by_PHT" runat="server" Width="100%"></asp:TextBox>

                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label308" runat="server" Width="100%">cm<sup>2</sup></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label309" runat="server" Style="font-weight: bold;" Text="Mitral valve gradient " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtMitral_valve_gradient" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label310" runat="server" Width="100%"> mmHg </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label311" runat="server" Text="Mitral valve " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-7">
                                                <asp:RadioButtonList ID="RadioMitral_valve" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="calcific" Value="calcific">   </asp:ListItem>
                                                    <asp:ListItem Text="Non-calcific" Value="Non-calcific"></asp:ListItem>
                                                    <asp:ListItem Text="Fibrous" Value="Fibrous"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label312" runat="server" Style="font-weight: bold;" Text="Tricuspid valve gradient " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtTricuspid_valve_gradient" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label313" runat="server" Width="100%">mmHg  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label314" runat="server" Text="Tricuspid regurgitation" Style="font-weight: bold;"></asp:Label></b>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:RadioButtonList ID="RadioTricuspid_regurgitation" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="Mild" Value="Mild">   </asp:ListItem>
                                                    <asp:ListItem Text="Mod" Value="Mod"></asp:ListItem>
                                                    <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label315" runat="server" Style="font-weight: bold;" Text="RVSP" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtRVSPMV" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label316" runat="server" Width="100%"> mmHg+RAP </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label317" runat="server" Style="font-weight: bold;" Text="Aortic gradient " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:TextBox class="form-control" ID="txtAortic_gradient" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label318" runat="server" Width="100%"> mmHg  </asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label319" runat="server" Text="AS" Style="font-weight: bold;"></asp:Label></b>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:RadioButtonList ID="RadioAS" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="Mild" Value="Mild">   </asp:ListItem>
                                                    <asp:ListItem Text=" Mild Mod" Value=" Mild Mod"></asp:ListItem>
                                                    <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label320" runat="server" Text="AR Severity" Style="font-weight: bold;"></asp:Label></b>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:RadioButtonList ID="RadioAR_Severity" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="Mild" Value="Mild">   </asp:ListItem>
                                                    <asp:ListItem Text=" Mild Mod" Value=" Mild Mod"></asp:ListItem>
                                                    <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6" style="padding-top: 1%">
                                        <div class="form-group form-inline">
                                            <div class="col-md-4">
                                                <b>
                                                    <asp:Label ID="Label321" runat="server" Style="font-weight: bold;" Text="AVA by continuity equation " Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-4"  style="margin-bottom:12px">
                                                <asp:TextBox class="form-control" ID="txtAVA_by_continuity_equation" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">

                                                <asp:Label ID="Label322" runat="server" Width="100%"> cm<sup>2</sup></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <center>
                 <asp:Button ID="butdone1" runat="server" Text="Done"  font-size="16px" onclick="Click_open_buttonValvular"/>
                    <asp:Button ID="butclose1" runat="server" Text="Close"  font-size="16px" onclick="close_button1"/>

                </center>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>



            <%--///--%>
            <%--///////////////////////////////ischemic TYPES////////////////////////--%>

            <asp:Panel ID="Panel3" runat="server" ScrollBars="Both" Style="bottom: 10px">

                <asp:UpdatePanel ID="UpdatePanel4" CssClass="popup" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>
                        <div class="container" style="background-color: white; font-size: 13px; border: outset">
                            <div class="row">
                                <div class="col-md-6" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-6">
                                            <b><u>
                                                <asp:Label ID="Label323"  runat="server" Style="font-weight: bold;" Text=" ISCHEMIC HEART DISEASE "></asp:Label></u></b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">
                                            <b>
                                                <asp:Label ID="Label324" runat="server" Style="font-weight: bold;" Text="ISCHEMIC TYPE   "></asp:Label></b>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:RadioButton ID="RadioNormokinetic"  GroupName="ISCHEMIC" runat="server" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                               
                                            </asp:RadioButton>
                                             <label for="RadioNormokinetic">Normokinetic</label>
                                            </div>
                                             <div class="col-md-2">
                                               <asp:RadioButton ID="RadioHypokinetic" runat="server" Text="Hypokinetic" GroupName="ISCHEMIC" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                               
                                            </asp:RadioButton>
                                                  <label for="RadioHypokinetic">Hypokinetic</label>
                                                   </div>
                                             <div class="col-md-2">
                                               <asp:RadioButton ID="RadioAkinetic" runat="server" Text="" GroupName="ISCHEMIC" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                               
                                            </asp:RadioButton>
                                                  <label for="RadioAkinetic">Akinetic</label>
                                                   </div>
                                             <div class="col-md-2">
                                               <asp:RadioButton ID="RadioDyskinetic" runat="server" Text="" GroupName="ISCHEMIC" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                              
                                            </asp:RadioButton>
                                                  <label for="RadioDyskinetic">Dyskinetic</label>
                                                   </div>
                                             <div class="col-md-2">
                                               <asp:RadioButton ID="RadioAneurysm" runat="server" Text="" GroupName="ISCHEMIC" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                              
                                            </asp:RadioButton>
                                                  <label for="RadioAneurysm">Aneurysm</label>
                                                   </div>
                                             <div class="col-md-2">
                                               <asp:RadioButton ID="RadioPseudoaneurysm" runat="server" Text="" GroupName="ISCHEMIC" RepeatDirection="Horizontal" Visible="true" Width="100%">
                                               
                                            </asp:RadioButton>
                                                  <label for="RadioPseudoaneurysm">Pseudoaneurysm</label>
                                                   </div>
                                             <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtcomment" runat="server" Width="100%"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">
                                            <b>
                                                <asp:Label ID="Label325" runat="server" Text=" LV SYSTOLIC" Style="font-weight: bold;"></asp:Label></b>
                                        </div>
                                        <div class="col-md-10">

                                            <asp:RadioButton ID="RadioNormal" runat="server" Text="" GroupName="SYSTOLIC" RepeatDirection="Horizontal" Visible="true">
                                                

                                            </asp:RadioButton>
                                            <label for="RadioNormal">Normal</label>
                                             <asp:RadioButton ID="RadioMildDysfunctio" runat="server" Text="" GroupName="SYSTOLIC" RepeatDirection="Horizontal" Visible="true">
                                                

                                            </asp:RadioButton>
                                             <label for="RadioMildDysfunctio">Mild Dysfunction</label>
                                             <asp:RadioButton ID="radioModerateDysfunction" runat="server" Text="" GroupName="SYSTOLIC" RepeatDirection="Horizontal" Visible="true">
                                               

                                            </asp:RadioButton>
                                             <label for="radioModerateDysfunction">Moderate Dysfunction</label>
                                             <asp:RadioButton ID="RadioSevere" runat="server" Text="" GroupName="SYSTOLIC" RepeatDirection="Horizontal" Visible="true">
                                               
                                            </asp:RadioButton>
                                             <label for="RadioSevere">Severe</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b>
                                                <asp:Label ID="Label326" runat="server" Style="font-weight: bold;" Text="RIGHT VENTRICULAR FUNCTION  "></asp:Label></b>
                                        </div>
                                        <div class="col-md-6">

                                            <asp:RadioButtonList ID="RadioRIGHTVENTRICULARFUNCTION" runat="server" RepeatDirection="Horizontal" Visible="true">
                                                <asp:ListItem Text="Normal" Value="Normal">   </asp:ListItem>
                                                <asp:ListItem Text="Impaired" Value="Impaired"></asp:ListItem>



                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">
                                            <b>
                                                <asp:Label ID="Label327" runat="server" Text="LV DIASTOLIC DYSFUNCTION   " Style="font-weight: bold;"></asp:Label></b>
                                        </div>
                                        <div class="col-md-10">
                                            <asp:RadioButtonList ID="RadioLVDIASTOLICDYSFUNCTION" runat="server" RepeatDirection="Horizontal" Visible="true">
                                                <asp:ListItem Text="Nill" Value="Nill">   </asp:ListItem>
                                                <asp:ListItem Text="Mild" Value="Mild"></asp:ListItem>
                                                <asp:ListItem Text="Moderate" Value="Moderate">   </asp:ListItem>
                                                <asp:ListItem Text="Severe" Value="Severe"></asp:ListItem>


                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">
                                            <b>
                                                <asp:Label ID="Label328" runat="server" Style="font-weight: bold;" Text=" LV CLOT "></asp:Label></b>
                                        </div>
                                        <div class="col-md-2">

                                         <asp:RadioButton ID="RadioCLOT1" runat="server"
                                                GroupName="CLOT1" Text="" OnCheckedChanged="ISCHEMIC_CheckBoxChecked" AutoPostBack="true" />
                                             <label for="RadioCLOT1">Present</label>
                                        </div>
                                        <div class="col-md-2" id="txtpreLV" visible="false" runat="server">

                                            <asp:TextBox class="form-control" ID="txtCLOT1" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                         <div class="col-md-1" id="DivMMClot" visible="false" runat="server">

                                            <asp:Label ID="Label418" runat="server" width="100%" Style="font-weight: 100;" Text="mm"></asp:Label>
                                        </div>
                                        <div class="col-md-2">

                                           <asp:RadioButton ID="RadioCLOT2" runat="server"
                                                GroupName="CLOT1" Text="" OnCheckedChanged="ISCHEMIC_CheckBoxChecked" AutoPostBack="true" />
                                             <label for="RadioCLOT2">Absent</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">
                                            <b>
                                                <asp:Label ID="Label329" runat="server" Text="PERICARDIAL EFFUSION" Style="font-weight: bold;"></asp:Label></b>
                                        </div>
                                        <div class="col-md-1">
                                            <asp:RadioButton ID="RadioEffusion1" runat="server" Text="Present" GroupName="EFFUSION" OnCheckedChanged="ISCHEMIC_CheckBoxChecked" AutoPostBack="true" />


                                            <label for="RadioEffusion1">Present</label>

                                        </div>
                                        <div id="DivAntr" visible="false" runat="server">
                                            <div class="col-md-1">
                                                <b>
                                                    <asp:Label ID="Label330" runat="server" Style="font-weight: 100;" Text="Antirior to RV"></asp:Label></b>
                                            </div>
                                            <div class="col-md-2">
                                                <asp:TextBox class="form-control" ID="txtPericardial_Antrv" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-1">
                                                <asp:Label ID="Label331" runat="server" Text="mm" Width="100%"> </asp:Label>
                                            </div>
                                            <div class="col-md-1">
                                                <b>
                                                    <asp:Label ID="Label332" runat="server" Style="font-weight: 100;" Text="Posterior to RV" Width="100%"></asp:Label></b>
                                            </div>
                                            <div class="col-md-2">
                                                <asp:TextBox class="form-control" ID="txtPericardial_Postrv" runat="server" Width="100%"></asp:TextBox>
                                            </div>
                                            <div class="col-md-1">
                                                <asp:Label ID="Label333" runat="server" Width="100%"> mm</asp:Label>
                                            </div>
                                        </div>

                                        <div class="col-md-1">

                                            <asp:RadioButton ID="RadioEffusion2" runat="server"
                                                GroupName="EFFUSION" Text="" OnCheckedChanged="ISCHEMIC_CheckBoxChecked" AutoPostBack="true" />
                                            <label for="RadioEffusion2">Absent</label>


                                        </div>

                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b>
                                                <asp:Label ID="Label334" runat="server" Width="100%" Style="font-weight: bold;" Text="MR      "></asp:Label></b>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:TextBox class="form-control" ID="txtMR" runat="server" Width="100%"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b>
                                                <asp:Label ID="Label335" runat="server" Style="font-weight: bold;" Text="LV VOLUME " Width="100%"></asp:Label></b>
                                        </div>
                                        <div class="col-md-6">

                                            <asp:RadioButtonList ID="RadioLv_Clauser_Dimension" runat="server" RepeatDirection="Horizontal" Visible="true">
                                                <asp:ListItem Text="Normal" Value="Normal">   </asp:ListItem>
                                                <asp:ListItem Text="Dilated" Value="Dilated">   </asp:ListItem>

                                            </asp:RadioButtonList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-6" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-4">
                                            <b>
                                                <asp:Label ID="Label336" runat="server" Text=" SCAR SEGMENT  " Style="font-weight: bold;" Width="100%"></asp:Label></b>
                                        </div>
                                        <div class="col-md-8">
                                            <asp:RadioButtonList ID="RadioScar_Segment" runat="server" RepeatDirection="Horizontal" Visible="true">
                                                <asp:ListItem Text="Present" Value="Present">   </asp:ListItem>
                                                <asp:ListItem Text="Absent" Value="Absent">   </asp:ListItem>

                                            </asp:RadioButtonList>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <center>
                 <asp:Button ID="buttonOpenIschemic" runat="server" Text="Done"  font-size="16px" onclick="Click_open_buttonIschemic"/>
                    <asp:Button ID="butcloseIschemic" runat="server" Text="Close"  font-size="16px" onclick="check_close_buttonIschemic"/>

                </center>
                        </div>



                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>

            <%--///--%>
            <%--///////////////////////////////CARDIOMYOPATHY TYPES////////////////////////--%>

            <asp:Panel ID="Panel4" runat="server" ScrollBars="Both" Style="bottom: 10px">

                <%--<asp:UpdatePanel ID="UpdatePanel4" CssClass="popup" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">

                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <b><u>
                                    <asp:Label ID="Label337" runat="server" Style="font-weight: bold;" Text="CARDIOMYOPATHY TYPES "></asp:Label></u></b>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckHCM" Style="font-weight: 100;" runat="server"
                                    Text="HCM  " OnCheckedChanged="CheckBoxCheckedCARDIOMYOPATHY" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckRCM" runat="server" Style="font-weight: 100;" Text="RCM " OnCheckedChanged="CheckBoxCheckedCARDIOMYOPATHY" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckDCM" runat="server" Style="font-weight: 100;" Text="DCM " OnCheckedChanged="CheckBoxCheckedCARDIOMYOPATHY" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>

                    <%--        //////////////////////////////////HCM////////////////////////////////--%>
                    <div class="Container" id="Card_HCM" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                        <div class="row">
                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <b><u>
                                        <asp:Label ID="Label338" runat="server" Style="font-weight: bold;" Text="HCM "></asp:Label></u></b>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label339" runat="server" Style="font-weight: bold;" Text=" IVS/PW RATIO  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_PW_Ratio" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label340" runat="server" Width="100%">(>1.3)  </asp:Label>
                                    </div>
                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label341" runat="server" Style="font-weight: bold;" Text=" LVOT PPG" Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVOT_PPG" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label342" runat="server" Width="100%">mmHg </asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label343" runat="server" Style="font-weight: bold;" Text=" LV INTRACAVITY GRADIENT " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtLV_Intracavity_Gradient" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">

                                        <asp:Label ID="Label344" runat="server" Width="100%"></asp:Label>
                                    </div>

                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2" style="padding-bottom: 14px;">

                                        <asp:Label ID="Label345" runat="server" Style="font-weight: bold;" Text="SAM GRADE " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtSAM_Grade" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2">

                                        <asp:Label ID="Label346" runat="server" Width="100%"></asp:Label>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    <%--        //////////////////////////////////  RCM////////////////////////////////--%>
                    <div class="Container" id="Card_RCM" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">

                        <div class="row" visible="false">

                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <b><u>
                                        <asp:Label ID="Label347" runat="server" Style="font-weight: bold;" Text="  RCM "></asp:Label></u></b>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <b><u>
                                        <asp:Label ID="Label348" runat="server" Style="font-weight: bold;" Text="TISSUE DOPPLER " Width="100%"></asp:Label></u></b>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label349" runat="server" Style="font-weight: bold;" Text="IVS E'  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_E" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label350" runat="server" Width="100%">m/s </asp:Label>
                                    </div>
                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label351" runat="server" Style="font-weight: bold;" Text="  IVS A'  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_A" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label352" runat="server" Width="100%">m/s </asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label353" runat="server" Style="font-weight: bold;" Text=" IVS S  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_S" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label354" runat="server" Width="100%">m/s </asp:Label>
                                    </div>

                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label355" runat="server" Style="font-weight: bold;" Text="LW E'    " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtLW_E" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label356" runat="server" Width="100%">m/s </asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label357" runat="server" Style="font-weight: bold;" Text=" LW A'  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtLW_A" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label358" runat="server" Width="100%">m/s </asp:Label>
                                    </div>
                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label359" runat="server" Style="font-weight: bold;" Text=" LW S   " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtLW_S" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label360" runat="server" Width="100%">m/s</asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label361" runat="server" Style="font-weight: bold;" Text=" E/E' (IVS)  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtE_E_IVS" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label362" runat="server" Width="100%"></asp:Label>
                                    </div>

                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label363" runat="server" Style="font-weight: bold;" Text=" E/E' (LW)    " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtE_E_LW" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label364" runat="server" Width="100%"></asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label365" runat="server" Style="font-weight: bold;" Text="  RV S  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2" style="padding-bottom: 14px;">
                                        <asp:TextBox class="form-control" ID="txtRV_S" runat="server" Width="100%"></asp:TextBox>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                    <%--        //////////////////////////////////  DCM////////////////////////////////--%>
                    <div class="Container" id="Card_DCM" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">

                        <div class="row" visible="false">

                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <b><u>
                                        <asp:Label ID="Label366" runat="server" Style="font-weight: bold;" Text="  DCM "></asp:Label></u></b>
                                </div>

                            </div>
                        </div>

                        <div class="row">

                            <div class="form-group form-inline">
                                <div class="col-md-4">
                                    <b><u>
                                        <asp:Label ID="Label367" runat="server" Style="font-weight: bold;" Text=" TISSUE SYNCHRONIZATION IMAGING  " Width="100%"></asp:Label></u></b>
                                </div>
                                <div class="col-md-2">

                                    <asp:Label ID="Label368" runat="server" Width="100%"></asp:Label>
                                </div>
                            </div>
                            <div class="form-group form-inline">
                                <div class="col-md-2">

                                    <asp:Label ID="Label369" runat="server" Style="font-weight: bold;" Text="  IVS TO PW DELAY/M-MODE   " Width="100%"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox class="form-control" ID="txtIVS_to_PW_Delay" runat="server" Width="100%"></asp:TextBox>
                                </div>
                                <div class="col-md-2" style="">

                                    <asp:Label ID="Label370" runat="server" Width="100%">ms</asp:Label>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label371" runat="server" Style="font-weight: bold;" Text=" Q TO PV     " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtQ_to_PV" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label372" runat="server" Width="100%">ms </asp:Label>
                                    </div>
                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label373" runat="server" Style="font-weight: bold;" Text=" Q TO AV  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtQ_to_AV" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label374" runat="server" Width="100%">ms </asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label375" runat="server" Style="font-weight: bold;" Text="IVS TO LW DELAY/TSI " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_to_LW_Delay" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label376" runat="server" Width="100%">ms </asp:Label>
                                    </div>

                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label377" runat="server" Style="font-weight: bold;" Text="  IVS TO PW    " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtIVS_to_PW" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label378" runat="server" Width="100%">ms </asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label379" runat="server" Style="font-weight: bold;" Text="BASAL MAXIMUM DELAY   " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtBasal_Maximum_Delay" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label380" runat="server" Width="100%">m/s </asp:Label>
                                    </div>
                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label381" runat="server" Style="font-weight: bold;" Text=" BASAL SD " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtBasal_SD" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label382" runat="server" Width="100%">ms</asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label383" runat="server" Style="font-weight: bold;" Text="ALL SEGMENT MAXIMUM DELAY " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtAll_Segment_Maximum_Delay" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label384" runat="server" Width="100%">ms</asp:Label>
                                    </div>

                                </div>
                                <div class="form-group form-inline">
                                    <div class="col-md-2">

                                        <asp:Label ID="Label385" runat="server" Style="font-weight: bold;" Text=" ALL SEGMENT SD  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2" style="padding-bottom: 14px;">
                                        <asp:TextBox class="form-control" ID="txtAll_Segment_SD" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label386" runat="server" Width="100%">ms</asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <center>
                 <asp:Button ID="buttonCARDIOMYOPATHYOPEN" runat="server" Text="Done"  font-size="16px" onclick="click_Open_buttonCARDIOMYOPATHY"/>
                    <asp:Button ID="ButtonCARDIOMYOPATHYClose" runat="server" Text="Close"  font-size="16px" onclick="check_close_buttonCARDIOMYOPATHY"/>

                </center>
                </div>



                <%--</ContentTemplate>
                </asp:UpdatePanel>--%>
            </asp:Panel>



            <%--///--%>

            <%--///////////////////////////////Other Heart Disease  TYPES////////////////////////--%>

            <asp:Panel ID="Panel5" runat="server" ScrollBars="Both" Style="bottom: 10px">

                <%--<asp:UpdatePanel ID="UpdatePanel4" CssClass="popup" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
                    <ContentTemplate>--%>
                <div class="container" style="background-color: white; font-size: 13px; border: outset">
                    <div class="row">

                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <b><u>
                                    <asp:Label ID="Label387" runat="server" Style="font-weight: bold;" Text=" OTHER TYPES "></asp:Label></u></b>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckCONSTRICTIVE" Style="font-weight: bold;" runat="server"
                                    Text="CONSTRICTIVE PERICARDITIS " OnCheckedChanged="CheckBoxCheckedOther" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckLV" runat="server" Style="font-weight: 100;" Text="LV NON-COMPACTION " OnCheckedChanged="CheckBoxCheckedOther" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckCARDIAC" runat="server" Style="font-weight: 100;" Text="CARDIAC TUMORS" OnCheckedChanged="CheckBoxCheckedOther" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group form-inline">
                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckCARCINOID" runat="server" Style="font-weight: 100;"
                                    Text="CARCINOID HEART DISEASE" OnCheckedChanged="CheckBoxCheckedOther" AutoPostBack="true" />
                            </div>
                        </div>
                    </div>
                    <hr />

                    <%--        //////////////////////////////////////////CONSTRICTIVE PERICARDITIS/////////////////////////////--%>
                    <div class="Container" id="Other1" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label388" runat="server" Style="font-weight: bold;" Text="CONSTRICTIVE PERICARDITIS" Width="100%"></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label389" runat="server" Style="font-weight: bold;" Text="PERICARDIUM THICKNESS" Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtPericardium_Thickness" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label390" runat="server" Width="100%">mm </asp:Label>
                                        </div>

                                    </div>
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label391" runat="server" Style="font-weight: bold;" Text="LV APEX SIDE " Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtLV_Apex_Side" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label392" runat="server" Width="100%">mm </asp:Label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label393" runat="server" Style="font-weight: bold;" Text="  MITRAL E MAXIMUM      " Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtMitral_E_Maximum" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label394" runat="server" Width="100%">m/s </asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label395" runat="server" Style="font-weight: bold;" Text="MITRAL E MINIMUM " Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtMitral_E_Minimum" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label396" runat="server" Width="100%">m/s</asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-top: 1%">
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label397" runat="server" Style="font-weight: bold;" Text=" TRICUSPID E MAXIMUM  " Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtTricuspid_E_Maximum" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label398" runat="server" Width="100%">m/s</asp:Label>
                                        </div>

                                    </div>
                                    <div class="form-group form-inline">
                                        <div class="col-md-2">

                                            <asp:Label ID="Label399" runat="server" Style="font-weight: bold;" Text=" TRICUSPID E MINIMUM  " Width="100%"></asp:Label>
                                        </div>
                                        <div class="col-md-2">
                                            <asp:TextBox class="form-control" ID="txtTricuspid_E_Minimum" runat="server" Width="100%"></asp:TextBox>
                                        </div>
                                        <div class="col-md-2" style="">

                                            <asp:Label ID="Label400" runat="server" Width="100%">m/s</asp:Label>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--</div>--%>

                        <%--        ////////////////////////////////////////// PERICARDIAL EFFUSION/////////////////////////////--%>
                        <%--<div class="Container" id="Oher2" Visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">--%>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label401" runat="server" Style="font-weight: bold;" Text=" PERICARDIAL EFFUSION"></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">

                                        <asp:Label ID="Label402" runat="server" Style="font-weight: bold;" Text="  ANTERIOR TO RV" Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtPericardial_Effusion_Anterior_RV" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label403" runat="server" Width="100%">mm </asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">

                                        <asp:Label ID="Label404" runat="server" Style="font-weight: bold;" Text="POSTERIOR TO LV    " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtPericardial_Effusion_Posterior_LV" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label405" runat="server" Width="100%">mm </asp:Label>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">

                                        <asp:Label ID="Label406" runat="server" Style="font-weight: bold;" Text="    LATERAL TO LV       " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtPericardial_Effusion_Lateral_LV" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label407" runat="server" Width="100%">mm</asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">

                                        <asp:Label ID="Label408" runat="server" Style="font-weight: bold;" Text="RESPIRATORY VARIATION IN MITRAL INFLOW  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:TextBox class="form-control" ID="txtRespiratory_Variation_In_Mitral" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label409" runat="server" Width="100%">(in %)</asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">

                                        <asp:Label ID="Label410" runat="server" Style="font-weight: bold;" Text="   RESPIRATORY VARIATION IN TRICUSPID INFLOW  " Width="100%"></asp:Label>
                                    </div>
                                    <div class="col-md-2" style="margin-bottom:12px">
                                        <asp:TextBox class="form-control" ID="txtRespiratory_Variation_In_Tricuspid" runat="server" Width="100%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-2" style="">

                                        <asp:Label ID="Label411" runat="server" Width="100%">(in %)</asp:Label>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <%--        ////////////////////////////////////////// LV NON-COMPACTION/////////////////////////////--%>
                    <div class="Container" id="Other2" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label412" runat="server" Style="font-weight: bold;" Text="LV NON-COMPACTION"></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">
                                        <b>
                                            <asp:Label ID="Label413" runat="server" Style="font-weight: bold;" Text="COMMENT" Width="100%"></asp:Label></b>
                                    </div>
                                    <div class="col-md-6" style="margin-bottom:12px">

                                        <asp:TextBox class="form-control" ID="txtCommentLV" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--        ////////////////////////////////////////// CARDIAC TUMORS/////////////////////////////--%>
                    <div class="Container" id="Other3" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label414" runat="server" Style="font-weight: bold;" Text="CARDIAC TUMORS"></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">
                                        <b>
                                            <asp:Label ID="Label415" runat="server" Style="font-weight: bold;" Text="COMMENT" Width="100%"></asp:Label></b>
                                    </div>
                                    <div class="col-md-6" style="margin-bottom:12px">

                                        <asp:TextBox class="form-control" ID="txtCommentCardiac" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--        //////////////////////////////////////////   CARCINOID HEART DISEASE/////////////////////////////--%>
                    <div class="Container" id="Other4" visible="false" runat="server" style="background-color: white; font-size: 13px; border: outset">
                        <div class="row">
                            <div class="col-md-12" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-4">
                                        <b><u>
                                            <asp:Label ID="Label416" runat="server" Style="font-weight: bold;" Text=" CARCINOID HEART DISEASE "></asp:Label></u></b>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8" style="padding-top: 1%">
                                <div class="form-group form-inline">
                                    <div class="col-md-2">
                                        <b>
                                            <asp:Label ID="Label417" runat="server" Style="font-weight: bold;" Text="COMMENT" Width="100%"></asp:Label></b>
                                    </div>
                                    <div class="col-md-6" style="margin-bottom:12px">

                                        <asp:TextBox class="form-control" ID="txtCommentCarcinoid" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <center>
                 <asp:Button ID="buttonotherHD" runat="server" Text="Done"  font-size="16px" onclick="Click_Done_buttonOther" AutoPostBack="true"/>
                    <asp:Button ID="ButtonbuttonOtherClose" runat="server" Text="Close"  font-size="16px" onclick="check_close_buttonOther"/>

                </center>
                </div>



                <%--</ContentTemplate>
                </asp:UpdatePanel>--%>
            </asp:Panel>



            <%--///--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtHospitalNo" runat="server" Height="23px" Width="74px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtDeptUnit" runat="server" Height="23px" Width="60px"
                        Enabled="False" CssClass="style1" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="45px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="83px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="23px"
                        Width="81px" Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;
               <asp:TextBox ID="txtQOAW" runat="server" Height="23px" Width="61px"
                   Style="font-weight: 700" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label420" runat="server" CssClass="style1" Text="DOB  :"
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="txtAge" runat="server" CssClass="style1" Enabled="False"
                        Height="23px" Visible="False" Width="92px"></asp:TextBox>
                    <asp:Label ID="Label421" runat="server" CssClass="style1" Text="Sex   :"
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="txtSex" runat="server" CssClass="style1" Height="23px"
                        Visible="False" Width="42px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="lblName" runat="server" CssClass="style1" Text="Name   :"
                   Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="style1" Enabled="False"
                        Height="23px" Visible="False" Width="50px" />
                    <br />

           
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                </fieldset>
                </asp:Panel>
              <asp:Panel ID="panpatientinfo" runat="server" >
                <center>
          
                </center>
                <br />
                <asp:Label ID="Label422" runat="server" Visible="false" Style="font-size: smaller"
                    Text="Quality of Acoustic Window   :"></asp:Label>
                &nbsp;&nbsp;
             <%--   <asp:TextBox ID="txtQOAW1" runat="server" Height="23px" 
                    style="font-weight: 700" Width="200px"></asp:TextBox> --%>
                <asp:Label ID="lblqoaw1" runat="server" Text=""
                    Style="font-family: 'Arial Black'; font-size: smaller"></asp:Label>
                <br />
                 </asp:Panel>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Panel ID="Panel6" runat="server" Visible="false">
           <asp:Panel ID="Panel7" runat="server" Style="font-size: smaller">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lblLA" runat="server" Font-Bold="true" Text="LEFT ATRIUM"
                   CssClass="style2"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblRA" runat="server" Font-Bold="true" Text="RIGHT ATRIUM"
        CssClass="style2"></asp:Label>
               <br />
               <br />
               &nbsp;&nbsp;&nbsp;<span class="style5"> </span>
               <asp:Label ID="lblLeftAPdimension" runat="server" CssClass="style1"
                   Text="A-P DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftAPdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="lblleftap" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblLeftAPrange" runat="server" CssClass="style5"
                   Text="mm(19-40)"></asp:Label>
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
               <asp:Label ID="lblRightAPdimension" runat="server" CssClass="style1"
                   Text="A-P DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;
            <%--  <asp:TextBox ID="txtRightAPdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="lblrightap" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblRightAPrange" runat="server" CssClass="style5"
                   Text="mm(19-40)"></asp:Label>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="lblLeftISdimension" runat="server" CssClass="style1"
                   Text="I-S DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftISdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="lblleftis" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblLeftISrange" runat="server" CssClass="style5"
                   Text="mm(&lt;50-55)"></asp:Label>
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="lblRightISdimension" runat="server" CssClass="style1"
                   Text="I-S DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtRightISdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="lblrightis" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblRightISrange" runat="server" CssClass="style5"
                   Text="mm(&lt;50-55)"></asp:Label>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="lblLeftArea" runat="server" CssClass="style1" Text="AREA : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftArea" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="lbllefta" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblLeftAreaUnit" runat="server" CssClass="style5" Text="cm" />
               <span class="style3"><sup><span class="style6">2</span></sup><span
                   class="style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
               <asp:Label ID="lblRightArea" runat="server" CssClass="style1" Text="AREA : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtRightArea" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="lblrighta" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblRightAreaUnit" runat="server" CssClass="style5" Text="cm" />
               <span class="style5"><sup>2</sup></span>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="lblLeftVolume" runat="server" Text="VOLUME"
                   CssClass="style1"></asp:Label><span class="style3"><span class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <%--<asp:TextBox ID="txtLeftVolume" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
                   </span></span>
               <asp:Label ID="lblleftv" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblLeftVolumeUnit" runat="server" CssClass="style5" Text="ml" />
               <%--<span class="style3"><sup><span class="style6">2</span></sup><span
                class="style6">--%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%--<span></span>--%>
               <asp:Label ID="lblRightVolume" runat="server" CssClass="style1" Text="VOLUME"></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
             <%--<asp:TextBox ID="txtRightVolume" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>--%>&nbsp;&nbsp;
               </span></span>
               <asp:Label ID="lblrightv" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="lblRightVolumeUnit" runat="server" CssClass="style5" Text="ml" />
               <%--<span class="style5"><sup>2</sup></span>--%>
           </asp:Panel>
           <br />
           <%--LV RV--%>
           <asp:Table ID="table1" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">

               <asp:TableRow HorizontalAlign="Center">
                   <asp:TableCell Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>LV</b>

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%--  <asp:TableCell Width="25%">
      &nbsp;&nbsp;&nbsp;&nbsp;
    </asp:TableCell > --%>
                   <asp:TableCell Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>RV</b>

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%--  <asp:TableCell Width="25%">
      </asp:TableCell >  --%>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trivssd">

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celivssd">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblivsd" runat="server" Text="IVS: S/D"></asp:Label>

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celivssd1" runat="server">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="ivssd" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtIVS" runat="server" Width="150px" ></asp:TextBox>--%>

                       <asp:Label ID="ivssd1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp;
               

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celrvfa">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblrvfa2" runat="server" Text="RV Fractional Area"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celrvfa1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblrvfa" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRVfraction" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblrvfa1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="rwpwsd">

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celpwsd">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblpwsd2" runat="server" Text="PW: S/D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celpwsd1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <asp:Label ID="lblpwsd" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPW" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpwsd1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celrvot">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblrvot2" runat="server" Text="RVOT FRACTION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celrvot1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblrvot" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRVOTFraction" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblrvot1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>


               <asp:TableRow HorizontalAlign="Left" ID="rwedv">
                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celedv">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lbledv2" runat="server" Text="EDV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celedv1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lbledv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtEDV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lbledv1" runat="server" Text="ml"></asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="celfw">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblfw2" runat="server" Text="FREE WALL"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celfw1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblfw" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtFreeWall" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblfw1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="rwesv">
                   <asp:TableCell Width="25%" ID="celesv">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblesv2" runat="server" Text="ESV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celesv1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
          <asp:Label ID="lblesv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtESV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblesv1" runat="server" Text="ml"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <%--<asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; EE
     </asp:TableCell>
      <asp:TableCell Width="25%">

    <asp:TextBox ID="txtEE" runat="server" Width="150px"></asp:TextBox>&nbsp; 
        mm

    </asp:TableCell>--%>
                   <asp:TableCell Width="25%" ID="celrvef">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblrvef2" runat="server" Text="EF"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celrvef1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblrvef" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtRightEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblrvef1" runat="server" Text="%"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="rwalef">
                   <asp:TableCell Width="25%" ID="celalef">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblalef2" runat="server" Text="ALEF"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celalef1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblalef" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtALEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblalef1" runat="server" Text="%"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell Width="25%" ID="celtapse">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltapse2" runat="server" Text="TAPSE"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celtapse1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lbltapse" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTAPSE" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lbltapse1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="rwsv">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; SV

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblsv" runat="server" Text=""></asp:Label>

                       <%--<asp:TextBox ID="txtSV" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="lblsv1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>


               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblco2" runat="server" Text="CO"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblco" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtCO" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblco1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Center" Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>AORTA</b>

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%-- <asp:TableCell Width="0%">
     </asp:TableCell> --%>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="rwedd">
                   <asp:TableCell Width="25%" ID="celedd">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lbledd2" runat="server" Text="EDD"></asp:Label>

                       &nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;

    
                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celedd1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbledd" runat="server" Text=""></asp:Label>

                       <asp:Label ID="lbledd1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell Width="25%" ID="celroot">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblroot2" runat="server" Text="ROOT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="celroot1">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblroot" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtROOT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblroot1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="tresd">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblesd2" runat="server" Text="ESD"></asp:Label>

                       &nbsp;&nbsp;
        
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lblesd" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtESD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblesd1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblsj2" runat="server" Text="SINOTUBULAR JUNCTION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblsj" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtSinotubularJunction" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="lblsj1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="trlvef">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lbllvef2" runat="server" Text="EF"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbllvef" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtLeftEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lbllvef1" runat="server" Text="%"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lblaa2" runat="server" Text="ASCENDING AORTA"></asp:Label>
                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblaa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAscendingAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblaa1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="trfs">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblfs2" runat="server" Text="FS"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lblfs" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtFS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblfs1" runat="server" Text="%"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblarch2" runat="server" Text="ARCH"></asp:Label>
                       &nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblarch" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtArch" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblarch1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="trhr">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblhr2" runat="server" Text="HR"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lblhr" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtHR" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblhr1" runat="server" Text="bpm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblda2" runat="server" Text="DESCENDING AORTA"></asp:Label>
                       &nbsp;
&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblda" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtDescendingAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblda1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="traarota">
                   <%--<asp:TableCell Width="25%">
  
    </asp:TableCell>--%>
                   <asp:TableCell Width="25%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;</asp:TableCell>

                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; ABDOMINAL AORTA

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblaarota" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtAbdominalAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblaarota1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="trmacs">
                   <asp:TableCell ColumnSpan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;
        
  &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <%-- %>  <asp:TableCell></asp:TableCell> --%>

                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MACS

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblmacs" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMACS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmacs1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table2" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;

    <b>Mitral Valve </b>

    
  
        
    <%--<asp:TextBox ID="txtMitralValveEA" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>

&nbsp;&nbsp;&nbsp; 
&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp; &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="50%" ColumnSpan="2">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblaortic2" runat="server" Text="AORTIC Valve"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                 
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trdt">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lbldt2" runat="server" Text="DT"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">

                       <%--  <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
           <asp:ListItem>Select</asp:ListItem>
           <asp:ListItem>E>A</asp:ListItem>
           <asp:ListItem>A>E</asp:ListItem>
           <asp:ListItem>E=A</asp:ListItem>
       </asp:DropDownList>--%>
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lbldt" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralDT" runat="server" Width="150px" Visible="false" Text=""></asp:TextBox>--%>
      
            
&nbsp;&nbsp; <%-- <asp:TextBox ID="txtMitralDT" runat="server" Width="150px" Visible="false" Text=""></asp:TextBox>--%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;
      
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblpv2" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAorticPV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpv1" runat="server" Text="m/s"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; PV

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

  <asp:Label ID="lblmitralpv" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtmitralpv" runat="server" Width="150px"></asp:TextBox>--%> m/s


                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MACS
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

  <asp:Label ID="lblaorticmacs" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtmitralmacs" runat="server" Width="150px"></asp:TextBox> --%>cm



                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trmve">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblmve2" runat="server" Text="MV-E"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmve" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralMVE" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmve1" runat="server" Text="m/s"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblappg2" runat="server" Text="PPG"></asp:Label>
                       &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblappg" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtAorticPPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblappg1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trmva">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmva2" runat="server" Text="MV-A"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmva" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralMVA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmva1" runat="server" Text="ml"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblampg2" runat="server" Text="MPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblampg" runat="server" Text=""></asp:Label>
                       <%--   <asp:TextBox ID="txtAorticMPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblampg1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trivrt">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblivrt2" runat="server" Text="IVRT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblivrt" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMitralIVRT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblivrt1" runat="server" Text="ml"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblet2" runat="server" Text="ET"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblet" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtET" runat="server" Width="150px"></asp:TextBox>--%>

                       <%--<asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap>  --%>

                       <asp:Label ID="lblet1" runat="server" Text="ms"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trivct">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblivct2" runat="server" Text="IVCT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblivct" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMitralIVCT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblivct1" runat="server" Text="ml"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblvti2" runat="server" Text="VTI"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblvti" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtVTI" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblvti1" runat="server" Text="cm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trmvopht">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MVO by PHT

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblmvopht" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMvoByPht" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmvopht1" runat="server">  cm<sup>2</sup> </asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="lblaorticprosthetic" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trmvo2d">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MVO by 2D ECHO

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblmvo2d" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMV2D" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmvo2d1" runat="server">  cm<sup>2</sup> </asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="lblmitralprosthetic" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table3" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;TRICUSPID VALVE 



     <%--asp:TableCell>
      <asp:TableCell Width="25%"--%>

    <%--<asp:TextBox ID="txtTricuspidValvePv" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>

 
        

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="lbltad2" runat="server" Text="TRICUSPID ANNULUS DIMENSION"></asp:Label>




                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lbltad" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidAnnulusDimension" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="lbltad1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trtdt">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="lbltdt2" runat="server" Text="DT"></asp:Label>
                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbltdt" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidDT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lbltdt1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Label ID="lbltva2" runat="server" Text="TRICUSPID VALVE AREA BY PHT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="lbltva" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidValveAreaByPht" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lbltva1" runat="server"> cm<sup>2</sup></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="trpv">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltpv" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbltricuspidpv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVE" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="lbltricuspidpv1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
                   <%--    <asp:TableCell Width="25%">

       &nbsp;&nbsp;&nbsp;      IVRT

     </asp:TableCell>
      <asp:TableCell Width="25%">

    <asp:TextBox ID="txtTricuspidIVRT" runat="server" Width="150px"></asp:TextBox>&nbsp; 
            mm

    </asp:TableCell>--%>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblrvmpi2" runat="server" Text="RV MPI"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblrvmpi" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRvMpi" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblrvmpi1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trttve">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltricuspidtve2" runat="server" Text="TV-E"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbltricuspidtve" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVE" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="lbltricuspidtve1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="lbltricuspidprosthetic" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trtva">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltricuspidtva2" runat="server" Text="TV-A"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lbltricuspidtva" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVA" runat="server" Width="150px"></asp:TextBox>--%>
                       <asp:Label ID="lbltricuspidtva1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <%--<asp:TableRow HorizontalAlign="Left"> 
    <%--<asp:TableCell Width="25%" Visible="false">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; IVCT

    </asp:TableCell>
     <%--<asp:TableCell Width="25%" Visible="false">

    <asp:TextBox ID="txtTricuspidIVCT" runat="server" Width="150px"></asp:TextBox>&nbsp; 
            

    </asp:TableCell></asp:TableRow>--%>
               <asp:TableRow HorizontalAlign="Left" ID="trtrvsp">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltrvsp2" runat="server" Text="RVSP"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbltrvsp" runat="server" Text=""></asp:Label><asp:Label ID="lbltrvsp1" runat="server" Text="+RAP mmHg"></asp:Label>
                       <%-- <asp:TextBox ID="txtTricuspidRVSP" runat="server" Width="150px" Text=""></asp:TextBox>--%>
            
&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp; 
            

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table4" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; PULMONARY VALVE


&nbsp;&nbsp;&nbsp;&nbsp;


                   </asp:TableCell>
                   <asp:TableCell Width="25%" Visible="false">

&nbsp;&nbsp; 
&nbsp;&nbsp;

   
   <%-- <asp:TextBox ID="txtPulmonaryValve" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>&nbsp; 


                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblpd2" runat="server" Text="PULMONARY DIMENSION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpd" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPulmonaryDimension" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpd1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trppv">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblppv2" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblppv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryPV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblppv1" runat="server" Text="m/s"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblpula2" runat="server" Text="Pulmonary Annulus"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpula" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryAnn" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpula1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trat">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblat2" runat="server" Text="AT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblat" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAT" runat="server" Width="150px" Text="AT: "></asp:TextBox> --%>

                       <asp:Label ID="lblat1" runat="server" Text="ms"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblmpa2" runat="server" Text="MPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblmpa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmpa1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trppg">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblppg2" runat="server" Text="PPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="lblppg" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryPPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblppg1" runat="server" Text="mmHg"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbllpa2" runat="server" Text="LPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           <asp:Label ID="lpa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtLPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lpa1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trmpg">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblmpg2" runat="server" Text="MPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

         <asp:Label ID="lblmpg" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryMPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblmpg1" runat="server" Text="mmHg"></asp:Label>



                       &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblrpa2" runat="server" Text="RPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="lblrpa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtRPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblrpa1" runat="server" Text="mm"></asp:Label>

                       &nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trvlpa">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="lblpulprosthetic" runat="server" Text=""></asp:Label>


                   </asp:TableCell><asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; VELOCITY-LPA

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblvlpa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtVelocityLPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblvlpa1" runat="server" Text="m/s"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trvrpa">
                   <asp:TableCell ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%-- <asp:TableCell >
   
    </asp:TableCell> --%>
                   <asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; VELOCITY-RPA

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblvrpa" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtVelocityRPA" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <%--<asp:TextBox ID="txtVelocityRPA" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="lblvrpa1" runat="server" Text="m/s"></asp:Label>

                       &nbsp;

        &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />

           <asp:Table ID="table5" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<b>PULMONARY VENOUS FLOW</b></asp:TableCell><asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; RAP

&nbsp;&nbsp;&nbsp;&nbsp;

</asp:TableCell>
                   <asp:TableCell Width="25%" Visible="false">

&nbsp;&nbsp;&nbsp;

    <%--<asp:TextBox ID="txtRAP" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>&nbsp; 
        

        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp; 
        

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trpveins">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblpveins2" runat="server" Text="PULMONARY VEIN S"></asp:Label>

                       &nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;

    
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpveins" runat="server" Text=""></asp:Label>

                       <%--<asp:TextBox ID="txtPulmonaryVeinS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpveins1" runat="server" Text="mm"></asp:Label>

                       &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblivcmaxmin2" runat="server" Text="IVC-MAX/MIN"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblivcmaxmin" runat="server" Text=""></asp:Label>

                       <%-- <asp:TextBox ID="txtIvcMaxMin" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblivcmaxmin1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trpvd">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblpvd2" runat="server" Text="PULMONARY VEIN D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
          <asp:Label ID="lblpvd" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryVeinD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpvd1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lblhepaticvs2" runat="server" Text="HEPATIC VEIN S"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblhepaticvs" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtHepaticVeinS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblhepaticvs1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trpva">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpva2" runat="server" Text="PULMONARY VEIN Ar"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="lblpva" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryVeinAr" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblpva1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblhvd2" runat="server" Text="HEPATIC VEIN D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblhvd" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtHepaticVeinD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="lblhvd1" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="trpvadur">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="lblpvadur2" runat="server" Text="PULMONARY VEIN Adur"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <asp:Label ID="lblpvadur" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPulmonaryVeinAdur" runat="server" Width="149px"></asp:TextBox>--%>

                       <asp:Label ID="lblpvadur1" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
 <asp:Label ID="lblrfv2" runat="server" Text="REVERSAL FLOW VELOCITY"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblrfv" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtReversalFlowVelocity" runat="server" Width="149px"></asp:TextBox>--%>

                       <asp:Label ID="lblrfv1" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           </asp:Panel> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" Height="23px" Width="74px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="60px"
                        Enabled="False" CssClass="style1" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="45px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox8" runat="server" Height="23px" Width="83px"
        Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server" Height="23px"
                        Width="81px" Enabled="False" CssClass="style1" Visible="False"></asp:TextBox>
                    &nbsp;&nbsp;
               <asp:TextBox ID="TextBox10" runat="server" Height="23px" Width="61px"
                   Style="font-weight: 700" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label423" runat="server" CssClass="style1" Text="DOB  :"
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="style1" Enabled="False"
                        Height="23px" Visible="False" Width="92px"></asp:TextBox>
                    <asp:Label ID="Label424" runat="server" CssClass="style1" Text="Sex   :"
                        Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="style1" Height="23px"
                        Visible="False" Width="42px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label425" runat="server" CssClass="style1" Text="Name   :"
                   Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="style1" Enabled="False"
                        Height="23px" Visible="False" Width="50px" />
                    <br />

           
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                </fieldset>
                </asp:Panel>
              <asp:Panel ID="Panel8" runat="server" >
                <center>
          
                </center>
                <br />
                <asp:Label ID="Label426" runat="server" Visible="false" Style="font-size: smaller"
                    Text="Quality of Acoustic Window   :"></asp:Label>
                &nbsp;&nbsp;
             <%--   <asp:TextBox ID="txtQOAW1" runat="server" Height="23px" 
                    style="font-weight: 700" Width="200px"></asp:TextBox> --%>
                <asp:Label ID="Label427" runat="server" Text=""
                    Style="font-family: 'Arial Black'; font-size: smaller"></asp:Label>
                <br />
                 </asp:Panel>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Panel ID="Panel9" runat="server" Visible="false">
           <asp:Panel ID="Panel10" runat="server" Style="font-size: smaller">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label428" runat="server" Font-Bold="true" Text="LEFT ATRIUM"
                   CssClass="style2"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label429" runat="server" Font-Bold="true" Text="RIGHT ATRIUM"
        CssClass="style2"></asp:Label>
               <br />
               <br />
               &nbsp;&nbsp;&nbsp;<span class="style5"> </span>
               <asp:Label ID="Label430" runat="server" CssClass="style1"
                   Text="A-P DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftAPdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="Label431" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label432" runat="server" CssClass="style5"
                   Text="mm(19-40)"></asp:Label>
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span>
               <asp:Label ID="Label433" runat="server" CssClass="style1"
                   Text="A-P DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;
            <%--  <asp:TextBox ID="txtRightAPdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="Label434" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label435" runat="server" CssClass="style5"
                   Text="mm(19-40)"></asp:Label>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="Label436" runat="server" CssClass="style1"
                   Text="I-S DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftISdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="Label437" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label438" runat="server" CssClass="style5"
                   Text="mm(&lt;50-55)"></asp:Label>
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="Label439" runat="server" CssClass="style1"
                   Text="I-S DIMENSION : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtRightISdimension" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="Label440" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label441" runat="server" CssClass="style5"
                   Text="mm(&lt;50-55)"></asp:Label>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="Label442" runat="server" CssClass="style1" Text="AREA : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtLeftArea" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp; --%>
               </span></span>
               <asp:Label ID="Label443" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label444" runat="server" CssClass="style5" Text="cm" />
               <span class="style3"><sup><span class="style6">2</span></sup><span
                   class="style6"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
               <asp:Label ID="Label445" runat="server" CssClass="style1" Text="AREA : "></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%-- <asp:TextBox ID="txtRightArea" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
               </span></span>
               <asp:Label ID="Label446" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label447" runat="server" CssClass="style5" Text="cm" />
               <span class="style5"><sup>2</sup></span>
               <br class="style5" />
               <br
                   class="style5" />
               <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp; </span>
               <asp:Label ID="Label448" runat="server" Text="VOLUME"
                   CssClass="style1"></asp:Label><span class="style3"><span class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <%--<asp:TextBox ID="txtLeftVolume" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>&nbsp;&nbsp;--%>
                   </span></span>
               <asp:Label ID="Label449" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label450" runat="server" CssClass="style5" Text="ml" />
               <%--<span class="style3"><sup><span class="style6">2</span></sup><span
                class="style6">--%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%--<span></span>--%>
               <asp:Label ID="Label451" runat="server" CssClass="style1" Text="VOLUME"></asp:Label>
               <span class="style3"><span class="style6">&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
             <%--<asp:TextBox ID="txtRightVolume" runat="server" Enabled="False" CssClass="style1"></asp:TextBox>--%>&nbsp;&nbsp;
               </span></span>
               <asp:Label ID="Label452" runat="server" CssClass="style5" Text=""></asp:Label>
               <asp:Label ID="Label453" runat="server" CssClass="style5" Text="ml" />
               <%--<span class="style5"><sup>2</sup></span>--%>
           </asp:Panel>
           <br />
           <%--LV RV--%>
           <asp:Table ID="table6" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">

               <asp:TableRow HorizontalAlign="Center">
                   <asp:TableCell Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>LV</b>

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%--  <asp:TableCell Width="25%">
      &nbsp;&nbsp;&nbsp;&nbsp;
    </asp:TableCell > --%>
                   <asp:TableCell Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>RV</b>

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%--  <asp:TableCell Width="25%">
      </asp:TableCell >  --%>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow1">

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell1">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label454" runat="server" Text="IVS: S/D"></asp:Label>

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell2" runat="server">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label455" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtIVS" runat="server" Width="150px" ></asp:TextBox>--%>

                       <asp:Label ID="Label456" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp;
               

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell3">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label457" runat="server" Text="RV Fractional Area"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell4">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label458" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRVfraction" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label459" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow2">

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell5">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label460" runat="server" Text="PW: S/D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell6">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <asp:Label ID="Label461" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPW" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label462" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell7">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label463" runat="server" Text="RVOT FRACTION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell8">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label464" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRVOTFraction" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label465" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>


               <asp:TableRow HorizontalAlign="Left" ID="TableRow3">
                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell9">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label466" runat="server" Text="EDV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell10">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label467" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtEDV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label468" runat="server" Text="ml"></asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Left" Width="25%" ID="TableCell11">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label469" runat="server" Text="FREE WALL"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell12">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label470" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtFreeWall" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label471" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow4">
                   <asp:TableCell Width="25%" ID="TableCell13">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label472" runat="server" Text="ESV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell14">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
          <asp:Label ID="Label473" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtESV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label474" runat="server" Text="ml"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <%--<asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp; EE
     </asp:TableCell>
      <asp:TableCell Width="25%">

    <asp:TextBox ID="txtEE" runat="server" Width="150px"></asp:TextBox>&nbsp; 
        mm

    </asp:TableCell>--%>
                   <asp:TableCell Width="25%" ID="TableCell15">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label475" runat="server" Text="EF"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell16">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label476" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtRightEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label477" runat="server" Text="%"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow5">
                   <asp:TableCell Width="25%" ID="TableCell17">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label478" runat="server" Text="ALEF"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell18">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label479" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtALEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label480" runat="server" Text="%"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell Width="25%" ID="TableCell19">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label481" runat="server" Text="TAPSE"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell20">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label482" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTAPSE" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label483" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow6">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; SV

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label484" runat="server" Text=""></asp:Label>

                       <%--<asp:TextBox ID="txtSV" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="Label485" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>


               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label486" runat="server" Text="CO"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label487" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtCO" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label488" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell HorizontalAlign="Center" Width="50%" ColumnSpan="2">

&nbsp;&nbsp;&nbsp;

    <b>AORTA</b>

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%-- <asp:TableCell Width="0%">
     </asp:TableCell> --%>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow7">
                   <asp:TableCell Width="25%" ID="TableCell21">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label489" runat="server" Text="EDD"></asp:Label>

                       &nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;

    
                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell22">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label490" runat="server" Text=""></asp:Label>

                       <asp:Label ID="Label491" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>

                   <asp:TableCell Width="25%" ID="TableCell23">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label492" runat="server" Text="ROOT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%" ID="TableCell24">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label493" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtROOT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label494" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow8">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label495" runat="server" Text="ESD"></asp:Label>

                       &nbsp;&nbsp;
        
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label496" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtESD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label497" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label498" runat="server" Text="SINOTUBULAR JUNCTION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label499" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtSinotubularJunction" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="Label500" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow9">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label501" runat="server" Text="EF"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label502" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtLeftEF" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label503" runat="server" Text="%"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label504" runat="server" Text="ASCENDING AORTA"></asp:Label>
                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label505" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAscendingAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label506" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow10">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label507" runat="server" Text="FS"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label508" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtFS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label509" runat="server" Text="%"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label510" runat="server" Text="ARCH"></asp:Label>
                       &nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label511" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtArch" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label512" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow11">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label513" runat="server" Text="HR"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label514" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtHR" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label515" runat="server" Text="bpm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>

                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label516" runat="server" Text="DESCENDING AORTA"></asp:Label>
                       &nbsp;
&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label517" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtDescendingAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label518" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow12">
                   <%--<asp:TableCell Width="25%">
  
    </asp:TableCell>--%>
                   <asp:TableCell Width="25%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;</asp:TableCell>

                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; ABDOMINAL AORTA

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label519" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtAbdominalAorta" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label520" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow13">
                   <asp:TableCell ColumnSpan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;
        
  &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <%-- %>  <asp:TableCell></asp:TableCell> --%>

                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MACS

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label521" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMACS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label522" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table7" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;

    <b>Mitral Valve </b>

    
  
        
    <%--<asp:TextBox ID="txtMitralValveEA" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>

&nbsp;&nbsp;&nbsp; 
&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp; &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="50%" ColumnSpan="2">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label523" runat="server" Text="AORTIC Valve"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                 
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow14">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label524" runat="server" Text="DT"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">

                       <%--  <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
           <asp:ListItem>Select</asp:ListItem>
           <asp:ListItem>E>A</asp:ListItem>
           <asp:ListItem>A>E</asp:ListItem>
           <asp:ListItem>E=A</asp:ListItem>
       </asp:DropDownList>--%>
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label525" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralDT" runat="server" Width="150px" Visible="false" Text=""></asp:TextBox>--%>
      
            
&nbsp;&nbsp; <%-- <asp:TextBox ID="txtMitralDT" runat="server" Width="150px" Visible="false" Text=""></asp:TextBox>--%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;
      
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label526" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label527" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAorticPV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label528" runat="server" Text="m/s"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; PV

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

  <asp:Label ID="Label529" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtmitralpv" runat="server" Width="150px"></asp:TextBox>--%> m/s


                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MACS
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

  <asp:Label ID="Label530" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtmitralmacs" runat="server" Width="150px"></asp:TextBox> --%>cm



                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow15">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label531" runat="server" Text="MV-E"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label532" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralMVE" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label533" runat="server" Text="m/s"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label534" runat="server" Text="PPG"></asp:Label>
                       &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
 
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label535" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtAorticPPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label536" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow16">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label537" runat="server" Text="MV-A"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label538" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMitralMVA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label539" runat="server" Text="ml"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label540" runat="server" Text="MPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label541" runat="server" Text=""></asp:Label>
                       <%--   <asp:TextBox ID="txtAorticMPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label542" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow17">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label543" runat="server" Text="IVRT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label544" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMitralIVRT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label545" runat="server" Text="ml"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label546" runat="server" Text="ET"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label547" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtET" runat="server" Width="150px"></asp:TextBox>--%>

                       <%--<asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap>  --%>

                       <asp:Label ID="Label548" runat="server" Text="ms"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow18">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label549" runat="server" Text="IVCT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label550" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMitralIVCT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label551" runat="server" Text="ml"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label552" runat="server" Text="VTI"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label553" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtVTI" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label554" runat="server" Text="cm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow19">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MVO by PHT

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label555" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMvoByPht" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label556" runat="server">  cm<sup>2</sup> </asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="Label557" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow20">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp; MVO by 2D ECHO

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label558" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtMV2D" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label559" runat="server">  cm<sup>2</sup> </asp:Label>


                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="Label560" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table8" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;TRICUSPID VALVE 



     <%--asp:TableCell>
      <asp:TableCell Width="25%"--%>

    <%--<asp:TextBox ID="txtTricuspidValvePv" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>

 
        

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;<asp:Label ID="Label561" runat="server" Text="TRICUSPID ANNULUS DIMENSION"></asp:Label>




                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label562" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidAnnulusDimension" runat="server" Width="150px"></asp:TextBox>--%>


                       <asp:Label ID="Label563" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow21">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label564" runat="server" Text="DT"></asp:Label>
                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label565" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidDT" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label566" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Label ID="Label567" runat="server" Text="TRICUSPID VALVE AREA BY PHT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label568" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidValveAreaByPht" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label569" runat="server"> cm<sup>2</sup></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>

               <asp:TableRow HorizontalAlign="Left" ID="TableRow22">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label570" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label571" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVE" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="Label572" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
                   <%--    <asp:TableCell Width="25%">

       &nbsp;&nbsp;&nbsp;      IVRT

     </asp:TableCell>
      <asp:TableCell Width="25%">

    <asp:TextBox ID="txtTricuspidIVRT" runat="server" Width="150px"></asp:TextBox>&nbsp; 
            mm

    </asp:TableCell>--%>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label573" runat="server" Text="RV MPI"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label574" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtRvMpi" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label575" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow23">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label576" runat="server" Text="TV-E"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label577" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVE" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="Label578" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell><asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="Label579" runat="server" Text=""></asp:Label>


                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow24">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label580" runat="server" Text="TV-A"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label581" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtTricuspidTVA" runat="server" Width="150px"></asp:TextBox>--%>
                       <asp:Label ID="Label582" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>

               <%--<asp:TableRow HorizontalAlign="Left"> 
    <%--<asp:TableCell Width="25%" Visible="false">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; IVCT

    </asp:TableCell>
     <%--<asp:TableCell Width="25%" Visible="false">

    <asp:TextBox ID="txtTricuspidIVCT" runat="server" Width="150px"></asp:TextBox>&nbsp; 
            

    </asp:TableCell></asp:TableRow>--%>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow25">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label583" runat="server" Text="RVSP"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label584" runat="server" Text=""></asp:Label><asp:Label ID="Label585" runat="server" Text="+RAP mmHg"></asp:Label>
                       <%-- <asp:TextBox ID="txtTricuspidRVSP" runat="server" Width="150px" Text=""></asp:TextBox>--%>
            
&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp; 
            

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />
           <asp:Table ID="table9" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; PULMONARY VALVE


&nbsp;&nbsp;&nbsp;&nbsp;


                   </asp:TableCell>
                   <asp:TableCell Width="25%" Visible="false">

&nbsp;&nbsp; 
&nbsp;&nbsp;

   
   <%-- <asp:TextBox ID="txtPulmonaryValve" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>&nbsp; 


                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label586" runat="server" Text="PULMONARY DIMENSION"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label587" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPulmonaryDimension" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label588" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow26">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label589" runat="server" Text="PV"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label590" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryPV" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label591" runat="server" Text="m/s"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label592" runat="server" Text="Pulmonary Annulus"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label593" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryAnn" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label594" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow27">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label595" runat="server" Text="AT"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label596" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtAT" runat="server" Width="150px" Text="AT: "></asp:TextBox> --%>

                       <asp:Label ID="Label597" runat="server" Text="ms"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label598" runat="server" Text="MPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label599" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtMPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label600" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow28">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label601" runat="server" Text="PPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label602" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryPPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label603" runat="server" Text="mmHg"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label604" runat="server" Text="LPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           <asp:Label ID="Label605" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtLPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label606" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow29">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label607" runat="server" Text="MPG"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

         <asp:Label ID="Label608" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryMPG" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label609" runat="server" Text="mmHg"></asp:Label>



                       &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label610" runat="server" Text="RPA"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label611" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtRPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label612" runat="server" Text="mm"></asp:Label>

                       &nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow30">
                   <asp:TableCell Width="25%">
&nbsp;&nbsp;&nbsp;Prosthetic Valve

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;

    
             <asp:Label ID="Label613" runat="server" Text=""></asp:Label>


                   </asp:TableCell><asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; VELOCITY-LPA

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label614" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtVelocityLPA" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label615" runat="server" Text="m/s"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow31">
                   <asp:TableCell ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <%-- <asp:TableCell >
   
    </asp:TableCell> --%>
                   <asp:TableCell Width="25%">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; VELOCITY-RPA

&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label616" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtVelocityRPA" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <%--<asp:TextBox ID="txtVelocityRPA" runat="server" Width="150px"></asp:TextBox>&nbsp; --%>

                       <asp:Label ID="Label617" runat="server" Text="m/s"></asp:Label>

                       &nbsp;

        &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           <br />

           <asp:Table ID="table10" runat="server" Width="100%" GridLines="both"
               Style="margin-right: 0px; margin-bottom: 3px; font-size: smaller; font-family: 'Arial Black';" Font-Names="Arial Narrow"
               Height="100px">
               <asp:TableRow HorizontalAlign="Left">
                   <asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<b>PULMONARY VENOUS FLOW</b></asp:TableCell><asp:TableCell Width="50%" ColumnSpan="2">&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; RAP

&nbsp;&nbsp;&nbsp;&nbsp;

</asp:TableCell>
                   <asp:TableCell Width="25%" Visible="false">

&nbsp;&nbsp;&nbsp;

    <%--<asp:TextBox ID="txtRAP" runat="server" Width="150px" Visible="false"></asp:TextBox>--%>&nbsp; 
        

        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

&nbsp;&nbsp;&nbsp; 
        

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow32">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label618" runat="server" Text="PULMONARY VEIN S"></asp:Label>

                       &nbsp;&nbsp;&nbsp; 
&nbsp;&nbsp;&nbsp;

    
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label619" runat="server" Text=""></asp:Label>

                       <%--<asp:TextBox ID="txtPulmonaryVeinS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label620" runat="server" Text="mm"></asp:Label>

                       &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label621" runat="server" Text="IVC-MAX/MIN"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label622" runat="server" Text=""></asp:Label>

                       <%-- <asp:TextBox ID="txtIvcMaxMin" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label623" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow33">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label624" runat="server" Text="PULMONARY VEIN D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
          <asp:Label ID="Label625" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryVeinD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label626" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label627" runat="server" Text="HEPATIC VEIN S"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="Label628" runat="server" Text=""></asp:Label>
                       <%-- <asp:TextBox ID="txtHepaticVeinS" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label629" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow34">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label630" runat="server" Text="PULMONARY VEIN Ar"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label631" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtPulmonaryVeinAr" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label632" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell><asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label633" runat="server" Text="HEPATIC VEIN D"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label634" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtHepaticVeinD" runat="server" Width="150px"></asp:TextBox>--%>

                       <asp:Label ID="Label635" runat="server" Text="mm"></asp:Label>



                       &nbsp;&nbsp;&nbsp;

                   </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow HorizontalAlign="Left" ID="TableRow35">
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label636" runat="server" Text="PULMONARY VEIN Adur"></asp:Label>

                       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <asp:Label ID="Label637" runat="server" Text=""></asp:Label>
                       <%--  <asp:TextBox ID="txtPulmonaryVeinAdur" runat="server" Width="149px"></asp:TextBox>--%>

                       <asp:Label ID="Label638" runat="server" Text="mm"></asp:Label>

                       &nbsp; 

&nbsp;&nbsp;&nbsp;  

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;
 <asp:Label ID="Label639" runat="server" Text="REVERSAL FLOW VELOCITY"></asp:Label>

                       &nbsp;&nbsp;

                   </asp:TableCell>
                   <asp:TableCell Width="25%">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label640" runat="server" Text=""></asp:Label>
                       <%--<asp:TextBox ID="txtReversalFlowVelocity" runat="server" Width="149px"></asp:TextBox>--%>

                       <asp:Label ID="Label641" runat="server" Text="mm"></asp:Label>

                       &nbsp;

&nbsp;&nbsp;&nbsp; 

                   </asp:TableCell>
               </asp:TableRow>
           </asp:Table>
           </asp:Panel>
            <div style="margin-bottom: 75px;"></div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

