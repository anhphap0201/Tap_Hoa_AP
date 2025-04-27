# Tạp hóa AP - Website Bán Hàng (PHP Laravel & MySQL)

Đây là dự án xây dựng một trang web bán hàng cơ bản sử dụng PHP với framework Laravel và cơ sở dữ liệu MySQL.

## Mục lục

* [Mô tả](#mô-tả)
* [Tính năng](#tính-năng)
* [Công nghệ sử dụng](#công-nghệ-sử-dụng)
* [Yêu cầu hệ thống](#yêu-cầu-hệ-thống)
* [Cài đặt](#cài-đặt)
* [Cấu hình](#cấu-hình)
* [Khởi chạy ứng dụng](#khởi-chạy-ứng-dụng)
* [Cơ sở dữ liệu](#cơ-sở-dữ-liệu)
* [Sơ đồ lớp (Class Diagram)](#sơ-đồ-lớp-class-diagram)
* [Đóng góp](#đóng-góp)
* [Giấy phép](#giấy-phép)

## Mô tả

Tạp hóa AP là một ứng dụng web mô phỏng cửa hàng trực tuyến, cho phép người dùng xem sản phẩm, thêm vào giỏ hàng và thực hiện thanh toán (mô phỏng). Quản trị viên có thể quản lý sản phẩm, danh mục, đơn hàng và người dùng.

## Tính năng

* Hiển thị danh sách sản phẩm theo danh mục.
* Xem chi tiết sản phẩm.
* Tìm kiếm sản phẩm.
* Quản lý giỏ hàng (thêm, sửa, xóa).
* Quy trình đặt hàng (Checkout).
* Xác thực người dùng (Đăng ký, Đăng nhập, Đăng xuất).
* **[Admin]** Quản lý Sản phẩm (CRUD).
* **[Admin]** Quản lý Danh mục (CRUD).
* **[Admin]** Quản lý Đơn hàng.
* **[Admin]** Quản lý Người dùng.
* *...*

## Công nghệ sử dụng

* **Backend:** PHP, Laravel
  * Các ngôn ngữ Backend: **PHP**, **Python** (hỗ trợ script), **Shell Script**
* **Frontend:** Blade Templates, HTML, CSS, JavaScript
  * CSS thuần, có thể sử dụng thêm: Bootstrap 5 / Tailwind CSS
  * JavaScript thuần hoặc Framework (Vue.js, React) *(tuỳ chọn)*
* **Cơ sở dữ liệu:** MySQL / MariaDB
  * Ngôn ngữ liên quan: **SQL**
* **Cấu hình và quản lý:**
  * **YAML** (cho config)
  * **JSON** (cho cấu trúc dữ liệu)
  * **XML** (hệ thống hoặc giao tiếp dữ liệu)
  * **Makefile** (tự động hoá các tác vụ build, deploy)
* **Quản lý gói:**
  * **PHP:** Composer
  * **JavaScript:** NPM
* **Web Server:**
  * Khi phát triển: PHP Development Server (`php artisan serve`)
  * Khi triển khai: Apache / Nginx

## Yêu cầu hệ thống

Để chạy dự án này trên máy cục bộ, bạn cần cài đặt:

* PHP >= 8.x (Kiểm tra phiên bản yêu cầu bởi Laravel bạn dùng)
* Composer
* Node.js và NPM (hoặc Yarn)
* MySQL Server
* Git (Khuyến nghị)

## Cài đặt

1.  **Clone Repository:**
    ```bash
    git clone https://github.com/anhphap0201/Tap_Hoa_AP Tap_Hoa_AP
    cd Tap_Hoa_AP
    ```

2.  **Cài đặt Dependencies PHP:**
    ```bash
    composer install
    ```

3.  **Cài đặt Dependencies Node.js:**
    ```bash
    npm install
    ```

4.  **Build Frontend Assets:**
    ```bash
    npm run dev
    ```

5.  **Sao chép file môi trường:**
    * Sao chép tệp `.env.example` thành `.env`.</br></br>
    ```bash
    cp .env.example .env
    ```

6.  **Sinh Khóa Ứng Dụng (Generate App Key):**
    ```bash
    php artisan key:generate
    ```

## Cấu hình
* Mở tệp `.env` vừa tạo và cấu hình các thông tin cần thiết, quan trọng nhất là **kết nối cơ sở dữ liệu**:</br></br>
    ```dotenv
    # Database 1: Dữ liệu chính
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=nso_data
    DB_USERNAME=root
    DB_PASSWORD=

    # Database 2: Quản lý tài khoản
    DB_ACCOUNT_CONNECTION=mysql
    DB_ACCOUNT_HOST=127.0.0.1
    DB_ACCOUNT_PORT=3306
    DB_ACCOUNT_DATABASE=nso_acc
    DB_ACCOUNT_USERNAME=root
    DB_ACCOUNT_PASSWORD=

    # URL local
    APP_URL=http://localhost:8000

    ```

## Khởi chạy ứng dụng


1.  **Khởi động Development Server:**
    ```bash
    php artisan serve
    ```

2.  Mở trình duyệt và truy cập vào địa chỉ được cung cấp (thường là `http://127.0.0.1:8000` hoặc `http://localhost:8000`).

## Cơ sở dữ liệu

Dự án sử dụng **MySQL** với **XAMPP**. Bạn có thể sử dụng XAMPP để tạo cơ sở dữ liệu và thêm các bảng từ file `.sql` vào MySQL.

### Các bước thực hiện:

1. **Mở XAMPP và Khởi động Apache và MySQL**:
   - Mở **XAMPP Control Panel**.
   - Khởi động **Apache** và **MySQL**.

2. **Mở phpMyAdmin**:
   - Sau khi MySQL đã được khởi động, truy cập vào **phpMyAdmin** bằng cách mở trình duyệt và nhập địa chỉ sau:
     ```
     http://localhost/phpmyadmin
     ```
   - Đăng nhập vào phpMyAdmin bằng tài khoản mặc định `root` (nếu bạn chưa thay đổi).

3. **Tạo cơ sở dữ liệu mới** (nếu cần):
   - Trong giao diện phpMyAdmin, chọn tab **Databases**.
   - Nhập tên cơ sở dữ liệu vào trường **Database name**, sau đó nhấn **Create**.

4. **Nhập file .sql** vào cơ sở dữ liệu:
   - Chọn cơ sở dữ liệu mà bạn vừa tạo hoặc muốn sử dụng.
   - Chọn tab **Import**.
   - Trong phần **File to import**, nhấn vào nút **Choose File** và chọn file `nso_acc.sql`.
   - Nhấn **Go** để bắt đầu quá trình nhập liệu.

5. **Lặp lại bước 4 với file .sql thứ hai**:
   - Hãy lặp lại các bước từ bước 4 để nhập file  `nso_data.sql` vào cơ sở dữ liệu.

6. **Kiểm tra kết quả**:
   - Sau khi quá trình nhập liệu hoàn tất, bạn có thể kiểm tra các bảng và dữ liệu trong cơ sở dữ liệu bằng cách chọn cơ sở dữ liệu trong phpMyAdmin.

## Sơ đồ
### Sơ đồ lớp (Class Diagram)
* **Ảnh:**

    ![Sơ đồ lớp Tạp hóa NSO](./Img/NSO_SHOP_CLASS_DIAGRAM.drawio.png)

### Sơ đồ tuần tự (Sequence Diagram)
* **Ảnh:**

    ![Sơ đồ tuần tự Tạp hóa NSO](./Img/NSO_SHOP_SEQUENCE_DIAGRAM.drawio.png)

## Đóng góp

Nếu bạn muốn đóng góp cho dự án, vui lòng tuân thủ các quy tắc sau:

1.  Fork repository.
2.  Tạo một nhánh mới (`git checkout -b feature/TenTinhNang`).
3.  Commit các thay đổi của bạn (`git commit -am 'Add: Thêm tính năng X'`).
4.  Push lên nhánh của bạn (`git push origin feature/TenTinhNang`).
5.  Tạo một Pull Request mới.