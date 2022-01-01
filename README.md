# Dự án Website cửa hàng Lavender chuyên bán điện thoại, laptop
## Mô tả về đồ án
 Dự án Website được xây dựng nhằm để bán điện thoai, laptop trực tuyến, đem đến những trải nghiệm mới lạ, tuyệt vời và đầy tiện lợi cho khách hàng cũng như đội ngũ nhân viên, giám đốc khi sử dụng. Website có nhiều chức năng nổi bật dành cho khách hàng như là hiển danh sách các sản phẩm đầy sinh động, thêm vào giỏ hàng, mua hàng, theo dõi tình trạng đơn hàng từ lúc mua đến lúc đã nhận và đánh giá sản phẩm đã mua. Ngoài ra còn có một số chức năng khác như là đăng ký tài khoản, đăng và xem bài viết, theo dõi bảo hành sản phẩm đã mua (đang phát triển),... Về phía giám đốc có các chức năng hỗ trợ quản lý tuyệt vời như theo dõi tổng quan tình hình doanh thu của công ty trong tháng, có thể xuất báo cáo bằng file excel, theo dõi các thông tin về hóa đơn, sản phẩm, phiếu nhập kho, khách hàng...

## Các công nghệ mới sử dụng trong đồ án
Có nhiều công nghệ mới sử dụng trong đồ án như là Reactjs, JWT Token, API,...

## Giới thiệu thành viên nhóm
|       Họ tên          |     MSSV     |    Địa chỉ Facebook    |     Số điện thoại     |       Nhiệm vụ                                     |Hoàn thành|
|-----------------------|--------------|------------------------|-----------------------|----------------------------------------------------|----------|  
|  Lê Mai Duy Khánh      |   19521679   |[Link](https://www.facebook.com/bii.nhok.1)| 0914630145 |Phụ trách trang chủ,trang admin, giỏ hàng, bài viết, đăng ký, đăng nhập, thiết kế cơ sở dữ liệu| 100% | 
|  Nguyễn Ngọc Châu  Pha    |   19521986  |[Link](https://www.facebook.com/chaupha.nguyen1808)| 0385276400 |Phụ trách trang admin, thiết kế và chỉnh sửa giao diện, thiết kế cơ sở dữ liệu, nhập dữ liệu| 100% |
|  Ngô Tường Vy      |   19522545   |[Link](https://www.facebook.com/tuongvy.ngo.52012)| 0902538763 |Phụ trách trang admin, thiết kế và chỉnh sửa giao diện, thiết kế cơ sở dữ liệu, nhập dữ liệu| 100% |
|  Nguyễn Lê Nguyên Khang     |   19521666   |[Link](https://www.facebook.com/nguyenkhang1531)| 0327403627 |Phụ trách trang quản lý tài khoản khách hàng, trang admin, chỉnh sửa giao diện, thiết kế cơ sở dữ liệu, nhập dữ liệu| 100% |


## Hình ảnh trang chủ của Website
![Ảnh trang chủ](https://scontent.fdad1-1.fna.fbcdn.net/v/t39.30808-6/270046390_3044287319179166_6035350275120142555_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=dbeb18&_nc_ohc=Y36YsiJJgfsAX9yW2pq&_nc_ht=scontent.fdad1-1.fna&oh=00_AT8P9J99-6iBZp6VX3KjWy25rXgEFh5IoBB1eas8-LJq9g&oe=61D3EF75)

## Link Deloy website của dự án
[Click vào đây để đến với website](https://lavender-uit-webshop.web.app/)

## Hướng dẫn cài đặt chương trình Web

### **Bước 1: Chạy file Database Lavender.sql bằng MySQL** 

### **Bước 2: Chạy Backend Asp.net core**
- Cài đặt các thư viện sau (đã tải lên git, không cần cài lại)
![Ảnh thư viện](https://scontent.fdad1-1.fna.fbcdn.net/v/t39.30808-6/270241963_3044294972511734_9140383735054285317_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=dbeb18&_nc_ohc=FaY4cdPNn7EAX-j0lQY&_nc_ht=scontent.fdad1-1.fna&oh=00_AT8VxyB2Qvcx9b2xbqrqZ4ii_oAU9ZVa_ipGFntVeH7Dyg&oe=61D58194)
![Ảnh thư viện](https://scontent.fdad1-3.fna.fbcdn.net/v/t39.30808-6/270252352_3044294785845086_5709618262599065895_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=dbeb18&_nc_ohc=OXHRLAm17ncAX_-3L8Z&tn=NHrAlX3B9vpysKo6&_nc_ht=scontent.fdad1-3.fna&oh=00_AT_5Bd7vlSe60m6shR94PlcJ2ZG63gBefT-kzSVJSrN93w&oe=61D5118B)
- Thay đổi AppMvcConnectionString phù hợp với MySQL

- Thay đổi launchUrl phù hợp với địa chỉ IP và Port của máy.

- Cài đặt Asp.net core 3.1: <https://dotnet.microsoft.com/en-us/download/dotnet/3.1>
 
- Khởi động Backend: mở terminal hoăc powershell với đường dẫn lavender/Back, chạy lệnh dotnet run.
 
- Cấp quyền truy câp internet cho backend

- Truy cập vào đường dẫn tới server (mặc định <https://localhost:5001>) xuất hiện màn hình báo lỗi truy cập, chọn nâng cao, và chấp thuận.

### **Bước 3: Chạy Frontend React** 
- Thay đổi API\_ENDPOINT đến Url của backend trong thư mục lavender/lavender/src/Common/constants/index.js

- Cài đặt NodeJs bản 17 (mới nhất):  <https://nodejs.org/en/>
 
- Cài đặt các package

- Mở terminal hoặc powershell tới đường dẫn: /lavender/lavender

- Cài đặt Yarn: npm install –global yarn

- Cài đặt các thư viện có trong project: yarn

- Khởi động server: yarn start

### Lời kết luận
 Cảm ơn anh Nguyễn Minh Nhựt đã tận tình hướng dẫn chúng em, tuy dự án web vẫn chưa hoàn thiện nhưng đó cũng là thành quả sau hơn ba tháng nổ lực. Trong thời gian tới, nhóm sẽ tiếp tục hoàn thiện trang web cũng như mong nhận được góp ý từ mọi người để có những điều chỉnh tốt hơn. Xin cảm ơn! 







