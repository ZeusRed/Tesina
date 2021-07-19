/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author Acer ES 15
 */
public class Venta {
  private int idVenta,idprodutoVenta;
  private Date fechaVenta;
  private double TotalVenta;
  public Venta(){
      
  }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdprodutoVenta() {
        return idprodutoVenta;
    }

    public void setIdprodutoVenta(int idprodutoVenta) {
        this.idprodutoVenta = idprodutoVenta;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public double getTotalVenta() {
        return TotalVenta;
    }

    public void setTotalVenta(double TotalVenta) {
        this.TotalVenta = TotalVenta;
    }
  
    
}
