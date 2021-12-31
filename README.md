# Lavender
# Hướng dẫn cài đặt 
## **Bước 1: Chạy file Database Lavender.sql bằng MySQL** 

## **Bước 2: Chạy Backend Asp.net core**

- Thay đổi AppMvcConnectionString phù hợp với MySQL

- Thay đổi launchUrl phù hợp với địa chỉ IP và Port của máy.

- Cài đặt Asp.net core 3.1: <https://dotnet.microsoft.com/en-us/download/dotnet/3.1>
 
- Khởi động Backend: mở terminal hoăc powershell với đường dẫn lavender/Back, chạy lệnh dotnet run.
 
- Cấp quyền truy câp internet cho backend

- Truy cập vào đường dẫn tới server (mặc định <https://localhost:5001>) xuất hiện màn hình báo lỗi truy cập, chọn nâng cao, và chấp thuận.

## **Bước 3: Chạy Frontend React** 
- Thay đổi API\_ENDPOINT đến Url của backend trong thư mục lavender/lavender/src/Common/constants/index.js

- Cài đặt NodeJs bản 17 (mới nhất):  <https://nodejs.org/en/>
 
- Cài đặt các package

- Mở terminal hoặc powershell tới đường dẫn: /lavender/lavender

- Cài đặt Yarn: npm install –global yarn

- Cài đặt các thư viện có trong project: yarn

- Khởi động server: yarn start
