use master
go
create  database HanoiTourist
go
use HanoiTourist
go



create table Users
(
	UserId int identity primary key ,
	UserName varchar(100),
	Email nvarchar(100),
	Pass varchar(100),
	Phone int,
	Address nvarchar(100),
	Role char(10),
)
go

create table Country
(
	CountryId char(10) primary key,
	CountryName nvarchar(100),
)
go
create table Place
(
	PlaceId char(10) primary key,
	PlaceName nvarchar(100),
	CountryId char(10),
	constraint fk_Place_Country foreign key(CountryId) references Country(CountryId),
)
go
create table Tour
(
	TourId char(10) primary key,
	TourPhoto nvarchar(100),
	TourName nvarchar(100),
	TourDescription nvarchar(max),
	TourPrice money,
	TourDeparture nvarchar(100),
	TourDestination nvarchar(100),
	TourTime nvarchar(100),
	TourVehicle nvarchar(100),
	TourSchedule nvarchar(1000),
	PlaceId char(10),
	constraint fk_Tour_Place foreign key(PlaceId) references Place(PlaceId),
	Status bit,
)
go

create Table Orders
(
	UserId int default 0,
	TourId char(10) default 0,
	constraint pk_Order Primary  key(UserId,TourId) ,
	constraint fk_Order_User foreign key(UserId) references Users(UserId) ON DELETE SET Default ,
	constraint fk_Order_Tour foreign key(TourId) references Tour(TourId) ON DELETE SET default,
	DateOrder datetime default GetDate(),
	status bit default 0,
)
go


insert into Country values('N01',N'Trong Nước')
insert into Country	values('N02',N'Nước Ngoài')

go
insert into Place values('P01',N'Ha Giang','N01')
insert into Place values('P02',N'Mộc Châu','N01')
insert into Place values('P03',N'Ha Nội','N01')
insert into Place values('P04',N'Ha Long','N01')
insert into Place values('P05',N'Tây Nguyên','N01')
insert into Place values('P06',N'Đà Nẵng','N01')
insert into Place values('P07',N'Đà Lạt','N01')
insert into Place values('P08',N'Nha Trang','N01')
insert into Place values('P09',N'Huế','N01')
insert into Place values('P010',N'Quảng Bình','N01')

insert into Place values('P11',N'Đài Loan','N02')
insert into Place values('P12',N'Nhật Bản','N02')
insert into Place values('P13',N'Hàn Quốc','N02')
insert into Place values('P14',N'Thổ Nhỉ Kỳ','N02')
insert into Place values('P15',N'Séc','N02')
insert into Place values('P16',N'Anh','N02')
insert into Place values('P17',N'Nga','N02')
go

insert into Users values('abc',N'Nam@gmail.com','123',03182633,N'Hà Nội','admin')
insert into Users values('xyz',N'Nga@gmail.com','123',03182633,N'Hà Nội','admin')
insert into Users values('ma',N'Lam@gmail.com','123',03182633,N'Hà Nội','user')
insert into Users values('mb',N'Hung@gmail.com','123',03182633,N'Hà Nội','user')
go


