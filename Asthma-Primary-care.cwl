cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  asthma-primary-care-selfmanagement---primary:
    run: asthma-primary-care-selfmanagement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  asthma-primary-care-question---primary:
    run: asthma-primary-care-question---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-selfmanagement---primary/output
  annual-asthma-primary-care---primary:
    run: annual-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-question---primary/output
  specialist-asthma-primary-care---primary:
    run: specialist-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: annual-asthma-primary-care---primary/output
  asthma-primary-care-discuss---primary:
    run: asthma-primary-care-discuss---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: specialist-asthma-primary-care---primary/output
  asthma-primary-care-three---primary:
    run: asthma-primary-care-three---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-discuss---primary/output
  asthma-primary-care-administration---primary:
    run: asthma-primary-care-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-three---primary/output
  seasonal-asthma-primary-care---primary:
    run: seasonal-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-administration---primary/output
  pollen-asthma-primary-care---primary:
    run: pollen-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: seasonal-asthma-primary-care---primary/output
  asthma-primary-care-nighttime---primary:
    run: asthma-primary-care-nighttime---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: pollen-asthma-primary-care---primary/output
  weekly-asthma-primary-care---primary:
    run: weekly-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-nighttime---primary/output
  asthma-primary-care-respiratory---primary:
    run: asthma-primary-care-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: weekly-asthma-primary-care---primary/output
  asthma-primary-care-medication---primary:
    run: asthma-primary-care-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-respiratory---primary/output
  asthma-primary-care-exercise---primary:
    run: asthma-primary-care-exercise---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-medication---primary/output
  asthma-primary-care-stair---primary:
    run: asthma-primary-care-stair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-exercise---primary/output
  animal-asthma-primary-care---primary:
    run: animal-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-stair---primary/output
  asthma-primary-care-score---primary:
    run: asthma-primary-care-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: animal-asthma-primary-care---primary/output
  asthma-primary-care-airborne---primary:
    run: asthma-primary-care-airborne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-score---primary/output
  asthma-primary-care-trigger---primary:
    run: asthma-primary-care-trigger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-airborne---primary/output
  asthma-primary-care-emotion---primary:
    run: asthma-primary-care-emotion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-trigger---primary/output
  asthma-primary-care-smoke---primary:
    run: asthma-primary-care-smoke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-emotion---primary/output
  asthma-primary-care-daytime---primary:
    run: asthma-primary-care-daytime---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-smoke---primary/output
  active-asthma-primary-care---primary:
    run: active-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-daytime---primary/output
  asthma-primary-care-agreed---primary:
    run: asthma-primary-care-agreed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: active-asthma-primary-care---primary/output
  asthma-primary-care-obstruction---primary:
    run: asthma-primary-care-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-agreed---primary/output
  asthma-primary-care-school---primary:
    run: asthma-primary-care-school---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-obstruction---primary/output
  asthma-primary-care-confirmed---primary:
    run: asthma-primary-care-confirmed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-school---primary/output
  asthma-primary-care-refuses---primary:
    run: asthma-primary-care-refuses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-confirmed---primary/output
  asthma-primary-care-excepted---primary:
    run: asthma-primary-care-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-refuses---primary/output
  asthma-primary-care-childhood---primary:
    run: asthma-primary-care-childhood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-excepted---primary/output
  asthma-primary-care-onset---primary:
    run: asthma-primary-care-onset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-childhood---primary/output
  asthma-primary-care-severity---primary:
    run: asthma-primary-care-severity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-onset---primary/output
  moderate-asthma-primary-care---primary:
    run: moderate-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-severity---primary/output
  asthma-primary-care---primary:
    run: asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: moderate-asthma-primary-care---primary/output
  asthma-primary-care-disturbing---primary:
    run: asthma-primary-care-disturbing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: asthma-primary-care---primary/output
  asthma-primary-care-limiting---primary:
    run: asthma-primary-care-limiting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-disturbing---primary/output
  asthma-primary-care-followup---primary:
    run: asthma-primary-care-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-limiting---primary/output
  extrinsic-asthma-primary-care---primary:
    run: extrinsic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-followup---primary/output
  asthma-primary-care-fever---primary:
    run: asthma-primary-care-fever---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: extrinsic-asthma-primary-care---primary/output
  bronchial-asthma-primary-care---primary:
    run: bronchial-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-fever---primary/output
  asthma-primary-care-adminno---primary:
    run: asthma-primary-care-adminno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: bronchial-asthma-primary-care---primary/output
  asthma-primary-care-control---primary:
    run: asthma-primary-care-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-adminno---primary/output
  asthma-primary-care-monitor---primary:
    run: asthma-primary-care-monitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-control---primary/output
  asthma-primary-care-attack---primary:
    run: asthma-primary-care-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-monitor---primary/output
  acute-asthma-primary-care---primary:
    run: acute-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-attack---primary/output
  asthma-primary-care-indicator---primary:
    run: asthma-primary-care-indicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: acute-asthma-primary-care---primary/output
  clinical-asthma-primary-care---primary:
    run: clinical-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-indicator---primary/output
  asthma-primary-care-nurse---primary:
    run: asthma-primary-care-nurse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: clinical-asthma-primary-care---primary/output
  asthma-primary-care-satisfactory---primary:
    run: asthma-primary-care-satisfactory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-nurse---primary/output
  asthma-primary-care-check---primary:
    run: asthma-primary-care-check---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-satisfactory---primary/output
  allergic-asthma-primary-care---primary:
    run: allergic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-check---primary/output
  occupational-asthma-primary-care---primary:
    run: occupational-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: allergic-asthma-primary-care---primary/output
  severe-asthma-primary-care---primary:
    run: severe-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: occupational-asthma-primary-care---primary/output
  asthma-primary-care-appointment---primary:
    run: asthma-primary-care-appointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: severe-asthma-primary-care---primary/output
  asthma-primary-care-prevent---primary:
    run: asthma-primary-care-prevent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-appointment---primary/output
  asthma-primary-care-restricts---primary:
    run: asthma-primary-care-restricts---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-prevent---primary/output
  asthma-primary-care-monitored---primary:
    run: asthma-primary-care-monitored---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-restricts---primary/output
  mixed-asthma-primary-care---primary:
    run: mixed-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-monitored---primary/output
  asthma-primary-care-education---primary:
    run: asthma-primary-care-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: mixed-asthma-primary-care---primary/output
  asthma-primary-care-never---primary:
    run: asthma-primary-care-never---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-education---primary/output
  intrinsic-asthma-primary-care---primary:
    run: intrinsic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-never---primary/output
  asthma-primary-care-attendance---primary:
    run: asthma-primary-care-attendance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: intrinsic-asthma-primary-care---primary/output
  asthma-primary-care-doctor---primary:
    run: asthma-primary-care-doctor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-attendance---primary/output
  occasional-asthma-primary-care---primary:
    run: occasional-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-doctor---primary/output
  asthma-primary-care-leaflet---primary:
    run: asthma-primary-care-leaflet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: occasional-asthma-primary-care---primary/output
  asthma-primary-care-theophylline---primary:
    run: asthma-primary-care-theophylline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-leaflet---primary/output
  asthma-primary-care-brittle---primary:
    run: asthma-primary-care-brittle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-theophylline---primary/output
  asthma-primary-care-action---primary:
    run: asthma-primary-care-action---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-brittle---primary/output
  aspirin-asthma-primary-care---primary:
    run: aspirin-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-action---primary/output
  asthma-primary-care-unspecified---primary:
    run: asthma-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: aspirin-asthma-primary-care---primary/output
  asthma-primary-care-induced---primary:
    run: asthma-primary-care-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-unspecified---primary/output
  asthma-primary-care-attends---primary:
    run: asthma-primary-care-attends---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-induced---primary/output
  asthma-primary-care-visit---primary:
    run: asthma-primary-care-visit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-attends---primary/output
  detergent-asthma-primary-care---primary:
    run: detergent-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-visit---primary/output
  asthma-primary-care-wheeze---primary:
    run: asthma-primary-care-wheeze---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: detergent-asthma-primary-care---primary/output
  asthma-primary-care-study---primary:
    run: asthma-primary-care-study---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-wheeze---primary/output
  asthma-primary-care-bronchitis---primary:
    run: asthma-primary-care-bronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-study---primary/output
  asthma-primary-care-admission---primary:
    run: asthma-primary-care-admission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-bronchitis---primary/output
  asthma---primary:
    run: asthma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-admission---primary/output
  prophylactic-asthma-primary-care---primary:
    run: prophylactic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: asthma---primary/output
  asthma-primary-care-aggravated---primary:
    run: asthma-primary-care-aggravated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: prophylactic-asthma-primary-care---primary/output
  asthma-primary-care-given---primary:
    run: asthma-primary-care-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-aggravated---primary/output
  asthma-primary-care-exacerbation---primary:
    run: asthma-primary-care-exacerbation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-given---primary/output
  asthma-primary-care-outreach---primary:
    run: asthma-primary-care-outreach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-exacerbation---primary/output
  asthma-primary-care-sequoiosis---primary:
    run: asthma-primary-care-sequoiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-outreach---primary/output
  asthma-primary-care-colleg---primary:
    run: asthma-primary-care-colleg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-sequoiosis---primary/output
  asthma-primary-care-exerciseinduced---primary:
    run: asthma-primary-care-exerciseinduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-colleg---primary/output
  asthma-primary-care-telehealth---primary:
    run: asthma-primary-care-telehealth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-exerciseinduced---primary/output
  asthma-primary-care-steps---primary:
    run: asthma-primary-care-steps---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-telehealth---primary/output
  asthma-primary-care-monitorng---primary:
    run: asthma-primary-care-monitorng---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-steps---primary/output
  asthma-primary-care-invit---primary:
    run: asthma-primary-care-invit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-monitorng---primary/output
  asthma-primary-care-status---primary:
    run: asthma-primary-care-status---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-invit---primary/output
  asthma-primary-care-extrin---primary:
    run: asthma-primary-care-extrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-status---primary/output
  asthma-primary-care-intrin---primary:
    run: asthma-primary-care-intrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-extrin---primary/output
  asthma-primary-care-necno---primary:
    run: asthma-primary-care-necno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-intrin---primary/output
  nonallergic-asthma-primary-care---primary:
    run: nonallergic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-necno---primary/output
  asthma-primary-care-druginduced---primary:
    run: asthma-primary-care-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: nonallergic-asthma-primary-care---primary/output
  asthma-primary-care-polyp---primary:
    run: asthma-primary-care-polyp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-druginduced---primary/output
  asthma-primary-care-baker---primary:
    run: asthma-primary-care-baker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-polyp---primary/output
  asthma-primary-care-colophony---primary:
    run: asthma-primary-care-colophony---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-baker---primary/output
  asthma-primary-care-worker---primary:
    run: asthma-primary-care-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-colophony---primary/output
  asthma-primary-care-sulphiteinduced---primary:
    run: asthma-primary-care-sulphiteinduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-worker---primary/output
  asthma-primary-care-asthmaticus---primary:
    run: asthma-primary-care-asthmaticus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-sulphiteinduced---primary/output
  asthma-primary-care-eosinophilia---primary:
    run: asthma-primary-care-eosinophilia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-asthmaticus---primary/output
  asthma-primary-care-atopy---primary:
    run: asthma-primary-care-atopy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-eosinophilia---primary/output
  recent-asthma-primary-care---primary:
    run: recent-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-atopy---primary/output
  asthma-primary-care-dormant---primary:
    run: asthma-primary-care-dormant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: recent-asthma-primary-care---primary/output
  asthma-primary-care-attend---primary:
    run: asthma-primary-care-attend---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-dormant---primary/output
  asthma-primary-care-unsatisfactory---primary:
    run: asthma-primary-care-unsatisfactory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-attend---primary/output
  asthma-primary-care-walking---primary:
    run: asthma-primary-care-walking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-unsatisfactory---primary/output
  asthma-primary-care-number---primary:
    run: asthma-primary-care-number---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-walking---primary/output
  asthma-primary-care-finding---primary:
    run: asthma-primary-care-finding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-number---primary/output
  asthma-primary-care-aspirininduced---primary:
    run: asthma-primary-care-aspirininduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-finding---primary/output
  asthma-primary-care-airflow---primary:
    run: asthma-primary-care-airflow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-aspirininduced---primary/output
  nocturnal-asthma-primary-care---primary:
    run: nocturnal-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-airflow---primary/output
  asthma-primary-care-quality---primary:
    run: asthma-primary-care-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: nocturnal-asthma-primary-care---primary/output
  asthma-primary-care-limits---primary:
    run: asthma-primary-care-limits---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-quality---primary/output
  asthma-primary-care-perfume---primary:
    run: asthma-primary-care-perfume---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-limits---primary/output
  obstructive-asthma-primary-care---primary:
    run: obstructive-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-perfume---primary/output
  asthma-primary-care-subject---primary:
    run: asthma-primary-care-subject---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: obstructive-asthma-primary-care---primary/output
  asthma-primary-care-messge---primary:
    run: asthma-primary-care-messge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-subject---primary/output
  asthma-primary-care-email---primary:
    run: asthma-primary-care-email---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-messge---primary/output
  asthma-primary-care-syndrom---primary:
    run: asthma-primary-care-syndrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-email---primary/output
  asthma-primary-care-assessment---primary:
    run: asthma-primary-care-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-syndrom---primary/output
  asthma-primary-care-threatening---primary:
    run: asthma-primary-care-threatening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-assessment---primary/output
  asthma-primary-care-diary---primary:
    run: asthma-primary-care-diary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-threatening---primary/output
  aspirinsensitive-asthma-primary-care---primary:
    run: aspirinsensitive-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-diary---primary/output
  asthma-primary-care-resolved---primary:
    run: asthma-primary-care-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: aspirinsensitive-asthma-primary-care---primary/output
  asthma-primary-care-selfmanage---primary:
    run: asthma-primary-care-selfmanage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-resolved---primary/output
  asthma-primary-care-activit---primary:
    run: asthma-primary-care-activit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-selfmanage---primary/output
  asthma-primary-care-admin---primary:
    run: asthma-primary-care-admin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-activit---primary/output
  asthma-primary-care-restrct---primary:
    run: asthma-primary-care-restrct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-admin---primary/output
  asthma-primary-care-satisfac---primary:
    run: asthma-primary-care-satisfac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-restrct---primary/output
  asthma-primary-care-unsatisf---primary:
    run: asthma-primary-care-unsatisf---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-satisfac---primary/output
  asthma-primary-care-symptm---primary:
    run: asthma-primary-care-symptm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-unsatisf---primary/output
  asthma-primary-care-managemt---primary:
    run: asthma-primary-care-managemt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-symptm---primary/output
  asthma-primary-care-managmt---primary:
    run: asthma-primary-care-managmt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-managemt---primary/output
  absent-asthma-primary-care---primary:
    run: absent-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-managmt---primary/output
  asthma-primary-care-health---primary:
    run: asthma-primary-care-health---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: absent-asthma-primary-care---primary/output
  asthma-primary-care-writt---primary:
    run: asthma-primary-care-writt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-health---primary/output
  clinic-asthma-primary-care---primary:
    run: clinic-asthma-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-writt---primary/output
  asthma-primary-care-spclst---primary:
    run: asthma-primary-care-spclst---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: clinic-asthma-primary-care---primary/output
  asthma-primary-care-letter---primary:
    run: asthma-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-spclst---primary/output
  asthma-primary-care-invite---primary:
    run: asthma-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-letter---primary/output
  asthma-primary-care-chron---primary:
    run: asthma-primary-care-chron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-invite---primary/output
  asthma-primary-care-lateonset---primary:
    run: asthma-primary-care-lateonset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-chron---primary/output
  asthma-primary-care-overlap---primary:
    run: asthma-primary-care-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-lateonset---primary/output
  asthma-primary-care-antiasthmatics---primary:
    run: asthma-primary-care-antiasthmatics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-overlap---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: asthma-primary-care-antiasthmatics---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
