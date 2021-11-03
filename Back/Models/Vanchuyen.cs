// File:    Vanchuyen.cs
// Author:  khanh
// Created: Wednesday, October 27, 2021 2:36:10 PM
// Purpose: Definition of Class Vanchuyen

using System;

public class Vanchuyen
{
   public string mavanchuyen;
   public string tinhtrang;
   public DateTime thoidiem;
   
   public Hoadon hoadon;
   
   /// <summary>
   /// Property for Hoadon
   /// </summary>
   /// <pdGenerated>Default opposite class property</pdGenerated>
   public Hoadon Hoadon
   {
      get
      {
         return hoadon;
      }
      set
      {
         if (this.hoadon == null || !this.hoadon.Equals(value))
         {
            if (this.hoadon != null)
            {
               Hoadon oldHoadon = this.hoadon;
               this.hoadon = null;
               oldHoadon.RemoveVanchuyen(this);
            }
            if (value != null)
            {
               this.hoadon = value;
               this.hoadon.AddVanchuyen(this);
            }
         }
      }
   }

}