insert into Tour values('T01',
'~/Image/Tour1/t11.jfif',
N'ĐÊM THIÊNG LIÊNG ',
N'Thời gian ngày càng lùi xa, nhưng những di tích là minh chứng cho một thời kỳ đau thương mà hào hùng cả dân tộc chống lại ách nô lệ của thực dân, đế quốc vẫn được gìn giữ và trao truyền. Nhà tù Hỏa Lò - Nơi được mệnh danh “địa ngục của địa ngục” là một di tích như vậy. Đến đây, trong hành trình mới được Ban quản lý di tích Nhà tù Hoả Lò kết hợp cùng Hanoitourist thiết kế với tựa đề: “ĐÊM LINH THIÊNG - SÁNG NGỜI TINH THẦN VIỆT”, du khách sẽ hiểu hơn sự mất mát, hy sinh và bản lĩnh, ý chí quật cường của các thế hệ cha anh trước những tội ác dã man của kẻ thù để dành độc lập và tự do. Bên cạnh đó, du khách còn có cơ hội được thành kính tri ân những công lao của biết bao anh hùng, liệt sĩ, chiến sĩ yêu nước trong không gian tâm linh vô cùng đặc biệt. Vì thế, Hỏa Lò là một trong những địa danh thể hiện bản thiên hùng ca bất diệt và sáng ngời tinh thần yêu nước của người Việt Nam. Đây là một điểm đến không thể bỏ qua khi đến với Thủ đô Hà Nội.

Thông báo tour khởi hành ngày 25/7 và 26/7 hiện tại đã đủ lịch, Quý khách vui lòng đặt tour tiếp vào các ngày 31/7 trở đi. Trân trọng!

LƯU Ý: Khi Quý khách đặt chỗ online sẽ được sắp xếp và thông báo lại lịch chương trình',
15000,
N'Hà Nội',
N'Hà Nội',
'1N 1D',
N'Tự túc',
N'Nhà tù Hoả lò',
'P01',
1)
go
insert into Tour values('T02',
'~/Image/Tour1/t12.jfif',N'TÌM HIỂU LỊCH SỬ NGHÌN NĂM THĂNG LONG - HÀ NỘI',
N'THĂM QUAN HÀ NỘI NỬA NGÀY, BAO GỒM: BẢO TÀNG LỊCH SỬ QUỐC GIA  VÀ DI TÍCH HOÀNG THÀNH THĂNG LONG

- Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như:

+ Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam,

+ Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử,

+ Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …

Hoàng Thành Thăng Long - Di sản văn hóa thế giới, một quần thể di tích với nhiều giá trị di sản nổi bật toàn cầu. Năm 2020 là dấu ấn ghi nhận tròn 1010 năm vua Lý Thái Tổ chuyển kinh đô của nước Đại Cồ Việt từ Hoa Lư ra thành Đại La, cũng là thời điểm tròn 10 năm Hoàng Thành Thăng Long được UNESCO công nhận là di sản văn hóa thế giới. Quý khách sẽ hiểu rõ hơn về lịch sử kinh thành Thăng Long qua các thời kì khi khám phá các điểm tham quan nơi đây: Đoan Môn, Trục Thần Đạo, phòng trưng bày Thăng Long lịch sử nghìn năm từ lòng đất, nền Điện Kính Thiên, Hầm chỉ huy tác chiến, Nhà và Hầm D67, khu phát lộ những dấu vết của Hoàng thành Thăng Long trong tiến trình lịch sử trải dài 13 thế kỷ với các di tích và tầng văn hóa chồng xếp lên nhau … ',
1690000,
N'Hà Nội',
N'Hà Nội',
'3N 2Đ',
'oto',
N'Bảo tàng quốc giá Việt Nam - Hoàng Thành Thăng Long',
'P01',1)
go
insert into Tour values('T03',
'~/Image/Tour1/t13.jfif',
N' HÀ NỘI - TUY HÒA - QUY NHƠN',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020

"Du lịch Việt Nam, điểm đến  sáng tươi"

Liên hệ ngay hotline  0904929252 hoặc email noidia@hanoitourist-travel.com
Tham quan khu mộ cổ: của vua săn voi Khunjunop, nghe thuyền thuyết về săn bắt và thuần dưỡng voi rừng của người dân nơi đây.
Nhà thờ Mằng Lăng: nơi lưu giữ cuốn kinh thánh bằng chữ quốc ngữ cổ nhất Việt Nam. Đoàn có thể làm từ thiện tại cô nhi viện Mằng Lăng (nằm ngay phía sau nhà thờ). Tại đây đang nuôi dưỡng 22 cháu bé nhỏ mồ côi, có bé mới 22 ngày tuổi.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
4590000,
N'Hà Nội',
N'Tuy Hòa - Quy Nhơn',
'4N 3Đ',
N'Máy bay,Ô tô',
N'HÀ NỘI - TUY HÒA',
'P01',
1)
go

insert into Tour values('T04',
'~/Image/Tour1/t14.jfif',
N'COMBO 3 NGÀY 2 ĐÊM HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
5900000,
N'Hà Nội',
N'Hà Nội',
'2N 1D',
N'Ô tô',
N'HÀ NỘI HÀ NỘI',
'P01',
1)
go
insert into Tour values('T06',
'~/Image/Tour1/t16.jfif',
N'HÀ NỘI - ĐÀ LẠT - HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
4209000,
N'Hà Nội',
N'Đà Lạt',
'2N 1Đ',
N' Ô tô',
N'HÀ NỘI ĐÀ LẠT - PLEIKU - HÀ NỘI',
'P01',1)
go
insert into Tour values('T07',
'~/Image/Tour1/t17.jfif',
N'KÍCH CẦU DU LỊCH | TOUR NHA TRANG',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020
"Du lịch Việt Nam, điểm đến  sáng tươi"
Du lịch Nha Trang Đà Lạt là một trong những lịch trình được nhiều người quan tâm vì đây là hai trong số nhiều địa danh nổi tiếng cả nước về du lịch. Đến với nơi đây, du khách không những được tận hưởng không gian của cao nguyên và biển cả mà còn có thể thưởng thức nhiều đặc sản hấp dẫn. Tuy nhiên, làm thế nào để có được một hành trình thú vị cũng là vấn đề mà bạn cần chú ý.Thành phố ngàn hoa Đà Lạt và thành phố biển Nha Trang là hai trong nhiều điểm đến thu hút du khách đến nghỉ dưỡng và khám phá. Nếu bạn đang có ước muốn tổ chức một chuyến đi phượt tự túc thì nên thực hiện như thế nào? Lịch trình du lịch Nha Trang Đà Lạt tự túc khởi hành từ Hà nội với thời gian 5 ngày và 4 đêm dưới đây sẽ là một gợi ý thú vị dành cho bạn.
 

Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: info@hanoitourist-travel.com
Khám phá khu vui chơi giải trí Bà Nà Hill nổi tiếng. Nơi có Cầu Vàng - một trong những cây cầu được mệnh danh là đẹp nhất nhì trên thế giới.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
12000000,
N'Hà Nội',
N'Đà Lạt',
'5N 4Đ',
N'Bay ,ô tô',
N'HÀ NỘI – NHA TRANG – ĐÀ LẠT',
'P01',1)
go
insert into Tour values('T08',
'~/Image/Tour1/t18.jfif',N'HÀ NỘI - HUẾ - ĐÀ NẴNG - CẦN THƠ - BẠC LIÊU - CÀ MAU - NHA TRANG - QUY NHƠN - QUẢNG TRỊ - HUẾ',
N'Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: hue.nh@hanoitourist-travel.com
Bay hãng hàng không Vietnamairlines.
Tham quan Kinh Thành Đại Nội: Ngọ Môn Quan, Điện Thái Hoà , Tử Cấm Thành, Hồ Tĩnh Tâm, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh...
Bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà Cổ Tấn Ký, Chùa Cầu Nhật Bản....
Thăm Hồ Cá Trí Nguyên - nơi trưng bày các sinh vật biển quý hiếm.
 tham quan chợ nổi Phụng Hiệp - một trong những chợ nổi ở Đồng Bằng Sông Cửu Long
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.
 ',
6000000,
N'Hà Nội',
N'Hội An- Nha Trang - Quy Nhơn - Quảng Trị ',
'14N 13Đ',
N' Vietnam Airlines,ô tô',
N' Hà Nội - Huế - Quy Nhơn - Quảng Trị - Hà Nội',
'P01',1)
go

