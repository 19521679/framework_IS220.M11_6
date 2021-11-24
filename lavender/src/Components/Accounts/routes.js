import ThongTinTaiKhoan from "./ThongTinTaiKhoan";
import ThongBaoCuaToi from "./ThongBaoCuaToi";
import QuanLyDonHang from "./QuanLyDonHang";
import SoDiaChi from "./SoDiaChi";
import SanPhamYeuThich from "./SanPhamYeuThich";
import ThayDoiSDT from "./ThayDoiSDT";
import ThayDoiEmail from "./ThayDoiEmail";

const routes=[
    {
        path: "/lmember/thongtintaikhoan",
        exact: true,
        main: () => <ThongTinTaiKhoan></ThongTinTaiKhoan>
      },
      {
        path: "/lmember/thongtintaikhoan/sdt",
        exact: true,
        main: () => <ThayDoiSDT></ThayDoiSDT>
      },
      {
        path: "/lmember/thongtintaikhoan/email",
        exact: true,
        main: () => <ThayDoiEmail></ThayDoiEmail>
      },
      {
        path: "/lmember/quanlydonhang",
        exact: true,
        main: () => <QuanLyDonHang></QuanLyDonHang>
      },
      {
        path: "/lmember/thongbaocuatoi",
        exact: true,
        main: () => <ThongBaoCuaToi></ThongBaoCuaToi>
      },
      {
        path: "/lmember/sodiachi",
        exact: true,
        main: () => <SoDiaChi></SoDiaChi>
      },
      {
        path: "/lmember/sanphamyeuthich",
        exact: true,
        main: () => <SanPhamYeuThich></SanPhamYeuThich>
      },
]
export default routes;