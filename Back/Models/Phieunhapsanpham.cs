// File:    Phieunhapsanpham.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Phieunhapsanpham

using System;

public class Phieunhapsanpham
{
   public string maphieunhap;
   public int soluongnhap;
   public DateTime ngaynhap;
   public float tiennhap;
   public string ghichu;
   
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
               oldSanpham.RemovePhieunhapsanpham(this);
            }
            if (value != null)
            {
               this.sanpham = value;
               this.sanpham.AddPhieunhapsanpham(this);
            }
         }
      }
   }
   public Nhacungcap nhacungcap;
   
   /// <summary>
   /// Property for Nhacungcap
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Nhacungcap Nhacungcap
   {
      get
      {
         return nhacungcap;
      }
      set
      {
         if (this.nhacungcap == null || !this.nhacungcap.Equals(value))
         {
            if (this.nhacungcap != null)
            {
               Nhacungcap oldNhacungcap = this.nhacungcap;
               this.nhacungcap = null;
               oldNhacungcap.RemovePhieunhapsanpham(this);
            }
            if (value != null)
            {
               this.nhacungcap = value;
               this.nhacungcap.AddPhieunhapsanpham(this);
            }
         }
      }
   }

}