insert into Tour values('T09',
'~/Image/Tour1/t11.jfif',
N'ĐÊM THIÊNG LIÊNG ',
N'Thời gian ngày càng lùi xa, nhưng những di tích là minh chứng cho một thời kỳ đau thương mà hào hùng cả dân tộc chống lại ách nô lệ của thực dân, đế quốc vẫn được gìn giữ và trao truyền. Nhà tù Hỏa Lò - Nơi được mệnh danh “địa ngục của địa ngục” là một di tích như vậy. Đến đây, trong hành trình mới được Ban quản lý di tích Nhà tù Hoả Lò kết hợp cùng Hanoitourist thiết kế với tựa đề: “ĐÊM LINH THIÊNG - SÁNG NGỜI TINH THẦN VIỆT”, du khách sẽ hiểu hơn sự mất mát, hy sinh và bản lĩnh, ý chí quật cường của các thế hệ cha anh trước những tội ác dã man của kẻ thù để dành độc lập và tự do. Bên cạnh đó, du khách còn có cơ hội được thành kính tri ân những công lao của biết bao anh hùng, liệt sĩ, chiến sĩ yêu nước trong không gian tâm linh vô cùng đặc biệt. Vì thế, Hỏa Lò là một trong những địa danh thể hiện bản thiên hùng ca bất diệt và sáng ngời tinh thần yêu nước của người Việt Nam. Đây là một điểm đến không thể bỏ qua khi đến với Thủ đô Hà Nội.

Thông báo tour khởi hành ngày 25/7 và 26/7 hiện tại đã đủ lịch, Quý khách vui lòng đặt tour tiếp vào các ngày 31/7 trở đi. Trân trọng!

LƯU Ý: Khi Quý khách đặt chỗ online sẽ được sắp xếp và thông báo lại lịch chương trình',
150000,
N'Hà Nội',
N'Hà Nội',
'1N 1D',
N'Tự túc',
N'Nhà tù Hoả lò',
'P02',
1)
go
insert into Tour values('T10',
'~/Image/Tour1/t12.jfif',N'TÌM HIỂU LỊCH SỬ NGHÌN NĂM THĂNG LONG - HÀ NỘI',N'THĂM QUAN HÀ NỘI NỬA NGÀY, BAO GỒM: BẢO TÀNG LỊCH SỬ QUỐC GIA  VÀ DI TÍCH HOÀNG THÀNH THĂNG LONG

- Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như:

+ Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam,

+ Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử,

+ Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …

Hoàng Thành Thăng Long - Di sản văn hóa thế giới, một quần thể di tích với nhiều giá trị di sản nổi bật toàn cầu. Năm 2020 là dấu ấn ghi nhận tròn 1010 năm vua Lý Thái Tổ chuyển kinh đô của nước Đại Cồ Việt từ Hoa Lư ra thành Đại La, cũng là thời điểm tròn 10 năm Hoàng Thành Thăng Long được UNESCO công nhận là di sản văn hóa thế giới. Quý khách sẽ hiểu rõ hơn về lịch sử kinh thành Thăng Long qua các thời kì khi khám phá các điểm tham quan nơi đây: Đoan Môn, Trục Thần Đạo, phòng trưng bày Thăng Long lịch sử nghìn năm từ lòng đất, nền Điện Kính Thiên, Hầm chỉ huy tác chiến, Nhà và Hầm D67, khu phát lộ những dấu vết của Hoàng thành Thăng Long trong tiến trình lịch sử trải dài 13 thế kỷ với các di tích và tầng văn hóa chồng xếp lên nhau … ',
1690000,
N'Hà Nội',
N'Hà Nội',
'3N 2Đ',
'oto',
N'Bảo tàng quốc giá Việt Nam - Hoàng Thành Thăng Long',
'P02',1)
go
insert into Tour values('T11',
'~/Image/Tour1/t13.jfif',
N' HÀ NỘI - TUY HÒA - QUY NHƠN',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020

"Du lịch Việt Nam, điểm đến  sáng tươi"

Liên hệ ngay hotline  0904929252 hoặc email noidia@hanoitourist-travel.com
Tham quan khu mộ cổ: của vua săn voi Khunjunop, nghe thuyền thuyết về săn bắt và thuần dưỡng voi rừng của người dân nơi đây.
Nhà thờ Mằng Lăng: nơi lưu giữ cuốn kinh thánh bằng chữ quốc ngữ cổ nhất Việt Nam. Đoàn có thể làm từ thiện tại cô nhi viện Mằng Lăng (nằm ngay phía sau nhà thờ). Tại đây đang nuôi dưỡng 22 cháu bé nhỏ mồ côi, có bé mới 22 ngày tuổi.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
4590000,
N'Hà Nội',
N'Tuy Hòa - Quy Nhơn',
'4N 3Đ',
N'Máy bay,Ô tô',
N'HÀ NỘI - TUY HÒA',
'P02',
1)
go

