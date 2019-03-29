Eclipse:

  Add '--add-modules=ALL-SYSTEM' to file eclipse.ini
  
  File->Import->Projects from Folder or Archive (search for nested project, detect and configure project natures)
  
  External tool configuration:
  
    ./eld
    
      Location: /path/to/eld
      
      Working Directory: /path/to/eldarica-master
      
      Arguments: ${string_prompt}
      
     assembly
     
      Location: /path/to/sbt (which sbt)
      
      Working Directory: /path/to/eldarica-master
      
      Arguments: assembly


