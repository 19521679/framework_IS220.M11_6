// File:    Taikhoannhanvien.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Taikhoannhanvien

using System;

public class Taikhoannhanvien
{
   public string username;
   public string password;
   
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
               oldNhanvien.RemoveTaikhoannhanvien(this);
            }
            if (value != null)
            {
               this.nhanvien = value;
               this.nhanvien.AddTaikhoannhanvien(this);
            }
         }
      }
   }

}