insert into Tour values('T12',
'~/Image/Tour1/t14.jfif',
N'COMBO 3 NGÀY 2 ĐÊM HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
5900000,
N'Hà Nội',
N'Hà Nội',
'2N 1D',
N'Ô tô',
N'HÀ NỘI HÀ NỘI',
'P02',
1)
go
insert into Tour values('T13',
'~/Image/Tour1/t16.jfif',
N'HÀ NỘI - ĐÀ LẠT - HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
4209000,
N'Hà Nội',
N'Đà Lạt',
'2N 1Đ',
N' Ô tô',
N'HÀ NỘI ĐÀ LẠT - PLEIKU - HÀ NỘI',
'P02',1)
go
insert into Tour values('T14',
'~/Image/Tour1/t17.jfif',
N'KÍCH CẦU DU LỊCH | TOUR NHA TRANG',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020
"Du lịch Việt Nam, điểm đến  sáng tươi"
Du lịch Nha Trang Đà Lạt là một trong những lịch trình được nhiều người quan tâm vì đây là hai trong số nhiều địa danh nổi tiếng cả nước về du lịch. Đến với nơi đây, du khách không những được tận hưởng không gian của cao nguyên và biển cả mà còn có thể thưởng thức nhiều đặc sản hấp dẫn. Tuy nhiên, làm thế nào để có được một hành trình thú vị cũng là vấn đề mà bạn cần chú ý.Thành phố ngàn hoa Đà Lạt và thành phố biển Nha Trang là hai trong nhiều điểm đến thu hút du khách đến nghỉ dưỡng và khám phá. Nếu bạn đang có ước muốn tổ chức một chuyến đi phượt tự túc thì nên thực hiện như thế nào? Lịch trình du lịch Nha Trang Đà Lạt tự túc khởi hành từ Hà nội với thời gian 5 ngày và 4 đêm dưới đây sẽ là một gợi ý thú vị dành cho bạn.
 

Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: info@hanoitourist-travel.com
Khám phá khu vui chơi giải trí Bà Nà Hill nổi tiếng. Nơi có Cầu Vàng - một trong những cây cầu được mệnh danh là đẹp nhất nhì trên thế giới.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
12000000,
N'Hà Nội',
N'Đà Lạt',
'5N 4Đ',
N'Bay ,ô tô',
N'HÀ NỘI – NHA TRANG – ĐÀ LẠT',
'P02',1)
go
insert into Tour values('T15',
'~/Image/Tour1/t18.jfif',N'HÀ NỘI - HUẾ - ĐÀ NẴNG - CẦN THƠ - BẠC LIÊU - CÀ MAU - NHA TRANG - QUY NHƠN - QUẢNG TRỊ - HUẾ',
N'Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: hue.nh@hanoitourist-travel.com
Bay hãng hàng không Vietnamairlines.
Tham quan Kinh Thành Đại Nội: Ngọ Môn Quan, Điện Thái Hoà , Tử Cấm Thành, Hồ Tĩnh Tâm, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh...
Bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà Cổ Tấn Ký, Chùa Cầu Nhật Bản....
Thăm Hồ Cá Trí Nguyên - nơi trưng bày các sinh vật biển quý hiếm.
 tham quan chợ nổi Phụng Hiệp - một trong những chợ nổi ở Đồng Bằng Sông Cửu Long
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.
 ',
6000000,
N'Hà Nội',
N'Hội An- Nha Trang - Quy Nhơn - Quảng Trị ',
'14N 13Đ',
N' Vietnam Airlines,ô tô',
N' Hà Nội - Huế - Quy Nhơn - Quảng Trị - Hà Nội',
'P02',1)
go


