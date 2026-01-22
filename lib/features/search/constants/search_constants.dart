/// Constants used across the search feature
class SearchConstants {
  SearchConstants._();

  // Search screen
  static const String filterComingSoonMessage = 'Filter coming soon!';
  static const String searchHintText = 'Search jobs...';
  static const String tapToViewDetailsText = 'Tap to view details';

  // Search result screen
  static const String jobDetailsTitle = 'Job Details';
  static const String companyInfoLabel = 'Company Information';
  static const String jobDescriptionLabel = 'Job Description';
  static const String requirementsLabel = 'Requirements';
  static const String salaryBenefitsLabel = 'Salary & Benefits';
  static const String applyNowButtonText = 'Apply Now';
  
  // Company info
  static const String companyName = 'Tech Company XYZ';
  static const String companyIndustry = 'Technology Industry';
  
  // Job details
  static const String jobDescription =
      'We are looking for a talented and experienced professional to join our team. '
      'This is an exciting opportunity to work on cutting-edge technology and make a real impact in the industry.';
  static const String jobType = 'Full Time';
  static const String jobLocation = 'Remote';

  // Requirements list
  static const List<String> requirements = [
    '3+ years of professional experience',
    'Strong problem-solving skills',
    'Excellent communication abilities',
    'Team player mindset',
  ];

  // Benefits map
  static const Map<String, String> benefits = {
    '💰': '\$80,000 - \$120,000 per year',
    '🏥': 'Health Insurance',
    '🌴': '25 Days Paid Leave',
    '📚': 'Professional Development',
  };

  // Job positions for search
  static const List<String> allJobs = [
    'Flutter Developer',
    'Senior Flutter Developer',
    'Mobile App Developer',
    'Full Stack Developer',
    'Frontend Developer',
    'Backend Developer',
    'UI/UX Designer',
    'DevOps Engineer',
    'Data Scientist',
    'Machine Learning Engineer',
    'Web Developer',
    'React Native Developer',
    'Software Architect',
    'Database Administrator',
    'Cloud Engineer',
  ];

  // Empty state messages
  static const String emptyStateTitle = 'Start searching for jobs';
  static const String emptyStateSubtitle = 'Type a job title to find opportunities';
  
  // No results state messages
  static const String noResultsTitle = 'No results found';
  static const String noResultsSubtitle = 'Try searching with different keywords';

  static String appliedMessage(String jobTitle) => 'Applied for $jobTitle';
}
