// File:    Danhgia.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Danhgia

using System;

public class Danhgia
{
   public string madanhgia;
   public string noidung;
   public int sosao;
   public DateTime thoigian;
   public string image;
   
   public Sanpham sanpham;
   
   /// <summary>
   /// Property for Sanpham
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Sanpham Sanpham
   {
      get
      {
         return sanpham;
      }
      set
      {
         if (this.sanpham == null || !this.sanpham.Equals(value))
         {
            if (this.sanpham != null)
            {
               Sanpham oldSanpham = this.sanpham;
               this.sanpham = null;
               oldSanpham.RemoveDanhgia(this);
            }
            if (value != null)
            {
               this.sanpham = value;
               this.sanpham.AddDanhgia(this);
            }
         }
      }
   }
   public Khachhang khachhang;
   
   /// <summary>
   /// Property for Khachhang
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Khachhang Khachhang
   {
      get
      {
         return khachhang;
      }
      set
      {
         if (this.khachhang == null || !this.khachhang.Equals(value))
         {
            if (this.khachhang != null)
            {
               Khachhang oldKhachhang = this.khachhang;
               this.khachhang = null;
               oldKhachhang.RemoveDanhgia(this);
            }
            if (value != null)
            {
               this.khachhang = value;
               this.khachhang.AddDanhgia(this);
            }
         }
      }
   }

}