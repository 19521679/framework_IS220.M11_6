// File:    Baohanh.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Baohanh

using System;

public class Baohanh
{
   public string mabaohanh;
   public DateTime ngaybaohanh;
   public float chiphi;
   public string ghichu;
   
   public Chitietsanpham chitietsanpham;
   
   /// <summary>
   /// Property for Chitietsanpham
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Chitietsanpham Chitietsanpham
   {
      get
      {
         return chitietsanpham;
      }
      set
      {
         if (this.chitietsanpham == null || !this.chitietsanpham.Equals(value))
         {
            if (this.chitietsanpham != null)
            {
               Chitietsanpham oldChitietsanpham = this.chitietsanpham;
               this.chitietsanpham = null;
               oldChitietsanpham.RemoveBaohanh(this);
            }
            if (value != null)
            {
               this.chitietsanpham = value;
               this.chitietsanpham.AddBaohanh(this);
            }
         }
      }
   }

}