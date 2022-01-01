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
|  Nguyễn Lê Nguyên Khang     |      |[Link](https://www.facebook.com/nguyenkhang1531)|  |Phụ trách trang quản lý tài khoản khách hàng, trang admin, chỉnh sửa giao diện, thiết kế cơ sở dữ liệu, nhập dữ liệu| 100% |


## Hình ảnh trang chủ của Website
![Ảnh trang chủ](https://drive.google.com/file/d/1ekEDYjFB6Qhq8506Plvg36bYrywri0fX/view?usp=sharing)

## Link Deloy website của dự án
[Click vào đây để đến với website](https://lavender-uit-webshop.web.app/)

## Hướng dẫn cài đặt chương trình Web

### **Bước 1: Chạy file Database Lavender.sql bằng MySQL** 

### **Bước 2: Chạy Backend Asp.net core**

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

### Các ưu điểm của dự án
- Sang 
- Xịn 
- Mịn

| words              | transform to | keepUpperCase is false | keepUpperCase is true |  
|--------------------|--------------|------------------------|-----------------------|  
| "XML HTTP request" | pascalCase   | `XmlHttpRequest`       | `XMLHTTPRequest`      |  
| "new customer ID"  | camelCase    | `newCustomerId`        | `newCustomerID`       |  


<!-- TABLE_GENERATE_START -->


| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |

<!-- TABLE_GENERATE_END -->





