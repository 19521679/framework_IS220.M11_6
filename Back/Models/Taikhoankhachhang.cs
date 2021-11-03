// File:    Taikhoankhachhang.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Taikhoankhachhang

using System;

public class Taikhoankhachhang
{
   public string username;
   public string password;
   
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
               oldKhachhang.RemoveTaikhoankhachhang(this);
            }
            if (value != null)
            {
               this.khachhang = value;
               this.khachhang.AddTaikhoankhachhang(this);
            }
         }
      }
   }

}