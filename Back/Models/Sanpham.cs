// File:    Sanpham.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Sanpham

using System;

public class Sanpham
{
   public string masanpham;
   public string tensanpham;
   public int soluongton;
   public string mota;
   public string image;
   public DateTime thoidiemramat;
   public float dongia;
   
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
         newPhieunhapsanpham.Sanpham = this;
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
            oldPhieunhapsanpham.Sanpham = null;
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
            oldPhieunhapsanpham.Sanpham = null;
         tmpPhieunhapsanpham.Clear();
      }
   }
   public System.Collections.Generic.List<Chitietgiohang> chitietgiohang;
   
   /// <summary>
   /// Property for collection of Chitietgiohang
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Chitietgiohang> Chitietgiohang
   {
      get
      {
         if (chitietgiohang == null)
            chitietgiohang = new System.Collections.Generic.List<Chitietgiohang>();
         return chitietgiohang;
      }
      set
      {
         RemoveAllChitietgiohang();
         if (value != null)
         {
            foreach (Chitietgiohang oChitietgiohang in value)
               AddChitietgiohang(oChitietgiohang);
         }
      }
   }
   
   /// <summary>
   /// Add a new Chitietgiohang in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddChitietgiohang(Chitietgiohang newChitietgiohang)
   {
      if (newChitietgiohang == null)
         return;
      if (this.chitietgiohang == null)
         this.chitietgiohang = new System.Collections.Generic.List<Chitietgiohang>();
      if (!this.chitietgiohang.Contains(newChitietgiohang))
      {
         this.chitietgiohang.Add(newChitietgiohang);
         newChitietgiohang.Sanpham = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Chitietgiohang from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveChitietgiohang(Chitietgiohang oldChitietgiohang)
   {
      if (oldChitietgiohang == null)
         return;
      if (this.chitietgiohang != null)
         if (this.chitietgiohang.Contains(oldChitietgiohang))
         {
            this.chitietgiohang.Remove(oldChitietgiohang);
            oldChitietgiohang.Sanpham = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Chitietgiohang from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllChitietgiohang()
   {
      if (chitietgiohang != null)
      {
         System.Collections.ArrayList tmpChitietgiohang = new System.Collections.ArrayList();
         foreach (Chitietgiohang oldChitietgiohang in chitietgiohang)
            tmpChitietgiohang.Add(oldChitietgiohang);
         chitietgiohang.Clear();
         foreach (Chitietgiohang oldChitietgiohang in tmpChitietgiohang)
            oldChitietgiohang.Sanpham = null;
         tmpChitietgiohang.Clear();
      }
   }
   public System.Collections.Generic.List<Danhgia> danhgia;
   
   /// <summary>
   /// Property for collection of Danhgia
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Danhgia> Danhgia
   {
      get
      {
         if (danhgia == null)
            danhgia = new System.Collections.Generic.List<Danhgia>();
         return danhgia;
      }
      set
      {
         RemoveAllDanhgia();
         if (value != null)
         {
            foreach (Danhgia oDanhgia in value)
               AddDanhgia(oDanhgia);
         }
      }
   }
   
   /// <summary>
   /// Add a new Danhgia in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddDanhgia(Danhgia newDanhgia)
   {
      if (newDanhgia == null)
         return;
      if (this.danhgia == null)
         this.danhgia = new System.Collections.Generic.List<Danhgia>();
      if (!this.danhgia.Contains(newDanhgia))
      {
         this.danhgia.Add(newDanhgia);
         newDanhgia.Sanpham = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Danhgia from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveDanhgia(Danhgia oldDanhgia)
   {
      if (oldDanhgia == null)
         return;
      if (this.danhgia != null)
         if (this.danhgia.Contains(oldDanhgia))
         {
            this.danhgia.Remove(oldDanhgia);
            oldDanhgia.Sanpham = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Danhgia from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllDanhgia()
   {
      if (danhgia != null)
      {
         System.Collections.ArrayList tmpDanhgia = new System.Collections.ArrayList();
         foreach (Danhgia oldDanhgia in danhgia)
            tmpDanhgia.Add(oldDanhgia);
         danhgia.Clear();
         foreach (Danhgia oldDanhgia in tmpDanhgia)
            oldDanhgia.Sanpham = null;
         tmpDanhgia.Clear();
      }
   }
   public System.Collections.Generic.List<Chitietsanpham> chitietsanpham;
   
   /// <summary>
   /// Property for collection of Chitietsanpham
   /// </summary>
   /// <pdGenerated>Default opposite class collection property</pdGenerated>
   public System.Collections.Generic.List<Chitietsanpham> Chitietsanpham
   {
      get
      {
         if (chitietsanpham == null)
            chitietsanpham = new System.Collections.Generic.List<Chitietsanpham>();
         return chitietsanpham;
      }
      set
      {
         RemoveAllChitietsanpham();
         if (value != null)
         {
            foreach (Chitietsanpham oChitietsanpham in value)
               AddChitietsanpham(oChitietsanpham);
         }
      }
   }
   
   /// <summary>
   /// Add a new Chitietsanpham in the collection
   /// </summary>
   /// <pdGenerated>Default Add</pdGenerated>
   public void AddChitietsanpham(Chitietsanpham newChitietsanpham)
   {
      if (newChitietsanpham == null)
         return;
      if (this.chitietsanpham == null)
         this.chitietsanpham = new System.Collections.Generic.List<Chitietsanpham>();
      if (!this.chitietsanpham.Contains(newChitietsanpham))
      {
         this.chitietsanpham.Add(newChitietsanpham);
         newChitietsanpham.Sanpham = this;
      }
   }
   
   /// <summary>
   /// Remove an existing Chitietsanpham from the collection
   /// </summary>
   /// <pdGenerated>Default Remove</pdGenerated>
   public void RemoveChitietsanpham(Chitietsanpham oldChitietsanpham)
   {
      if (oldChitietsanpham == null)
         return;
      if (this.chitietsanpham != null)
         if (this.chitietsanpham.Contains(oldChitietsanpham))
         {
            this.chitietsanpham.Remove(oldChitietsanpham);
            oldChitietsanpham.Sanpham = null;
         }
   }
   
   /// <summary>
   /// Remove all instances of Chitietsanpham from the collection
   /// </summary>
   /// <pdGenerated>Default removeAll</pdGenerated>
   public void RemoveAllChitietsanpham()
   {
      if (chitietsanpham != null)
      {
         System.Collections.ArrayList tmpChitietsanpham = new System.Collections.ArrayList();
         foreach (Chitietsanpham oldChitietsanpham in chitietsanpham)
            tmpChitietsanpham.Add(oldChitietsanpham);
         chitietsanpham.Clear();
         foreach (Chitietsanpham oldChitietsanpham in tmpChitietsanpham)
            oldChitietsanpham.Sanpham = null;
         tmpChitietsanpham.Clear();
      }
   }
   public Loaisanpham loaisanpham;
   
   /// <summary>
   /// Property for Loaisanpham
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Loaisanpham Loaisanpham
   {
      get
      {
         return loaisanpham;
      }
      set
      {
         if (this.loaisanpham == null || !this.loaisanpham.Equals(value))
         {
            if (this.loaisanpham != null)
            {
               Loaisanpham oldLoaisanpham = this.loaisanpham;
               this.loaisanpham = null;
               oldLoaisanpham.RemoveSanpham(this);
            }
            if (value != null)
            {
               this.loaisanpham = value;
               this.loaisanpham.AddSanpham(this);
            }
         }
      }
   }
   public Thuonghieu thuonghieu;
   
   /// <summary>
   /// Property for Thuonghieu
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Thuonghieu Thuonghieu
   {
      get
      {
         return thuonghieu;
      }
      set
      {
         if (this.thuonghieu == null || !this.thuonghieu.Equals(value))
         {
            if (this.thuonghieu != null)
            {
               Thuonghieu oldThuonghieu = this.thuonghieu;
               this.thuonghieu = null;
               oldThuonghieu.RemoveSanpham(this);
            }
            if (value != null)
            {
               this.thuonghieu = value;
               this.thuonghieu.AddSanpham(this);
            }
         }
      }
   }

}