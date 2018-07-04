/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

public class CategoriaModelo {
    private int idCategoria;
    private String nombre;
    private String detalle;
    
    public static ArrayList<CategoriaModelo> listaCategorias = new ArrayList<>();

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public CategoriaModelo() {
    }

    public CategoriaModelo(String nombre, String detalle) {
        this.nombre = nombre;
        this.detalle = detalle;
    }

    private CategoriaModelo(int idCategoria, String nombre, String detalle) {
        this.idCategoria = idCategoria;
        this.nombre = nombre;
        this.detalle = detalle;
    }

   
    
    public void nuevaCategoria(CategoriaModelo categoria){
    
        int idMayor = 0;
        if (!listaCategorias.isEmpty()){
            for(CategoriaModelo cat : listaCategorias){
                if (cat.getIdCategoria() > idMayor){
                    idMayor = cat.getIdCategoria();
                }
             }
         }
        idMayor += 1;
          
        
        listaCategorias.add(new CategoriaModelo(idMayor,categoria.getNombre(),categoria.getDetalle()));
        
        
    
    }
    
    public void editarCategoria(CategoriaModelo categoria, int id){
    
        for (CategoriaModelo listaCategoria : listaCategorias) {
         if (listaCategoria.getIdCategoria() == id){
         listaCategoria.setNombre(categoria.getNombre());
         listaCategoria.setDetalle(categoria.getDetalle());
         }   
        }
    
    }
    
    
    public void eliminarCategoria(int id){
        CategoriaModelo catEliminar = new CategoriaModelo();
        
    for (CategoriaModelo listaCategoria : listaCategorias) {
         if (listaCategoria.getIdCategoria() == id){
         catEliminar = listaCategoria;
         
         }
         
    }
    
    listaCategorias.remove(catEliminar);
    
    }
     
    
}









