// File:    Hoadon.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Hoadon

using System;

public class Hoadon
{
   public string sohoadon;
   public DateTime ngayhoadon;
   public float tongtien;
   
   public System.Collections.Generic.List<Chitietsanpham> Chitiethoadon;
   public System.Collections.Generic.List<Vanchuyen> vanchuyen;
   
   /// <summary>
   /// Property for collection of Vanchuyen
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Vanchuyen> Vanchuyen
   {
      get
      {
         if (vanchuyen == null)
            vanchuyen = new System.Collections.Generic.List<Vanchuyen>();
         return vanchuyen;
      }
      set
      {
         RemoveAllVanchuyen();
         if (value != null)
         {
            foreach (Vanchuyen oVanchuyen in value)
               AddVanchuyen(oVanchuyen);
         }
      }
   }
   
   /// <summary>
   /// Add a new Vanchuyen in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddVanchuyen(Vanchuyen newVanchuyen)
   {
      if (newVanchuyen == null)
         return;
      if (this.vanchuyen == null)
         this.vanchuyen = new System.Collections.Generic.List<Vanchuyen>();
      if (!this.vanchuyen.Contains(newVanchuyen))
      {
         this.vanchuyen.Add(newVanchuyen);
         newVanchuyen.Hoadon = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Vanchuyen from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveVanchuyen(Vanchuyen oldVanchuyen)
   {
      if (oldVanchuyen == null)
         return;
      if (this.vanchuyen != null)
         if (this.vanchuyen.Contains(oldVanchuyen))
         {
            this.vanchuyen.Remove(oldVanchuyen);
            oldVanchuyen.Hoadon = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Vanchuyen from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllVanchuyen()
   {
      if (vanchuyen != null)
      {
         System.Collections.ArrayList tmpVanchuyen = new System.Collections.ArrayList();
         foreach (Vanchuyen oldVanchuyen in vanchuyen)
            tmpVanchuyen.Add(oldVanchuyen);
         vanchuyen.Clear();
         foreach (Vanchuyen oldVanchuyen in tmpVanchuyen)
            oldVanchuyen.Hoadon = null;
         tmpVanchuyen.Clear();
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
               oldKhachhang.RemoveHoadon(this);
            }
            if (value != null)
            {
               this.khachhang = value;
               this.khachhang.AddHoadon(this);
            }
         }
      }
   }
   public Khuyenmai khuyenmai;
   
   /// <summary>
   /// Property for Khuyenmai
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Khuyenmai Khuyenmai
   {
      get
      {
         return khuyenmai;
      }
      set
      {
         if (this.khuyenmai == null || !this.khuyenmai.Equals(value))
         {
            if (this.khuyenmai != null)
            {
               Khuyenmai oldKhuyenmai = this.khuyenmai;
               this.khuyenmai = null;
               oldKhuyenmai.RemoveHoadon(this);
            }
            if (value != null)
            {
               this.khuyenmai = value;
               this.khuyenmai.AddHoadon(this);
            }
         }
      }
   }
   public Nhanvien nhanvien;
   
   /// <summary>
   /// Property for Nhanvien
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Nhanvien Nhanvien
   {
      get
      {
         return nhanvien;
      }
      set
      {
         if (this.nhanvien == null || !this.nhanvien.Equals(value))
         {
            if (this.nhanvien != null)
            {
               Nhanvien oldNhanvien = this.nhanvien;
               this.nhanvien = null;
               oldNhanvien.RemoveHoadon(this);
            }
            if (value != null)
            {
               this.nhanvien = value;
               this.nhanvien.AddHoadon(this);
            }
         }
      }
   }

}