<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage/Main.Master" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="ASP.NET.HomePage.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        table{
            width:260px;
            height:430px;
           
            
            color: #212529;
            text-align: left;
            box-sizing: border-box;
            font-family: sf_ui_displayregular;
            padding: 5px;
            margin:3px 3px ;
            display: block;
            
        }
        .dtl{
            border: 1px solid black;
        }
        table{
            
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            width: 391px;
        }
      
        .auto-style7 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            top: -416px;
            left: 133px;
            height: 364px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style8 {
            left: 0px;
            top: -94px;
        }
        .auto-style9 {
            position: relative;
            top: 240px;
            z-index: 1;
            left: -75px;
        }
        .auto-style10 {
            left: -74px;
            top: 296px;
        }
      
    </style>
    <link rel="stylesheet" href="CSS/StyleHome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main_body" runat="server">
    
    <div class="auto-style8">
        <div class="row">
            <div class="auto-style7">
                <div class="auto-style9">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="auto-style2">
                                <div class="tab_search">
                                    <div class="tour_search timkiem">
                                    
                                    <div class="left">
                                        <div class="check_tour1 selected">
                                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Tour Trong  Nước" />
                                        </div>
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Tour Nước Ngoài" />
                                        <br />
                                    </div>
                                    
                                        TÌM KIẾM
                                            <div class="input-group-append quick-btn-search">
                                <div id="sort">

                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="140px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="140px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="140px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="140px">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="140px">
                                    </asp:DropDownList>
                                    <asp:Button ID="Button1" runat="server" Text="Tìm Kiếm" Width="142px" />
                                </div>

                                                <span class="input-group-text"><i class="fa fa-search"></i></span></div>
                                    </div>
                                </div>
                                <div class="check_tour">
                                    
                                    <div class="right">
                                        <div class="auto-style10">
                                            <input aria-label="Search" class="form-control ng-untouched ng-pristine ng-valid" name="quick_search" placeholder="Tìm nhanh..." type="text" />
                                            </div>
                                    </div>
                                    

                             
                                </div>

                            </div>
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <div id="containt">
        <div id="hottour">
            <h2>HOT Tour</h2>
            <asp:DataList ID="DataList1"  runat="server" DataKeyField="TourId" DataSourceID="sqltourtrongnuoc" RepeatColumns="5" RepeatDirection="Horizontal"  Height="425px" Width="250px">
                <EditItemStyle BorderColor="Black" BorderWidth="1px" />
                <ItemTemplate >
                    <table class="dtl"  >
                        <tr>
                            <td colspan="2" class="auto-style5"  >
                                <asp:image ID="HyperLink11" runat="server" NavigateUrl='<%# "Chitiettour.aspx?TourId="+Eval("TourId").ToString() %>'
                                    ImageUrl='<%# Eval("TourPhoto") %>' Width="250px" Height="240px" ImageAlign="Top">
                                    </asp:image>
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="2">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Chitiettour.aspx?TourId="+Eval("TourId").ToString() %>' Text='<%# Eval("TourName") %>'></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                Phương tiện:<asp:Label ID="Label1" runat="server" Text='<%# Eval("TourVehicle") %>'></asp:Label>
                                <br />
                                Lịch trình<asp:Label ID="Label2" runat="server" Text='<%# Eval("TourTime") %>'></asp:Label>
                            </td>
                            <td>Giá từ :<br /> <asp:Label ID="Label3" runat="server" Text='<%# Eval("TourPrice") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="Button2" runat="server" Text="Button" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="sqltourtrongnuoc" runat="server" ConnectionString="<%$ ConnectionStrings:HanoiTouristConnectionString %>" SelectCommand="SELECT * FROM [Tour]"></asp:SqlDataSource>
        </div>
        
        <div id="toutrongnuoc" runat="server">
            <div class="title_tour_trong_nuoc">
                <h3 class="auto-style6">ĐIỂM ĐẾN NỔI BẬT</h3>
                <p>&nbsp;</p>
                <p>Để không ngừng đáp ứng nhu cầu tham quan, nghỉ dưỡng, khảo sát, tham dự hội chợ, triển lãm, hội thảo, giao lưu và hợp tác ngày càng cao của Quý khách, với phương châm “Tất cả vì sự hài lòng của khách hàng”, chúng tôi xin trân trọng giới thiệu tới Quý khách các chương trình “Việt Nam - Đất nước muôn màu”. Hy vọng rằng, đây sẽ là những thông tin bổ ích và thiết thực về các sản phẩm du lịch tiêu biểu và hấp dẫn đến hấu hết các địa danh du lịch nổi tiếng của dải đất hình chữ S tươi đẹp mà công ty chúng tôi đã và đang thực hiện rất thành công... </p>
                <div id="anhhot">
                    <asp:Button ID="btnleft" runat="server" Height="36px" OnClick="btnleft_Click" Text="&lt;" Width="24px" />
                    <asp:Image ID="Image111" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l1.jpg" />
                    <asp:Image ID="Image2" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l2.jpg" />
                    <asp:Image ID="Image3" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l3.jpg" />
                    <asp:Image ID="Image4" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l4.jpg" />
                    <asp:Image ID="Image5" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l5.jpg" />
                    <asp:Image ID="Image6" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l6.jpg" />
                    <asp:Image ID="Image7" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l7.jpg" />
                    <asp:Image ID="Image8" class="Image1"  runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l8.jpg" />
                    <asp:Image ID="Image9" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l9.jpg" />
                    <asp:Image ID="Image10" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l10.jpg" />
                    <asp:Image ID="Image11" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l11.jpg" />
                    <asp:Image ID="Image12" class="Image1" runat="server" Width="200px" Height="140px" ImageUrl="~/Image/Tour/l12.jpg" />
                    <asp:Button ID="btnright" runat="server" Height="34px" OnClick="btnright_Click" Text="&gt;" Width="19px" />
                </div>
            </div>
          
    <br />
            
   </div>
        
        <div id="ft"></div>
  </div>
</asp:Content>