insert into Tour values('T16','~/Image/Tour1/t11.jfif',N'ĐÊM THIÊNG LIÊNG ',N'Thời gian ngày càng lùi xa, nhưng những di tích là minh chứng cho một thời kỳ đau thương mà hào hùng cả dân tộc chống lại ách nô lệ của thực dân, đế quốc vẫn được gìn giữ và trao truyền. Nhà tù Hỏa Lò - Nơi được mệnh danh “địa ngục của địa ngục” là một di tích như vậy. Đến đây, trong hành trình mới được Ban quản lý di tích Nhà tù Hoả Lò kết hợp cùng Hanoitourist thiết kế với tựa đề: “ĐÊM LINH THIÊNG - SÁNG NGỜI TINH THẦN VIỆT”, du khách sẽ hiểu hơn sự mất mát, hy sinh và bản lĩnh, ý chí quật cường của các thế hệ cha anh trước những tội ác dã man của kẻ thù để dành độc lập và tự do. Bên cạnh đó, du khách còn có cơ hội được thành kính tri ân những công lao của biết bao anh hùng, liệt sĩ, chiến sĩ yêu nước trong không gian tâm linh vô cùng đặc biệt. Vì thế, Hỏa Lò là một trong những địa danh thể hiện bản thiên hùng ca bất diệt và sáng ngời tinh thần yêu nước của người Việt Nam. Đây là một điểm đến không thể bỏ qua khi đến với Thủ đô Hà Nội.

Thông báo tour khởi hành ngày 25/7 và 26/7 hiện tại đã đủ lịch, Quý khách vui lòng đặt tour tiếp vào các ngày 31/7 trở đi. Trân trọng!

LƯU Ý: Khi Quý khách đặt chỗ online sẽ được sắp xếp và thông báo lại lịch chương trình',
150000,
N'Hà Nội',
N'Hà Nội',
'1N 1D',
N'Tự túc',
N'Nhà tù Hoả lò',
'P03',
1)
go
insert into Tour values('T17',
'~/Image/Tour1/t12.jfif',N'TÌM HIỂU LỊCH SỬ NGHÌN NĂM THĂNG LONG - HÀ NỘI',N'THĂM QUAN HÀ NỘI NỬA NGÀY, BAO GỒM: BẢO TÀNG LỊCH SỬ QUỐC GIA  VÀ DI TÍCH HOÀNG THÀNH THĂNG LONG

- Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như:

+ Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam,

+ Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử,

+ Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …

Hoàng Thành Thăng Long - Di sản văn hóa thế giới, một quần thể di tích với nhiều giá trị di sản nổi bật toàn cầu. Năm 2020 là dấu ấn ghi nhận tròn 1010 năm vua Lý Thái Tổ chuyển kinh đô của nước Đại Cồ Việt từ Hoa Lư ra thành Đại La, cũng là thời điểm tròn 10 năm Hoàng Thành Thăng Long được UNESCO công nhận là di sản văn hóa thế giới. Quý khách sẽ hiểu rõ hơn về lịch sử kinh thành Thăng Long qua các thời kì khi khám phá các điểm tham quan nơi đây: Đoan Môn, Trục Thần Đạo, phòng trưng bày Thăng Long lịch sử nghìn năm từ lòng đất, nền Điện Kính Thiên, Hầm chỉ huy tác chiến, Nhà và Hầm D67, khu phát lộ những dấu vết của Hoàng thành Thăng Long trong tiến trình lịch sử trải dài 13 thế kỷ với các di tích và tầng văn hóa chồng xếp lên nhau … ',
1690000,
N'Hà Nội',
N'Hà Nội',
'3N 2Đ',
'oto',
N'Bảo tàng quốc giá Việt Nam - Hoàng Thành Thăng Long',
'P03',1)
go
insert into Tour values('T18',
'~/Image/Tour1/t13.jfif',
N' HÀ NỘI - TUY HÒA - QUY NHƠN',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020

"Du lịch Việt Nam, điểm đến  sáng tươi"

Liên hệ ngay hotline  0904929252 hoặc email noidia@hanoitourist-travel.com
Tham quan khu mộ cổ: của vua săn voi Khunjunop, nghe thuyền thuyết về săn bắt và thuần dưỡng voi rừng của người dân nơi đây.
Nhà thờ Mằng Lăng: nơi lưu giữ cuốn kinh thánh bằng chữ quốc ngữ cổ nhất Việt Nam. Đoàn có thể làm từ thiện tại cô nhi viện Mằng Lăng (nằm ngay phía sau nhà thờ). Tại đây đang nuôi dưỡng 22 cháu bé nhỏ mồ côi, có bé mới 22 ngày tuổi.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
4590000,
N'Hà Nội',
N'Tuy Hòa - Quy Nhơn',
'4N 3Đ',
N'Máy bay,Ô tô',
N'HÀ NỘI - TUY HÒA',
'P03',
1)
go

