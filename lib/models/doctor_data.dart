class DoctorData {
  final String id;
  final String name;
  final String specialization;
  final String experience;
  final String language;
  final String imageUrl;
  final List<String> categories;

  const DoctorData(
      {required this.experience,
      required this.id,
      required this.imageUrl,
      required this.language,
      required this.name,
      required this.specialization,
      required this.categories});
}
