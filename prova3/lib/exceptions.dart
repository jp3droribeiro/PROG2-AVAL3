import './dna_sequence.dart';


class InvalidSequence implements Exception {
  @override
  String toString() => "The sequence is not a valid sequence.";
}

class InvalidNucleotides implements Exception {
  @override
  String toString() => "The nucleotide in the sequence is not valid.";
}