insert into Tour values('T19',
'~/Image/Tour1/t14.jfif',
N'COMBO 3 NGÀY 2 ĐÊM HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
5900000,
N'Hà Nội',
N'Hà Nội',
'2N 1D',
N'Ô tô',
N'HÀ NỘI HÀ NỘI',
'P03',
1)
go
insert into Tour values('T20',
'~/Image/Tour1/t16.jfif',
N'HÀ NỘI - ĐÀ LẠT - HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
4209000,
N'Hà Nội',
N'Đà Lạt',
'2N 1Đ',
N' Ô tô',
N'HÀ NỘI ĐÀ LẠT - PLEIKU - HÀ NỘI',
'P03',1)
go
insert into Tour values('T21',
'~/Image/Tour1/t17.jfif',
N'KÍCH CẦU DU LỊCH | TOUR NHA TRANG',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020
"Du lịch Việt Nam, điểm đến  sáng tươi"
Du lịch Nha Trang Đà Lạt là một trong những lịch trình được nhiều người quan tâm vì đây là hai trong số nhiều địa danh nổi tiếng cả nước về du lịch. Đến với nơi đây, du khách không những được tận hưởng không gian của cao nguyên và biển cả mà còn có thể thưởng thức nhiều đặc sản hấp dẫn. Tuy nhiên, làm thế nào để có được một hành trình thú vị cũng là vấn đề mà bạn cần chú ý.Thành phố ngàn hoa Đà Lạt và thành phố biển Nha Trang là hai trong nhiều điểm đến thu hút du khách đến nghỉ dưỡng và khám phá. Nếu bạn đang có ước muốn tổ chức một chuyến đi phượt tự túc thì nên thực hiện như thế nào? Lịch trình du lịch Nha Trang Đà Lạt tự túc khởi hành từ Hà nội với thời gian 5 ngày và 4 đêm dưới đây sẽ là một gợi ý thú vị dành cho bạn.
 

Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: info@hanoitourist-travel.com
Khám phá khu vui chơi giải trí Bà Nà Hill nổi tiếng. Nơi có Cầu Vàng - một trong những cây cầu được mệnh danh là đẹp nhất nhì trên thế giới.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
12000000,
N'Hà Nội',
N'Đà Lạt',
'5N 4Đ',
N'Bay ,ô tô',
N'HÀ NỘI – NHA TRANG – ĐÀ LẠT',
'P03',1)
go
insert into Tour values('T22',
'~/Image/Tour1/t18.jfif',N'HÀ NỘI - HUẾ - ĐÀ NẴNG - CẦN THƠ - BẠC LIÊU - CÀ MAU - NHA TRANG - QUY NHƠN - QUẢNG TRỊ - HUẾ',
N'Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: hue.nh@hanoitourist-travel.com
Bay hãng hàng không Vietnamairlines.
Tham quan Kinh Thành Đại Nội: Ngọ Môn Quan, Điện Thái Hoà , Tử Cấm Thành, Hồ Tĩnh Tâm, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh...
Bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà Cổ Tấn Ký, Chùa Cầu Nhật Bản....
Thăm Hồ Cá Trí Nguyên - nơi trưng bày các sinh vật biển quý hiếm.
 tham quan chợ nổi Phụng Hiệp - một trong những chợ nổi ở Đồng Bằng Sông Cửu Long
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.
 ',
6000000,
N'Hà Nội',
N'Hội An- Nha Trang - Quy Nhơn - Quảng Trị ',
'14N 13Đ',
N' Vietnam Airlines,ô tô',
N' Hà Nội - Huế - Quy Nhơn - Quảng Trị - Hà Nội',
'P03',1)
go


