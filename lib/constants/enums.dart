
enum Designation {
  PROFESSOR,
  ASSOCITEPROFESSOR,
  ASSISTANTPROFESSOR,
  VISITINGPROFESSOR,
  VISITINGFACULTY,
}
//
// extension DesignationExtension on Designation {
//
//   String get name => describeEnum(this);
//
//   String get stringData {
//     switch(this){
//       case Designation.PROFESSOR:
//         return 'Professor';
//       case Designation.ASSOCITEPROFESSOR
//           :return 'Asssociate Professor';
//       case Designation.ASSISTANTPROFESSOR
//           :return 'Assistant Professor';
//       case Designation.VISITINGPROFESSOR
//           :return 'Visiting Professor';
//       case Designation.VISITINGFACULTY
//           :return 'Visiting Professor';
//
//       default:
//         return '';
//     }
//   }
//
//   int get value {
//     switch (this) {
//       case Designation.PROFESSOR:
//         return 0;
//       case Designation.ASSOCITEPROFESSOR:
//         return 1;
//       case Designation.ASSISTANTPROFESSOR:
//         return 2;
//       case Designation.VISITINGPROFESSOR:
//         return 3;
//       case Designation.VISITINGFACULTY:
//         return 4;
//       default:
//         return 0;
//     }
//   }
// }
//
// Designation toEnum(int value) {
//   switch (value) {
//     case 0:
//       return Designation.PROFESSOR;
//     case 1:
//       return Designation.ASSOCITEPROFESSOR;
//     case 2:
//       return Designation.ASSISTANTPROFESSOR;
//     case 3:
//       return Designation.VISITINGPROFESSOR;
//     case 4:
//       return Designation.VISITINGFACULTY;
//     default:
//       return Designation.ASSISTANTPROFESSOR;
//   }
// }
