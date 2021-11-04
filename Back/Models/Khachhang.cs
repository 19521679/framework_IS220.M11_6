// File:    Khachhang.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Khachhang

using System;
using System.Collections;
public class Khachhang
{
    private string makhachhang;
    private string tenkhachhang;
    private string email;
    private string sodienthoai;
    private string diachi;
    private DateTime ngaysinh;
    private string loaikhachhang;

    public ICollection<Hoadon> hoadon;
   
   /// <summary>
   /// Property for collection of Hoadon
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public ICollection<Hoadon> Hoadon
   {
      get
      {
         if (hoadon == null)
            hoadon = new System.Collections.Generic.List<Hoadon>();
         return hoadon;
      }
      set
      {
         RemoveAllHoadon();
         if (value != null)
         {
            foreach (Hoadon oHoadon in value)
               AddHoadon(oHoadon);
         }
      }
   }
   
   /// <summary>
   /// Add a new Hoadon in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddHoadon(Hoadon newHoadon)
   {
      if (newHoadon == null)
         return;
      if (this.hoadon == null)
         this.hoadon = new System.Collections.Generic.List<Hoadon>();
      if (!this.hoadon.Contains(newHoadon))
      {
         this.hoadon.Add(newHoadon);
         newHoadon.Khachhang = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Hoadon from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveHoadon(Hoadon oldHoadon)
   {
      if (oldHoadon == null)
         return;
      if (this.hoadon != null)
         if (this.hoadon.Contains(oldHoadon))
         {
            this.hoadon.Remove(oldHoadon);
            oldHoadon.Khachhang = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Hoadon from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllHoadon()
   {
      if (hoadon != null)
      {
         ICollection tmpHoadon = new System.Collections.ArrayList();
         foreach (Hoadon oldHoadon in hoadon)
            tmpHoadon.Add(oldHoadon);
         hoadon.Clear();
         foreach (Hoadon oldHoadon in tmpHoadon)
            oldHoadon.Khachhang = null;
         tmpHoadon.Clear();
      }
   }
   public ICollection<Danhgia> danhgia;
   
   /// <summary>
   /// Property for collection of Danhgia
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public ICollection<Danhgia> Danhgia
   {
      get
      {
         if (danhgia == null)
            danhgia = new System.Collections.Generic.List<Danhgia>();
         return danhgia;
      }
      set
      {
         RemoveAllDanhgia();
         if (value != null)
         {
            foreach (Danhgia oDanhgia in value)
               AddDanhgia(oDanhgia);
         }
      }
   }
   
   /// <summary>
   /// Add a new Danhgia in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddDanhgia(Danhgia newDanhgia)
   {
      if (newDanhgia == null)
         return;
      if (this.danhgia == null)
         this.danhgia = new System.Collections.Generic.List<Danhgia>();
      if (!this.danhgia.Contains(newDanhgia))
      {
         this.danhgia.Add(newDanhgia);
         newDanhgia.Khachhang = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Danhgia from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveDanhgia(Danhgia oldDanhgia)
   {
      if (oldDanhgia == null)
         return;
      if (this.danhgia != null)
         if (this.danhgia.Contains(oldDanhgia))
         {
            this.danhgia.Remove(oldDanhgia);
            oldDanhgia.Khachhang = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Danhgia from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllDanhgia()
   {
      if (danhgia != null)
      {
            ICollection tmpDanhgia = new System.Collections.ArrayList();
         foreach (Danhgia oldDanhgia in danhgia)
            tmpDanhgia.Add(oldDanhgia);
         danhgia.Clear();
         foreach (Danhgia oldDanhgia in tmpDanhgia)
            oldDanhgia.Khachhang = null;
         tmpDanhgia.Clear();
      }
   }
   public ICollection<Giohang> giohang;
   
   /// <summary>
   /// Property for collection of Giohang
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public ICollection<Giohang> Giohang
   {
      get
      {
         if (giohang == null)
            giohang = new System.Collections.Generic.List<Giohang>();
         return giohang;
      }
      set
      {
         RemoveAllGiohang();
         if (value != null)
         {
            foreach (Giohang oGiohang in value)
               AddGiohang(oGiohang);
         }
      }
   }
   
   /// <summary>
   /// Add a new Giohang in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddGiohang(Giohang newGiohang)
   {
      if (newGiohang == null)
         return;
      if (this.giohang == null)
         this.giohang = new System.Collections.Generic.List<Giohang>();
      if (!this.giohang.Contains(newGiohang))
      {
         this.giohang.Add(newGiohang);
         newGiohang.Khachhang = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Giohang from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveGiohang(Giohang oldGiohang)
   {
      if (oldGiohang == null)
         return;
      if (this.giohang != null)
         if (this.giohang.Contains(oldGiohang))
         {
            this.giohang.Remove(oldGiohang);
            oldGiohang.Khachhang = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Giohang from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllGiohang()
   {
      if (giohang != null)
      {
            ICollection tmpGiohang = new System.Collections.ArrayList();
         foreach (Giohang oldGiohang in giohang)
            tmpGiohang.Add(oldGiohang);
         giohang.Clear();
         foreach (Giohang oldGiohang in tmpGiohang)
            oldGiohang.Khachhang = null;
         tmpGiohang.Clear();
      }
   }
   public ICollection<Taikhoankhachhang> taikhoankhachhang;
   
   /// <summary>
   /// Property for collection of Taikhoankhachhang
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public ICollection<Taikhoankhachhang> Taikhoankhachhang
   {
      get
      {
         if (taikhoankhachhang == null)
            taikhoankhachhang = new System.Collections.Generic.List<Taikhoankhachhang>();
         return taikhoankhachhang;
      }
      set
      {
         RemoveAllTaikhoankhachhang();
         if (value != null)
         {
            foreach (Taikhoankhachhang oTaikhoankhachhang in value)
               AddTaikhoankhachhang(oTaikhoankhachhang);
         }
      }
   }

    public string Makhachhang { get => makhachhang; set => makhachhang = value; }
    public string Tenkhachhang { get => tenkhachhang; set => tenkhachhang = value; }
    public string Email { get => email; set => email = value; }
    public string Sodienthoai { get => sodienthoai; set => sodienthoai = value; }
    public string Diachi { get => diachi; set => diachi = value; }
    public DateTime Ngaysinh { get => ngaysinh; set => ngaysinh = value; }
    public string Loaikhachhang { get => loaikhachhang; set => loaikhachhang = value; }

    /// <summary>
    /// Add a new Taikhoankhachhang in the collection
    /// </summary>
    /// <pdGenerated>Default Add</pdGenerated>
    public void AddTaikhoankhachhang(Taikhoankhachhang newTaikhoankhachhang)
   {
      if (newTaikhoankhachhang == null)
         return;
      if (this.taikhoankhachhang == null)
         this.taikhoankhachhang = new System.Collections.Generic.List<Taikhoankhachhang>();
      if (!this.taikhoankhachhang.Contains(newTaikhoankhachhang))
      {
         this.taikhoankhachhang.Add(newTaikhoankhachhang);
         newTaikhoankhachhang.Khachhang = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Taikhoankhachhang from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveTaikhoankhachhang(Taikhoankhachhang oldTaikhoankhachhang)
   {
      if (oldTaikhoankhachhang == null)
         return;
      if (this.taikhoankhachhang != null)
         if (this.taikhoankhachhang.Contains(oldTaikhoankhachhang))
         {
            this.taikhoankhachhang.Remove(oldTaikhoankhachhang);
            oldTaikhoankhachhang.Khachhang = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Taikhoankhachhang from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllTaikhoankhachhang()
   {
      if (taikhoankhachhang != null)
      {
         System.Collections.ArrayList tmpTaikhoankhachhang = new System.Collections.ArrayList();
         foreach (Taikhoankhachhang oldTaikhoankhachhang in taikhoankhachhang)
            tmpTaikhoankhachhang.Add(oldTaikhoankhachhang);
         taikhoankhachhang.Clear();
         foreach (Taikhoankhachhang oldTaikhoankhachhang in tmpTaikhoankhachhang)
            oldTaikhoankhachhang.Khachhang = null;
         tmpTaikhoankhachhang.Clear();
      }
   }

}