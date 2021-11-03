// File:    Loaisanpham.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Loaisanpham

using System;

public class Loaisanpham
{
   public string maloai;
   public string tenloai;
   
   public System.Collections.Generic.List<Sanpham> sanpham;
   
   /// <summary>
   /// Property for collection of Sanpham
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Sanpham> Sanpham
   {
      get
      {
         if (sanpham == null)
            sanpham = new System.Collections.Generic.List<Sanpham>();
         return sanpham;
      }
      set
      {
         RemoveAllSanpham();
         if (value != null)
         {
            foreach (Sanpham oSanpham in value)
               AddSanpham(oSanpham);
         }
      }
   }
   
   /// <summary>
   /// Add a new Sanpham in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddSanpham(Sanpham newSanpham)
   {
      if (newSanpham == null)
         return;
      if (this.sanpham == null)
         this.sanpham = new System.Collections.Generic.List<Sanpham>();
      if (!this.sanpham.Contains(newSanpham))
      {
         this.sanpham.Add(newSanpham);
         newSanpham.Loaisanpham = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Sanpham from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveSanpham(Sanpham oldSanpham)
   {
      if (oldSanpham == null)
         return;
      if (this.sanpham != null)
         if (this.sanpham.Contains(oldSanpham))
         {
            this.sanpham.Remove(oldSanpham);
            oldSanpham.Loaisanpham = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Sanpham from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllSanpham()
   {
      if (sanpham != null)
      {
         System.Collections.ArrayList tmpSanpham = new System.Collections.ArrayList();
         foreach (Sanpham oldSanpham in sanpham)
            tmpSanpham.Add(oldSanpham);
         sanpham.Clear();
         foreach (Sanpham oldSanpham in tmpSanpham)
            oldSanpham.Loaisanpham = null;
         tmpSanpham.Clear();
      }
   }

}