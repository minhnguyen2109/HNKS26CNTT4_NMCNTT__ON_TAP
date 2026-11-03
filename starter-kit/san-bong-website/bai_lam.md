# BÀI LÀM – HACKATHON 02

- **Mã đề:** 01
- **Họ tên:**
- **Lớp:**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
Hiển thị đường dẫn tuyệt đối của thư mục hiện tại: pwd
Liệt kê nội dung, gồm cả file ẩn: ls -Force
Di chuyển file ghi_chu_ban_giao.txt vào docs: Move-Item .\ghi_chu_ban_giao.txt .\docs\
Tạo thư mục backup trong thư mục gốc: mkdir backup
Sao chép data/dat_san_thang_10.xlsx vào backup: Copy-Item .\data\dat_san_thang_10.xlsx .\backup
Xoá file .tmp tại thư mục gốc; không xoá file khác: Remove-Item .\temp_002.tmp
Dùng đường dẫn tương đối vào logs, liệt kê nội dung rồi quay lại thư mục gốc
    + cd .\logs
    + ls
    + cd ..    
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
    Directory: C:\Users\ADMIN\Downloads\luyen_tap\starter-kit\starter-kit\s
    an-bong-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   8:38 AM                backup
d-----         11/3/2026   8:33 AM                data
d-----         11/3/2026   8:36 AM                docs
d-----         11/3/2026   8:31 AM                evidence
d-----         11/3/2026   8:33 AM                logs
d-----         11/3/2026   8:27 AM                web
-a----         11/3/2026   8:27 AM             76 .env
-a----         11/3/2026   8:27 AM            956 Access.log
-a----         11/3/2026   8:41 AM           3026 bai_lam.md

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
Get-Content .\logs\Access.log | Select-String "status=500" > .\logs\loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:28:45 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
(Get-Content .\logs\Access.log | Select-String "status=404").Count

```

```text
4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-10-28 08:07:39 GET /tin-tuc status=404
2026-10-28 08:13:01 GET /dat-san-cu status=404
2026-10-28 08:34:07 GET /images/san-7.jpg status=404
2026-10-28 08:57:24 GET /khuyen-mai status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |Network  |logo.png  |Sửa lại đường dẫn của link ảnh  |
| 2 |Console  |app.js:18 Uncaught ReferenceError: hienThiBangGia is not defined  |Sửa lại khai báo hàm  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context: Khi mở trang bảng giá sân bóng và chạy JavaScript trên trình duyệt, em gặp lỗi ở tab Console. Em chưa tự xử lý được và cần trưởng nhóm hỗ trợ kiểm tra.** 
- **Expected: Chương trình chạy bình thường và hiển thị danh sách sân cùng mức giá trong bảng.** 
- **Actual: Bảng giá không được hiển thị đúng do JavaScript báo lỗi khi gọi hàm `hienThiBangGia()`.** 
- **Log: Uncaught ReferenceError: hienThiBangGia is not defined** 

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError: hienThiBangGia is not defined"
```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_san_thang_10.xlsx`, không cần ghi vào đây.