insert into Tour values('T30','~/Image/Tour1/t11.jfif',N'ĐÊM THIÊNG LIÊNG ',N'Thời gian ngày càng lùi xa, nhưng những di tích là minh chứng cho một thời kỳ đau thương mà hào hùng cả dân tộc chống lại ách nô lệ của thực dân, đế quốc vẫn được gìn giữ và trao truyền. Nhà tù Hỏa Lò - Nơi được mệnh danh “địa ngục của địa ngục” là một di tích như vậy. Đến đây, trong hành trình mới được Ban quản lý di tích Nhà tù Hoả Lò kết hợp cùng Hanoitourist thiết kế với tựa đề: “ĐÊM LINH THIÊNG - SÁNG NGỜI TINH THẦN VIỆT”, du khách sẽ hiểu hơn sự mất mát, hy sinh và bản lĩnh, ý chí quật cường của các thế hệ cha anh trước những tội ác dã man của kẻ thù để dành độc lập và tự do. Bên cạnh đó, du khách còn có cơ hội được thành kính tri ân những công lao của biết bao anh hùng, liệt sĩ, chiến sĩ yêu nước trong không gian tâm linh vô cùng đặc biệt. Vì thế, Hỏa Lò là một trong những địa danh thể hiện bản thiên hùng ca bất diệt và sáng ngời tinh thần yêu nước của người Việt Nam. Đây là một điểm đến không thể bỏ qua khi đến với Thủ đô Hà Nội.

Thông báo tour khởi hành ngày 25/7 và 26/7 hiện tại đã đủ lịch, Quý khách vui lòng đặt tour tiếp vào các ngày 31/7 trở đi. Trân trọng!

LƯU Ý: Khi Quý khách đặt chỗ online sẽ được sắp xếp và thông báo lại lịch chương trình',
150000,
N'Hà Nội',
N'Hà Nội',
'1N 1D',
N'Tự túc',
N'Nhà tù Hoả lò',
'P11',
1)
go
insert into Tour values('T31',
'~/Image/Tour1/t12.jfif',N'TÌM HIỂU LỊCH SỬ NGHÌN NĂM THĂNG LONG - HÀ NỘI',N'THĂM QUAN HÀ NỘI NỬA NGÀY, BAO GỒM: BẢO TÀNG LỊCH SỬ QUỐC GIA  VÀ DI TÍCH HOÀNG THÀNH THĂNG LONG

- Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như:

+ Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam,

+ Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử,

+ Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …

Hoàng Thành Thăng Long - Di sản văn hóa thế giới, một quần thể di tích với nhiều giá trị di sản nổi bật toàn cầu. Năm 2020 là dấu ấn ghi nhận tròn 1010 năm vua Lý Thái Tổ chuyển kinh đô của nước Đại Cồ Việt từ Hoa Lư ra thành Đại La, cũng là thời điểm tròn 10 năm Hoàng Thành Thăng Long được UNESCO công nhận là di sản văn hóa thế giới. Quý khách sẽ hiểu rõ hơn về lịch sử kinh thành Thăng Long qua các thời kì khi khám phá các điểm tham quan nơi đây: Đoan Môn, Trục Thần Đạo, phòng trưng bày Thăng Long lịch sử nghìn năm từ lòng đất, nền Điện Kính Thiên, Hầm chỉ huy tác chiến, Nhà và Hầm D67, khu phát lộ những dấu vết của Hoàng thành Thăng Long trong tiến trình lịch sử trải dài 13 thế kỷ với các di tích và tầng văn hóa chồng xếp lên nhau … ',
1690000,
N'Hà Nội',
N'Hà Nội',
'3N 2Đ',
'oto',
N'Bảo tàng quốc giá Việt Nam - Hoàng Thành Thăng Long',
'P11',1)
go
insert into Tour values('T32',
'~/Image/Tour1/t13.jfif',
N' HÀ NỘI - TUY HÒA - QUY NHƠN',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020

"Du lịch Việt Nam, điểm đến  sáng tươi"

Liên hệ ngay hotline  0904929252 hoặc email noidia@hanoitourist-travel.com
Tham quan khu mộ cổ: của vua săn voi Khunjunop, nghe thuyền thuyết về săn bắt và thuần dưỡng voi rừng của người dân nơi đây.
Nhà thờ Mằng Lăng: nơi lưu giữ cuốn kinh thánh bằng chữ quốc ngữ cổ nhất Việt Nam. Đoàn có thể làm từ thiện tại cô nhi viện Mằng Lăng (nằm ngay phía sau nhà thờ). Tại đây đang nuôi dưỡng 22 cháu bé nhỏ mồ côi, có bé mới 22 ngày tuổi.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
4590000,
N'Hà Nội',
N'Tuy Hòa - Quy Nhơn',
'4N 3Đ',
N'Máy bay,Ô tô',
N'HÀ NỘI - TUY HÒA',
'P11',
1)
go

