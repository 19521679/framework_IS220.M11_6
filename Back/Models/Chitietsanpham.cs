// File:    Chitietsanpham.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Chitietsanpham

using System;

public class Chitietsanpham
{
   public string imei;
   public DateTime ngaysanxuat;
   public string tinhtrang;
   
   public System.Collections.Generic.List<Baohanh> baohanh;
   
   /// <summary>
   /// Property for collection of Baohanh
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Baohanh> Baohanh
   {
      get
      {
         if (baohanh == null)
            baohanh = new System.Collections.Generic.List<Baohanh>();
         return baohanh;
      }
      set
      {
         RemoveAllBaohanh();
         if (value != null)
         {
            foreach (Baohanh oBaohanh in value)
               AddBaohanh(oBaohanh);
         }
      }
   }
   
   /// <summary>
   /// Add a new Baohanh in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddBaohanh(Baohanh newBaohanh)
   {
      if (newBaohanh == null)
         return;
      if (this.baohanh == null)
         this.baohanh = new System.Collections.Generic.List<Baohanh>();
      if (!this.baohanh.Contains(newBaohanh))
      {
         this.baohanh.Add(newBaohanh);
         newBaohanh.Chitietsanpham = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Baohanh from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveBaohanh(Baohanh oldBaohanh)
   {
      if (oldBaohanh == null)
         return;
      if (this.baohanh != null)
         if (this.baohanh.Contains(oldBaohanh))
         {
            this.baohanh.Remove(oldBaohanh);
            oldBaohanh.Chitietsanpham = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Baohanh from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllBaohanh()
   {
      if (baohanh != null)
      {
         System.Collections.ArrayList tmpBaohanh = new System.Collections.ArrayList();
         foreach (Baohanh oldBaohanh in baohanh)
            tmpBaohanh.Add(oldBaohanh);
         baohanh.Clear();
         foreach (Baohanh oldBaohanh in tmpBaohanh)
            oldBaohanh.Chitietsanpham = null;
         tmpBaohanh.Clear();
      }
   }
   public System.Collections.Generic.List<Hoadon> Chitiethoadon;
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
               oldSanpham.RemoveChitietsanpham(this);
            }
            if (value != null)
            {
               this.sanpham = value;
               this.sanpham.AddChitietsanpham(this);
            }
         }
      }
   }

}