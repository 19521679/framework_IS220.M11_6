// File:    Khuyenmai.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Khuyenmai

using System;

public class Khuyenmai
{
   public string makhuyenmai;
   public string tenkhuyenmai;
   public float tilekhuyenmai;
   public DateTime ngaybatdau;
   public DateTime ngayketthuc;
   public string dieukien;
   
   public System.Collections.Generic.List<Hoadon> hoadon;
   
   /// <summary>
   /// Property for collection of Hoadon
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Hoadon> Hoadon
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
         newHoadon.Khuyenmai = this;
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
            oldHoadon.Khuyenmai = null;
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
         System.Collections.ArrayList tmpHoadon = new System.Collections.ArrayList();
         foreach (Hoadon oldHoadon in hoadon)
            tmpHoadon.Add(oldHoadon);
         hoadon.Clear();
         foreach (Hoadon oldHoadon in tmpHoadon)
            oldHoadon.Khuyenmai = null;
         tmpHoadon.Clear();
      }
   }

}