import 'dart:math';
import 'dart:core';
import './exceptions.dart';

class DNASequence {
  final String sequence;

  const DNASequence._(this.sequence);
  DNASequence(this.sequence) {
    if (!RegExp(r"[ATCG]+").hasMatch(sequence)) {
      throw InvalidSequence();
    }
  }

  factory DNASequence.random(int length) {
    final random = Random();
    final bases = ["A", "T", "C", "G"];
    final sequence = List.generate(length, (_) => bases[random.nextInt(4)]);
    return DNASequence._(sequence.join());
  }

  DNASequence getReverseSequence() {
    String reverseSequence = sequence.split('').reversed.join();
    return DNASequence(reverseSequence);
  }

  int numberOfOcurrences(String base) {
    if (!RegExp(r"[A]+[T]+[C]+[G]+").hasMatch(sequence)) {
      throw InvalidNucleotides();
    }
    return sequence.split("").where((c) => c == base).length;
  }
}




  