insert into Tour values('T33',
'~/Image/Tour1/t14.jfif',
N'COMBO 3 NGÀY 2 ĐÊM HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
5900000,
N'Hà Nội',
N'Hà Nội',
'2N 1D',
N'Ô tô',
N'HÀ NỘI HÀ NỘI',
'P11',
1)
go
insert into Tour values('T34',
'~/Image/Tour1/t16.jfif',
N'HÀ NỘI - ĐÀ LẠT - HÀ NỘI',
N'COMBO 2 Bao gồm:

Đón tiễn sân bay Nội Bài
2 đêm phòng Khách sạn 5 sao SOFITEL LEGEND METROPOLE HANOI 
Trải nghiệm đi bộ tham quan Hà Nội nửa ngày tìm hiểu lịch sử, văn hoá Việt Nam thông qua các điểm tham quan đặc biệt hấp dẫn ngay giữa trung tâm thủ đô Hà Nội
01 bữa ăn tối
TOUR HÀ NỘI NỬA NGÀY

Bảo tàng Lịch Sử quốc gia Việt Nam, nơi lưu giữ, trưng bày và giới thiệu lịch sử Việt Nam với kiến trúc đặc sắc cùng các hiện vật vô cùng đồ sộ, quý giá, trong đó có nhiều hiện vật là Bảo vật quốc gia như: Trống Đồng Đông Sơn - biểu tượng của văn hoá Việt Nam, Kim Sách - một loại thư tịch cổ đặc biệt được làm bằng vàng và rất có giá trị về mặt lịch sử, Kim Ấn - hiện vật biểu tượng cho quyền uy tối cao của các vua triều Nguyễn …
Nhà Hát Lớn Hà Nội, một công trình kiến trúc có một không hai với những giá trị kiệt xuất về lịch sử, văn hoá, kiến trúc và mỹ thuật, là bằng chứng lịch sử của sự phát triển văn hoá và xã hội của Hà Nội và Việt Nam thời kỳ Pháp thuộc, là một di tích của một giai đoạn phát triển kiến trúc ở Việt Nam, một trung tâm văn hoá tiêu biểu không chỉ của Hà Nội, của Việt Nam mà còn của cả khu vực Đông Nam Á
Con đường lịch sử khách sạn Metropole, cơ hội tìm hiểu về lịch sử quá trình xây dựng và phát triển của một trong những khách sạn sang trọng bậc nhất và lâu đời nhất tại Hà Nội, thăm quan căn hầm trú ẩn – một trong những căn hầm trú ẩn kiên cố nhất trong thời ký chống Mỹ và hiện đang được coi là di sản lịch sử của khách sạn Metropole.
Di tích lịch sử cách mạng Bắc Bộ Phủ, nơi diễn ra cuộc đấu tranh cướp chính quyền của nhân dân Thủ đô Hà Nội năm 1945 đã đi vào lịch sử như một minh chứng cho sự vùng lên quật khởi để giành và bảo vệ quyền sống trong độc lập, tự do và hòa bình của dân tộc Việt Nam, một công trình có giá trị đặc biệt về kiến trúc của Đông Dương mang phong cách Châu Âu, là nơi ở và làm việc của Chủ tịch Hồ Chí Minh trong những ngày đầu tiên của nước Việt Nam Dân chủ Cộng hòa.',
4209000,
N'Hà Nội',
N'Đà Lạt',
'2N 1Đ',
N' Ô tô',
N'HÀ NỘI ĐÀ LẠT - PLEIKU - HÀ NỘI',
'P12',1)
go
insert into Tour values('T35',
'~/Image/Tour1/t17.jfif',
N'KÍCH CẦU DU LỊCH | TOUR NHA TRANG',
N'CHƯƠNG TRÌNH LIÊN MINH KÍCH CẦU DU LỊCH VIỆT NAM 2020
"Du lịch Việt Nam, điểm đến  sáng tươi"
Du lịch Nha Trang Đà Lạt là một trong những lịch trình được nhiều người quan tâm vì đây là hai trong số nhiều địa danh nổi tiếng cả nước về du lịch. Đến với nơi đây, du khách không những được tận hưởng không gian của cao nguyên và biển cả mà còn có thể thưởng thức nhiều đặc sản hấp dẫn. Tuy nhiên, làm thế nào để có được một hành trình thú vị cũng là vấn đề mà bạn cần chú ý.Thành phố ngàn hoa Đà Lạt và thành phố biển Nha Trang là hai trong nhiều điểm đến thu hút du khách đến nghỉ dưỡng và khám phá. Nếu bạn đang có ước muốn tổ chức một chuyến đi phượt tự túc thì nên thực hiện như thế nào? Lịch trình du lịch Nha Trang Đà Lạt tự túc khởi hành từ Hà nội với thời gian 5 ngày và 4 đêm dưới đây sẽ là một gợi ý thú vị dành cho bạn.
 

Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: info@hanoitourist-travel.com
Khám phá khu vui chơi giải trí Bà Nà Hill nổi tiếng. Nơi có Cầu Vàng - một trong những cây cầu được mệnh danh là đẹp nhất nhì trên thế giới.
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.',
12000000,
N'Hà Nội',
N'Đà Lạt',
'5N 4Đ',
N'Bay ,ô tô',
N'HÀ NỘI – NHA TRANG – ĐÀ LẠT',
'P12',1)
go
insert into Tour values('T36',
'~/Image/Tour1/t18.jfif',N'HÀ NỘI - HUẾ - ĐÀ NẴNG - CẦN THƠ - BẠC LIÊU - CÀ MAU - NHA TRANG - QUY NHƠN - QUẢNG TRỊ - HUẾ',
N'Liên hệ hotline Du lịch Nội Địa: 0904929252
Hoặc gửi mail theo địa chỉ sau: hue.nh@hanoitourist-travel.com
Bay hãng hàng không Vietnamairlines.
Tham quan Kinh Thành Đại Nội: Ngọ Môn Quan, Điện Thái Hoà , Tử Cấm Thành, Hồ Tĩnh Tâm, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh...
Bảo tàng lịch sử Hội An và miếu Quan Công, hội quán Phước Kiến, nhà Cổ Tấn Ký, Chùa Cầu Nhật Bản....
Thăm Hồ Cá Trí Nguyên - nơi trưng bày các sinh vật biển quý hiếm.
 tham quan chợ nổi Phụng Hiệp - một trong những chợ nổi ở Đồng Bằng Sông Cửu Long
Tổng đài 19004518 hỗ trợ Quý khách 24/7 cho các nhu cầu du lịch với phương trâm Uy tín - Chất lượng, Hanoitourist luôn tận tâm, cố gắng và nỗ lực mang đến cho Quý khách các chương trình du lịch hấp dẫn nhất.
 ',
6000000,
N'Hà Nội',
N'Hội An- Nha Trang - Quy Nhơn - Quảng Trị ',
'14N 13Đ',
N' Vietnam Airlines,ô tô',
N' Hà Nội - Huế - Quy Nhơn - Quảng Trị - Hà Nội',
'P12',1)
go



go
insert into Orders values(1,'T01')
insert into Orders values(2,'T02')