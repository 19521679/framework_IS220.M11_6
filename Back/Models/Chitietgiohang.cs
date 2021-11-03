// File:    Chitietgiohang.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Chitietgiohang

using System;

public class Chitietgiohang
{
   public string magiohang;
   public int soluong;
   
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
               oldSanpham.RemoveChitietgiohang(this);
            }
            if (value != null)
            {
               this.sanpham = value;
               this.sanpham.AddChitietgiohang(this);
            }
         }
      }
   }

}