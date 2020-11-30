/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package disciplina;

import java.util.ArrayList;

/**
 *
 * @author maria
 */
public class Disciplina {
    private String nome, ementa;
    private int ciclo;
    private double nota;

    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public static ArrayList<Disciplina> getList() {
        
        ArrayList<Disciplina> disciplina = new ArrayList<>();
        
        disciplina.add(new Disciplina ("Programação Orientada Objeto","Conceitos de orientação objeto",4));
        disciplina.add(new Disciplina ("Gestão de Projetos","Conceito e melhores práticas de gestão de projetos",5));
        disciplina.add(new Disciplina ("Laboratório de Banco de Dado","Implementar soluções de Banco de Dados",5));
        disciplina.add(new Disciplina ("Laboratório de Engenharia De Software","Desenvolvimento de um software",5));
        disciplina.add(new Disciplina ("Programação de Dispositivos Móveis","Ambiente de Programação mobile",5));
        disciplina.add(new Disciplina ("Segurança da Informação","Requisitos de segurança",5));
        disciplina.add(new Disciplina ("Inglês V","Aprofundamento da compreensão e produção oral",5));
        disciplina.add(new Disciplina ("Trabalho de Graduação I","Elaborar um trabalho de graduação",5));
        return disciplina;
    }
}
