FirebaseFirestore.instance.collection('jobs').where(
  Filter.and(
    Filter.or(
      Filter('jobLevel', isEqualTo = 'Senior'),
      Filter('ratePerHour', isGreaterThan = 100),
      Filter('yearlySalary', isGreaterThan = 150000),
    ),
    Filter('offerType', arrayContainsAny = ['permanent', 'contract']),
  ),
)