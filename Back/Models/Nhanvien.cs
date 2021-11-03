// File:    Nhanvien.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Nhanvien

using System;
using System.Collections;
public class Nhanvien
{
   public string manhanvien;
   public string tennhanvien;
   public string email;
   public string sodienthoai;
   public string diachi;
   public DateTime ngayvaolam;
   public string cccd;
   public DateTime ngaysinh;
   public string chucvu;
   
   public ICollection<Taikhoannhanvien> taikhoannhanvien;
   
   /// <summary>
   /// Property for collection of Taikhoannhanvien
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Taikhoannhanvien> Taikhoannhanvien
   {
      get
      {
         if (taikhoannhanvien == null)
            taikhoannhanvien = new ICollection<Taikhoannhanvien>();
         return taikhoannhanvien;
      }
      set
      {
         RemoveAllTaikhoannhanvien();
         if (value != null)
         {
            foreach (Taikhoannhanvien oTaikhoannhanvien in value)
               AddTaikhoannhanvien(oTaikhoannhanvien);
         }
      }
   }
   
   /// <summary>
   /// Add a new Taikhoannhanvien in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddTaikhoannhanvien(Taikhoannhanvien newTaikhoannhanvien)
   {
      if (newTaikhoannhanvien == null)
         return;
      if (this.taikhoannhanvien == null)
         this.taikhoannhanvien = new System.Collections.Generic.List<Taikhoannhanvien>();
      if (!this.taikhoannhanvien.Contains(newTaikhoannhanvien))
      {
         this.taikhoannhanvien.Add(newTaikhoannhanvien);
         newTaikhoannhanvien.Nhanvien = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Taikhoannhanvien from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveTaikhoannhanvien(Taikhoannhanvien oldTaikhoannhanvien)
   {
      if (oldTaikhoannhanvien == null)
         return;
      if (this.taikhoannhanvien != null)
         if (this.taikhoannhanvien.Contains(oldTaikhoannhanvien))
         {
            this.taikhoannhanvien.Remove(oldTaikhoannhanvien);
            oldTaikhoannhanvien.Nhanvien = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Taikhoannhanvien from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllTaikhoannhanvien()
   {
      if (taikhoannhanvien != null)
      {
         System.Collections.ArrayList tmpTaikhoannhanvien = new System.Collections.ArrayList();
         foreach (Taikhoannhanvien oldTaikhoannhanvien in taikhoannhanvien)
            tmpTaikhoannhanvien.Add(oldTaikhoannhanvien);
         taikhoannhanvien.Clear();
         foreach (Taikhoannhanvien oldTaikhoannhanvien in tmpTaikhoannhanvien)
            oldTaikhoannhanvien.Nhanvien = null;
         tmpTaikhoannhanvien.Clear();
      }
   }
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
         newHoadon.Nhanvien = this;
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
            oldHoadon.Nhanvien = null;
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
            oldHoadon.Nhanvien = null;
         tmpHoadon.Clear();
      }
   }

}