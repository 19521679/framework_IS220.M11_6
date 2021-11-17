using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;



namespace Back.Models
{
    public partial class LavenderContext : DbContext
    {
        /*public LavenderContext()
        {
        }*/
        public LavenderContext(DbContextOptions<LavenderContext> options)
            : base(options)
        {
        }
        public DbSet<KhachHangModel> Khachhang { get; set; }
        public DbSet<KhuyenMaiModel> Khuyenmai { get; set; }
        public DbSet<TaiKhoanKhachHangModel> Taikhoankhachhang { get; set; }
        public DbSet<TaiKhoanNhanVienModel> Taikhoannhanvien { get; set; }
        public DbSet<ThuongHieuModel> Thuonghieu { get; set; }
        public DbSet<VanChuyenModel> Vanchuyen { get; set; }

        /* protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=ADMIN;Database=QLCHDT;Trusted_Connection=True;");
            }
        }*/

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");
            modelBuilder.Entity<KhachHangModel>(entity =>
            {
                entity.HasKey(e => e.Makhachhang)
                    .IsClustered(false);

                entity.ToTable("KHACHHANG");

                entity.Property(e => e.Makhachhang)
                    .HasColumnName("MAKHACHHANG")
                    .ValueGeneratedNever();

                entity.Property(e => e.Diachi)
                    .IsRequired()
                    .HasColumnName("DIACHI")
                    .HasMaxLength(200);

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasColumnName("EMAIL")
                    .HasMaxLength(30);

                entity.Property(e => e.Loaikhachhang)
                    .HasColumnName("LOAIKHACHHANG")
                    .HasMaxLength(30);

                entity.Property(e => e.Ngaysinh)
                    .HasColumnName("NGAYSINH")
                    .HasColumnType("datetime");

                entity.Property(e => e.Sodienthoai)
                    .IsRequired()
                    .HasColumnName("SODIENTHOAI")
                    .HasMaxLength(20);

                entity.Property(e => e.Tenkhachhang)
                    .IsRequired()
                    .HasColumnName("TENKHACHHANG")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<KhuyenMaiModel>(entity =>
            {
                entity.HasKey(e => e.Makhuyenmai)
                    .IsClustered(false);

                entity.ToTable("KHUYENMAI");

                entity.Property(e => e.Makhuyenmai)
                    .HasColumnName("MAKHUYENMAI")
                    .ValueGeneratedNever();

                entity.Property(e => e.Dieukien)
                    .HasColumnName("DIEUKIEN")
                    .HasMaxLength(20)
                    .IsUnicode(false);

                entity.Property(e => e.Ngaybatdau)
                    .HasColumnName("NGAYBATDAU")
                    .HasColumnType("datetime");

                entity.Property(e => e.Ngayketthuc)
                    .HasColumnName("NGAYKETTHUC")
                    .HasColumnType("datetime");

                entity.Property(e => e.Tenkhuyenmai)
                    .IsRequired()
                    .HasColumnName("TENKHUYENMAI")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Tilekhuyenmai).HasColumnName("TILEKHUYENMAI");
            });
            modelBuilder.Entity<TaiKhoanKhachHangModel>(entity =>
            {
                entity.HasKey(e => e.Username)
                    .IsClustered(false);

                entity.ToTable("TAIKHOANKHACHHANG");

                entity.Property(e => e.Username)
                    .HasColumnName("USERNAME")
                    .HasMaxLength(300);

                entity.Property(e => e.Makhachhang).HasColumnName("MAKHACHHANG");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasColumnName("PASSWORD")
                    .HasMaxLength(20);

                entity.HasOne(d => d.khachHang)
                    .WithMany(p => p.taiKhoanKhachHangs)
                    .HasForeignKey(d => d.Makhachhang)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TAIKHOAN_REFERENCE_KHACHHAN");
            });

            modelBuilder.Entity<TaiKhoanNhanVienModel>(entity =>
            {
                entity.HasKey(e => e.Username)
                    .IsClustered(false);

                entity.ToTable("TAIKHOANNHANVIEN");

                entity.Property(e => e.Username)
                    .HasColumnName("USERNAME")
                    .HasMaxLength(300);

                entity.Property(e => e.Manhanvien).HasColumnName("MANHANVIEN");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasColumnName("PASSWORD")
                    .HasMaxLength(20);

                entity.HasOne(d => d.nhanVien)
                    .WithMany(p => p.taiKhoanNhanViens)
                    .HasForeignKey(d => d.Manhanvien)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_TAIKHOAN_REFERENCE_NHANVIEN");
            });

            modelBuilder.Entity<ThuongHieuModel>(entity =>
            {
                entity.HasKey(e => e.Mathuonghieu)
                    .IsClustered(false);

                entity.ToTable("THUONGHIEU");

                entity.Property(e => e.Mathuonghieu)
                    .HasColumnName("MATHUONGHIEU")
                    .ValueGeneratedNever();

                entity.Property(e => e.Tenthuonghieu)
                    .IsRequired()
                    .HasColumnName("TENTHUONGHIEU")
                    .HasMaxLength(30);

                entity.Property(e => e.Xuatxu)
                    .HasColumnName("XUATXU")
                    .HasMaxLength(30);
            });

            modelBuilder.Entity<VanChuyenModel>(entity =>
            {
                entity.HasKey(e => e.Mavanchuyen)
                    .IsClustered(false);

                entity.ToTable("VANCHUYEN");

                entity.Property(e => e.Mavanchuyen)
                    .HasColumnName("MAVANCHUYEN")
                    .ValueGeneratedNever();

                entity.Property(e => e.Sohoadon).HasColumnName("SOHOADON");

                entity.Property(e => e.Trangthai)
                    .IsRequired()
                    .HasColumnName("TRANGTHAI")
                    .HasColumnType("text");

                entity.HasOne(d => d.hoaDon)
                    .WithMany(p => p.vanChuyens)
                    .HasForeignKey(d => d.Sohoadon)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_VANCHUYE_REFERENCE_HOADON");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
