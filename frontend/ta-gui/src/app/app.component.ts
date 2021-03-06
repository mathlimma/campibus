import { Component } from '@angular/core';
import { NgModule } from '@angular/core';

import { Aluno } from './aluno';
import { AlunoService } from './aluno.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  aluno: Aluno = {nome: "", cpf: "", email: "", end:"", celular:"", curso: "",universidade: "",
  cidade_universidade: "", comissao: false, onibus: "", isento: false};

  alunoService = new AlunoService();

   gravar(a: Aluno): void {
     this.alunoService.gravar(a);
     //this.aluno = {nome: "", cpf: "", email: ""};

  }
}