DiagrammeR::grViz("
digraph research_cycle {

  # a 'graph' statement
  graph [overlap = false, fontsize = 10, layout = dot, rankdir = LR]

  # several 'node' statements
  node [shape = box,
        fontname = Baskerville,
        fontsize = 10,
        style = rounded,
        penwidth = 0.1]
  
  DL [label = 'digital\nlibraries']
  
  # several 'node' statements
  node [shape = box,
      fontname = Baskerville,
      fontsize = 10,
      style = solid,
      penwidth = 1]
  ZOT [label = 'bibliography\nmanager']
  MEM [label = 'memex']
  ZK [label = 'zettelkasten'] 
  
  node [shape = rounded,
      fontname = Baskerville,
      fontsize = 10,
      style = dotted,
      penwidth = 1]
  PYT [label = 'algorythmic\ntransformations']

  subgraph cluster0 {  
    DL->ZOT
    ZOT->PYT [label = 'bibTeX', fontsize= 7]
    color = gray;
    style = rounded;
    label = 'memex-building cycle';
    fontcolor = gray;
  }
  
  PYT->MEM [label = 'scripts', fontsize= 7]

  subgraph cluster1 {
    MEM->ZK [label = 'trails', fontsize= 7];
    ZK->MEM [label = 'folgezettel', style=radial, fontsize = 7];
    color = gray;
    style = rounded;
    label = 'research cycle';
    fontcolor = gray;
  }

}",height = 400)
