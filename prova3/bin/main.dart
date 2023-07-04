import 'package:prova3/dna_sequence.dart';
import 'package:prova3/exceptions.dart';

void main(){
DNASequence sequencia1 = DNASequence('ATCGATGCTAGC');
DNASequence sequencia2 = DNASequence('ATGCYHGTACGUGCT');

print('a sequencia invertida de ${sequencia1.sequence} :');
print(sequencia1.getReverseSequence().sequence);

print(sequencia1.numberOfOcurrences('A'));

print('integrantes : Matheus Silva,João Pedro');
}

