using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Back.Models
{
    public partial class lavenderContext : DbContext
    {
        public lavenderContext()
        {
        }

        public lavenderContext(DbContextOptions<lavenderContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Baohanh> Baohanhs { get; set; }
        public virtual DbSet<Chitietgiohang> Chitietgiohangs { get; set; }
        public virtual DbSet<Chitiethoadon> Chitiethoadons { get; set; }
        public virtual DbSet<Chitietsanpham> Chitietsanphams { get; set; }
        public virtual DbSet<Danhgium> Danhgia { get; set; }
        public virtual DbSet<Giohang> Giohangs { get; set; }
        public virtual DbSet<Hoadon> Hoadons { get; set; }
        public virtual DbSet<Khachhang> Khachhangs { get; set; }
        public virtual DbSet<Khuyenmai> Khuyenmais { get; set; }
        public virtual DbSet<Loaisanpham> Loaisanphams { get; set; }
        public virtual DbSet<Nhacungcap> Nhacungcaps { get; set; }
        public virtual DbSet<Nhanvien> Nhanviens { get; set; }
        public virtual DbSet<Phieunhapsanpham> Phieunhapsanphams { get; set; }
        public virtual DbSet<Sanpham> Sanphams { get; set; }
        public virtual DbSet<Taikhoankhachhang> Taikhoankhachhangs { get; set; }
        public virtual DbSet<Taikhoannhanvien> Taikhoannhanviens { get; set; }
        public virtual DbSet<Thuonghieu> Thuonghieus { get; set; }
        public virtual DbSet<Vanchuyen> Vanchuyens { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=localhost,1433;Initial Catalog=lavender;User ID=SA;Password=Password123");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Baohanh>(entity =>
            {
                entity.HasKey(e => e.Mabaohanh);

                entity.ToTable("BAOHANH");

                entity.Property(e => e.Mabaohanh)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MABAOHANH");

                entity.Property(e => e.Chiphi).HasColumnName("CHIPHI");

                entity.Property(e => e.Ghichu)
                    .HasMaxLength(1000)
                    .IsUnicode(false)
                    .HasColumnName("GHICHU");

                entity.Property(e => e.Imei)
                    .IsRequired()
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("IMEI");

                entity.Property(e => e.Ngaybaohanh)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYBAOHANH");

                entity.HasOne(d => d.ImeiNavigation)
                    .WithMany(p => p.Baohanhs)
                    .HasForeignKey(d => d.Imei)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_BAOHANH_REFERENCE_CHITIETS");
            });

            modelBuilder.Entity<Chitietgiohang>(entity =>
            {
                entity.HasKey(e => new { e.Magiohang, e.Masanpham });

                entity.ToTable("CHITIETGIOHANG");

                entity.Property(e => e.Magiohang)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAGIOHANG");

                entity.Property(e => e.Masanpham)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MASANPHAM");

                entity.Property(e => e.Soluong).HasColumnName("SOLUONG");

                entity.HasOne(d => d.MasanphamNavigation)
                    .WithMany(p => p.Chitietgiohangs)
                    .HasForeignKey(d => d.Masanpham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CHITIETG_REFERENCE_SANPHAM");
            });

            modelBuilder.Entity<Chitiethoadon>(entity =>
            {
                entity.HasKey(e => new { e.Sohoadon, e.Imei });

                entity.ToTable("CHITIETHOADON");

                entity.Property(e => e.Sohoadon)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("SOHOADON");

                entity.Property(e => e.Imei)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("IMEI");

                entity.Property(e => e.Soluong).HasColumnName("SOLUONG");

                entity.Property(e => e.Tien).HasColumnName("TIEN");

                entity.HasOne(d => d.ImeiNavigation)
                    .WithMany(p => p.Chitiethoadons)
                    .HasForeignKey(d => d.Imei)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CHITIETH_REFERENCE_CHITIETS");

                entity.HasOne(d => d.SohoadonNavigation)
                    .WithMany(p => p.Chitiethoadons)
                    .HasForeignKey(d => d.Sohoadon)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CHITIETH_REFERENCE_HOADON");
            });

            modelBuilder.Entity<Chitietsanpham>(entity =>
            {
                entity.HasKey(e => e.Imei);

                entity.ToTable("CHITIETSANPHAM");

                entity.Property(e => e.Imei)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("IMEI");

                entity.Property(e => e.Masanpham)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MASANPHAM");

                entity.Property(e => e.Ngaysanxuat)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYSANXUAT");

                entity.Property(e => e.Tinhtrang)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TINHTRANG");

                entity.HasOne(d => d.MasanphamNavigation)
                    .WithMany(p => p.Chitietsanphams)
                    .HasForeignKey(d => d.Masanpham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_CHITIETS_REFERENCE_SANPHAM");
            });

            modelBuilder.Entity<Danhgium>(entity =>
            {
                entity.HasKey(e => e.Madanhgia);

                entity.ToTable("DANHGIA");

                entity.Property(e => e.Madanhgia)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MADANHGIA");

                entity.Property(e => e.Image)
                    .HasMaxLength(1)
                    .HasColumnName("IMAGE")
                    .IsFixedLength(true);

                entity.Property(e => e.Makhachhang)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Masanpham)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MASANPHAM");

                entity.Property(e => e.Noidung)
                    .HasMaxLength(1000)
                    .IsUnicode(false)
                    .HasColumnName("NOIDUNG");

                entity.Property(e => e.Sosao).HasColumnName("SOSAO");

                entity.Property(e => e.Thoigian)
                    .HasColumnType("datetime")
                    .HasColumnName("THOIGIAN");

                entity.HasOne(d => d.MakhachhangNavigation)
                    .WithMany(p => p.Danhgia)
                    .HasForeignKey(d => d.Makhachhang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_DANHGIA_REFERENCE_KHACHHAN");

                entity.HasOne(d => d.MasanphamNavigation)
                    .WithMany(p => p.Danhgia)
                    .HasForeignKey(d => d.Masanpham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_DANHGIA_REFERENCE_SANPHAM");
            });

            modelBuilder.Entity<Giohang>(entity =>
            {
                entity.HasKey(e => e.Magiohang);

                entity.ToTable("GIOHANG");

                entity.Property(e => e.Magiohang)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAGIOHANG");

                entity.Property(e => e.Makhachhang)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Tongtien).HasColumnName("TONGTIEN");

                entity.HasOne(d => d.MakhachhangNavigation)
                    .WithMany(p => p.Giohangs)
                    .HasForeignKey(d => d.Makhachhang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_GIOHANG_REFERENCE_KHACHHAN");
            });

            modelBuilder.Entity<Hoadon>(entity =>
            {
                entity.HasKey(e => e.Sohoadon);

                entity.ToTable("HOADON");

                entity.Property(e => e.Sohoadon)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("SOHOADON");

                entity.Property(e => e.Makhachhang)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Makhuyenmai)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHUYENMAI");

                entity.Property(e => e.Manhanvien)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MANHANVIEN");

                entity.Property(e => e.Ngayhoadon)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYHOADON");

                entity.Property(e => e.Tongtien).HasColumnName("TONGTIEN");

                entity.HasOne(d => d.MakhachhangNavigation)
                    .WithMany(p => p.Hoadons)
                    .HasForeignKey(d => d.Makhachhang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HOADON_REFERENCE_KHACHHAN");

                entity.HasOne(d => d.MakhuyenmaiNavigation)
                    .WithMany(p => p.Hoadons)
                    .HasForeignKey(d => d.Makhuyenmai)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_HOADON_REFERENCE_KHUYENMA");

                entity.HasOne(d => d.ManhanvienNavigation)
                    .WithMany(p => p.Hoadons)
                    .HasForeignKey(d => d.Manhanvien)
                    .HasConstraintName("FK_HOADON_REFERENCE_NHANVIEN");
            });

            modelBuilder.Entity<Khachhang>(entity =>
            {
                entity.HasKey(e => e.Makhachhang);

                entity.ToTable("KHACHHANG");

                entity.Property(e => e.Makhachhang)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Diachi)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("DIACHI");

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("EMAIL");

                entity.Property(e => e.Loaikhachhang)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("LOAIKHACHHANG");

                entity.Property(e => e.Ngaysinh)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYSINH");

                entity.Property(e => e.Sodienthoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("SODIENTHOAI");

                entity.Property(e => e.Tenkhachhang)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENKHACHHANG");
            });

            modelBuilder.Entity<Khuyenmai>(entity =>
            {
                entity.HasKey(e => e.Makhuyenmai);

                entity.ToTable("KHUYENMAI");

                entity.Property(e => e.Makhuyenmai)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHUYENMAI");

                entity.Property(e => e.Dieukien)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("DIEUKIEN");

                entity.Property(e => e.Ngaybatdau)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYBATDAU");

                entity.Property(e => e.Ngayketthuc)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYKETTHUC");

                entity.Property(e => e.Tenkhuyenmai)
                    .IsRequired()
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENKHUYENMAI");

                entity.Property(e => e.Tilekhuyenmai).HasColumnName("TILEKHUYENMAI");
            });

            modelBuilder.Entity<Loaisanpham>(entity =>
            {
                entity.HasKey(e => e.Maloai);

                entity.ToTable("LOAISANPHAM");

                entity.Property(e => e.Maloai)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MALOAI");

                entity.Property(e => e.Tenloai)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENLOAI");
            });

            modelBuilder.Entity<Nhacungcap>(entity =>
            {
                entity.HasKey(e => e.Manhacungcap);

                entity.ToTable("NHACUNGCAP");

                entity.Property(e => e.Manhacungcap)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MANHACUNGCAP");

                entity.Property(e => e.Diachi)
                    .HasMaxLength(40)
                    .IsUnicode(false)
                    .HasColumnName("DIACHI");

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("EMAIL");

                entity.Property(e => e.Sodienthoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("SODIENTHOAI");

                entity.Property(e => e.Tennhacungcap)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENNHACUNGCAP");
            });

            modelBuilder.Entity<Nhanvien>(entity =>
            {
                entity.HasKey(e => e.Manhanvien);

                entity.ToTable("NHANVIEN");

                entity.Property(e => e.Manhanvien)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MANHANVIEN");

                entity.Property(e => e.Cccd)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("CCCD");

                entity.Property(e => e.Chucvu)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("CHUCVU");

                entity.Property(e => e.Diachi)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("DIACHI");

                entity.Property(e => e.Email)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("EMAIL");

                entity.Property(e => e.Ngaysinh)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYSINH");

                entity.Property(e => e.Ngayvaolam)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYVAOLAM");

                entity.Property(e => e.Sodienthoai)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("SODIENTHOAI");

                entity.Property(e => e.Tennhanvien)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENNHANVIEN");
            });

            modelBuilder.Entity<Phieunhapsanpham>(entity =>
            {
                entity.HasKey(e => e.Maphieunhap);

                entity.ToTable("PHIEUNHAPSANPHAM");

                entity.Property(e => e.Maphieunhap)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAPHIEUNHAP");

                entity.Property(e => e.Ghichu)
                    .HasMaxLength(1000)
                    .IsUnicode(false)
                    .HasColumnName("GHICHU");

                entity.Property(e => e.Manhacungcap)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MANHACUNGCAP");

                entity.Property(e => e.Masanpham)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MASANPHAM");

                entity.Property(e => e.Ngaynhap)
                    .HasColumnType("datetime")
                    .HasColumnName("NGAYNHAP");

                entity.Property(e => e.Soluongnhap).HasColumnName("SOLUONGNHAP");

                entity.Property(e => e.Tiennhap).HasColumnName("TIENNHAP");

                entity.HasOne(d => d.ManhacungcapNavigation)
                    .WithMany(p => p.Phieunhapsanphams)
                    .HasForeignKey(d => d.Manhacungcap)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PHIEUNHA_REFERENCE_NHACUNGC");

                entity.HasOne(d => d.MasanphamNavigation)
                    .WithMany(p => p.Phieunhapsanphams)
                    .HasForeignKey(d => d.Masanpham)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_PHIEUNHA_REFERENCE_SANPHAM");
            });

            modelBuilder.Entity<Sanpham>(entity =>
            {
                entity.HasKey(e => e.Masanpham);

                entity.ToTable("SANPHAM");

                entity.Property(e => e.Masanpham)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MASANPHAM");

                entity.Property(e => e.Dongia).HasColumnName("DONGIA");

                entity.Property(e => e.Image)
                    .HasMaxLength(1)
                    .HasColumnName("IMAGE")
                    .IsFixedLength(true);

                entity.Property(e => e.Maloai)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MALOAI");

                entity.Property(e => e.Mathuonghieu)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MATHUONGHIEU");

                entity.Property(e => e.Mota)
                    .HasMaxLength(1000)
                    .IsUnicode(false)
                    .HasColumnName("MOTA");

                entity.Property(e => e.Soluongton).HasColumnName("SOLUONGTON");

                entity.Property(e => e.Tensanpham)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENSANPHAM");

                entity.Property(e => e.Thoidiemramat)
                    .HasColumnType("datetime")
                    .HasColumnName("THOIDIEMRAMAT");

                entity.HasOne(d => d.MaloaiNavigation)
                    .WithMany(p => p.Sanphams)
                    .HasForeignKey(d => d.Maloai)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SANPHAM_REFERENCE_LOAISANP");

                entity.HasOne(d => d.MathuonghieuNavigation)
                    .WithMany(p => p.Sanphams)
                    .HasForeignKey(d => d.Mathuonghieu)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_SANPHAM_REFERENCE_THUONGHI");
            });

            modelBuilder.Entity<Taikhoankhachhang>(entity =>
            {
                entity.HasKey(e => e.Username);

                entity.ToTable("TAIKHOANKHACHHANG");

                entity.Property(e => e.Username)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("USERNAME");

                entity.Property(e => e.Makhachhang)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Password)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("PASSWORD");

                entity.HasOne(d => d.MakhachhangNavigation)
                    .WithMany(p => p.Taikhoankhachhangs)
                    .HasForeignKey(d => d.Makhachhang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TAIKHOAN_REFERENCE_KHACHHAN");
            });

            modelBuilder.Entity<Taikhoannhanvien>(entity =>
            {
                entity.HasKey(e => e.Username);

                entity.ToTable("TAIKHOANNHANVIEN");

                entity.Property(e => e.Username)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("USERNAME");

                entity.Property(e => e.Manhanvien)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MANHANVIEN");

                entity.Property(e => e.Password)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("PASSWORD");

                entity.HasOne(d => d.ManhanvienNavigation)
                    .WithMany(p => p.Taikhoannhanviens)
                    .HasForeignKey(d => d.Manhanvien)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TAIKHOAN_REFERENCE_NHANVIEN");
            });

            modelBuilder.Entity<Thuonghieu>(entity =>
            {
                entity.HasKey(e => e.Mathuonghieu);

                entity.ToTable("THUONGHIEU");

                entity.Property(e => e.Mathuonghieu)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MATHUONGHIEU");

                entity.Property(e => e.Tenthuonghieu)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("TENTHUONGHIEU");

                entity.Property(e => e.Xuatxu)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasColumnName("XUATXU");
            });

            modelBuilder.Entity<Vanchuyen>(entity =>
            {
                entity.HasKey(e => e.Mavanchuyen);

                entity.ToTable("VANCHUYEN");

                entity.Property(e => e.Mavanchuyen)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("MAVANCHUYEN");

                entity.Property(e => e.Sohoadon)
                    .IsRequired()
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("SOHOADON");

                entity.Property(e => e.Thoidiem)
                    .HasColumnType("datetime")
                    .HasColumnName("THOIDIEM");

                entity.Property(e => e.Tinhtrang)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .HasColumnName("TINHTRANG");

                entity.HasOne(d => d.SohoadonNavigation)
                    .WithMany(p => p.Vanchuyens)
                    .HasForeignKey(d => d.Sohoadon)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_VANCHUYE_REFERENCE_HOADON");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
