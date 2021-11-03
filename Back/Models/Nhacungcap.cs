// File:    Nhacungcap.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Nhacungcap

using System;

public class Nhacungcap
{
   public string manhacungcap;
   public string tennhacungcap;
   public string email;
   public string sodienthoai;
   public string diachi;
   
   public System.Collections.Generic.List<Phieunhapsanpham> phieunhapsanpham;
   
   /// <summary>
   /// Property for collection of Phieunhapsanpham
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Phieunhapsanpham> Phieunhapsanpham
   {
      get
      {
         if (phieunhapsanpham == null)
            phieunhapsanpham = new System.Collections.Generic.List<Phieunhapsanpham>();
         return phieunhapsanpham;
      }
      set
      {
         RemoveAllPhieunhapsanpham();
         if (value != null)
         {
            foreach (Phieunhapsanpham oPhieunhapsanpham in value)
               AddPhieunhapsanpham(oPhieunhapsanpham);
         }
      }
   }
   
   /// <summary>
   /// Add a new Phieunhapsanpham in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddPhieunhapsanpham(Phieunhapsanpham newPhieunhapsanpham)
   {
      if (newPhieunhapsanpham == null)
         return;
      if (this.phieunhapsanpham == null)
         this.phieunhapsanpham = new System.Collections.Generic.List<Phieunhapsanpham>();
      if (!this.phieunhapsanpham.Contains(newPhieunhapsanpham))
      {
         this.phieunhapsanpham.Add(newPhieunhapsanpham);
         newPhieunhapsanpham.Nhacungcap = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Phieunhapsanpham from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemovePhieunhapsanpham(Phieunhapsanpham oldPhieunhapsanpham)
   {
      if (oldPhieunhapsanpham == null)
         return;
      if (this.phieunhapsanpham != null)
         if (this.phieunhapsanpham.Contains(oldPhieunhapsanpham))
         {
            this.phieunhapsanpham.Remove(oldPhieunhapsanpham);
            oldPhieunhapsanpham.Nhacungcap = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Phieunhapsanpham from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllPhieunhapsanpham()
   {
      if (phieunhapsanpham != null)
      {
         System.Collections.ArrayList tmpPhieunhapsanpham = new System.Collections.ArrayList();
         foreach (Phieunhapsanpham oldPhieunhapsanpham in phieunhapsanpham)
            tmpPhieunhapsanpham.Add(oldPhieunhapsanpham);
         phieunhapsanpham.Clear();
         foreach (Phieunhapsanpham oldPhieunhapsanpham in tmpPhieunhapsanpham)
            oldPhieunhapsanpham.Nhacungcap = null;
         tmpPhieunhapsanpham.Clear();
      }
   }

}