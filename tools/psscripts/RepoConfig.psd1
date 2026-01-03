@{
  RepoName = 'architecture-reasoning-in-practice'

  ExpectedFolders = @(
    'src\01_orientation'
    'src\02_thinking'
    'src\03_communication'
    'src\04_roles'
    'src\05_evaluation'
    'src\06_reference'
    'src\07_notes'
    'docs'
    'tools\psscripts'
  )

  YamlCheckRoots = @(
    'src'
  )

  # This repo avoids "interview" framing (uses senior technical evaluation contexts).
  DisallowInterviewLanguage = $true
}
