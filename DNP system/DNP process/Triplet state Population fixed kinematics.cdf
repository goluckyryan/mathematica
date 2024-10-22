(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    165320,       3686]
NotebookOptionsPosition[    163435,       3604]
NotebookOutlinePosition[    163813,       3621]
CellTagsIndexPosition[    163770,       3618]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Triplet state Population ", "Title",
 CellChangeTimes->{{3.5266251467609587`*^9, 3.526625161585161*^9}, {
  3.5595167130890837`*^9, 3.5595167153892155`*^9}}],

Cell["Fixed Kinematics Parameters", "Subtitle",
 CellChangeTimes->{{3.532232525521472*^9, 3.532232534743539*^9}, 
   3.5545331241273794`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"clean", " ", "up", " ", "variable"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Remove", "[", 
     RowBox[{
     "k0", ",", "ki", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", "R", 
      ",", "P"}], "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"in", " ", 
     SuperscriptBox["10", "6"], " ", 
     SuperscriptBox["s", 
      RowBox[{"-", "1"}]]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"A", "=", "42"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "natural", " ", "S1", " ", "to", " ", "S0", " ", "decay", " ", "rate"}], 
    " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"W", "=", "10"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
    "transition", " ", "rate", " ", "induced", " ", "by", " ", "1", "W", " ", 
     "laser"}], " ", "*)"}], " ", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Alpha]", "=", 
     RowBox[{"{", 
      RowBox[{"0.04657894737", ",", "0.2"}], "}"}]}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"ratio", " ", "of", " ", "g0", " ", "to", " ", "g1"}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g0", "=", "0.04"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"S1", " ", "to", " ", "m"}], "=", 
     RowBox[{"+", "1"}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"g1", "=", 
     RowBox[{"g0", " ", 
      RowBox[{"\[Alpha]", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"S1", " ", "to", " ", "m"}], "=", "0"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"gi", "=", 
     RowBox[{"g0", " ", 
      RowBox[{"\[Alpha]", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"S1", " ", "to", " ", "m"}], "=", 
     RowBox[{"-", "1"}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"k1", "=", "0.0118"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"m", "=", 
     RowBox[{
      RowBox[{"+", "1"}], " ", "to", " ", "S0"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"k0", "=", "0.04"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"m", "=", 
     RowBox[{"0", " ", "to", " ", "S0"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ki", "=", "0.0118"}], ";"}], " ", 
   RowBox[{"(*", " ", 
    RowBox[{"m", "=", 
     RowBox[{
      RowBox[{"-", "1"}], " ", "to", " ", "S0"}]}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"auxilary", " ", "vector"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"TripletDiff", "=", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1", ",", 
       RowBox[{"-", "1"}], ",", "0"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   
   RowBox[{
    RowBox[{"TripletSum", "=", 
     RowBox[{"{", 
      RowBox[{"0", ",", "1", ",", "1", ",", "1", ",", "0"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"InitailState", "=", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"normalization", " ", "function"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"NormTo1", "[", "list_", "]"}], ":=", 
    FractionBox["list", 
     RowBox[{"Total", "[", "list", "]"}]]}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"rate", " ", "matrix"}], ",", " ", 
     RowBox[{
      RowBox[{
      "assume", " ", "thermal", " ", "maxing", " ", "between", " ", "m"}], 
      "=", 
      RowBox[{
       RowBox[{
        RowBox[{"+", "1"}], " ", "and", " ", "m"}], "=", 
       RowBox[{
        RowBox[{"-", "1"}], " ", "is", " ", "0"}]}]}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"R", "[", 
      RowBox[{"P_", ",", "\[Omega]_"}], "]"}], ":=", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "A"}], "-", 
          RowBox[{"P", " ", "W"}], "-", 
          RowBox[{"(", 
           RowBox[{"g1", "+", "g0", "+", "gi"}], ")"}]}], ",", "0", ",", "0", 
         ",", "0", ",", 
         RowBox[{"P", " ", "W"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"g1", ",", 
         RowBox[{
          RowBox[{"-", "k1"}], "-", "\[Omega]"}], ",", "\[Omega]", ",", "0", 
         ",", "0"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"g0", ",", "\[Omega]", ",", 
         RowBox[{
          RowBox[{"-", "k0"}], "-", "\[Omega]", "-", "\[Omega]"}], ",", 
         "\[Omega]", ",", "0"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"gi", ",", "0", ",", "\[Omega]", ",", 
         RowBox[{
          RowBox[{"-", "ki"}], "-", "\[Omega]"}], ",", "0"}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"A", "+", 
          RowBox[{"P", " ", "W"}]}], ",", "k1", ",", "k0", ",", "ki", ",", 
         RowBox[{
          RowBox[{"-", "P"}], " ", "W"}]}], "}"}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "display", " ", "the", " ", "rate", " ", "matrix", " ", "in", " ", 
     "matrix", " ", "Form"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"R", "[", 
     RowBox[{"P", ",", "\[Omega]"}], "]"}], "//", "MatrixForm"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "checking", " ", "sum", " ", "of", " ", "element", " ", "of", " ", 
      "colume", " ", "vector", " ", "of", " ", "rate", " ", "matrix"}], ",", 
     " ", 
     RowBox[{
     "it", " ", "should", " ", "be", " ", "all", " ", "zero", " ", "for", " ",
       "constant", " ", "total", " ", "population"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Sum", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"R", "[", 
           RowBox[{"P", ",", "\[Omega]"}], "]"}], "[", 
          RowBox[{"[", "i", "]"}], "]"}], "[", 
         RowBox[{"[", "j", "]"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", "1", ",", "5"}], "}"}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "5"}], "}"}]}], "]"}], "//", "Chop"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "Calculate", " ", "the", " ", "relative", " ", "population", " ", "among",
      " ", "the", " ", "triple", " ", "stata"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Take", "[", 
    RowBox[{
     FractionBox[
      RowBox[{"Flatten", "[", 
       RowBox[{"NullSpace", "[", 
        RowBox[{"R", "[", 
         RowBox[{"1", ",", "0"}], "]"}], "]"}], "]"}], 
      RowBox[{"TripletSum", ".", 
       RowBox[{"Flatten", "[", 
        RowBox[{"NullSpace", "[", 
         RowBox[{"R", "[", 
          RowBox[{"1", ",", "0"}], "]"}], "]"}], "]"}]}]], " ", ",", 
     RowBox[{"{", 
      RowBox[{"2", ",", "4"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.5561615142550864`*^9, {3.5561642681886024`*^9, 3.5561642911999187`*^9}, 
   3.5561643729355936`*^9, {3.556167028198466*^9, 3.5561670457934723`*^9}, {
   3.556167291626533*^9, 3.556167299074959*^9}, {3.556169761926826*^9, 
   3.556169762066834*^9}, {3.5561712526500907`*^9, 3.556171254608203*^9}, {
   3.556171350738701*^9, 3.556171365563549*^9}, {3.5561714387427344`*^9, 
   3.556171452388515*^9}, 3.55617166472766*^9, {3.5561718062207527`*^9, 
   3.556171807235811*^9}, {3.5561718504782844`*^9, 3.556171850716298*^9}, 
   3.556171916926085*^9, 3.556171974393372*^9, {3.5561720231521606`*^9, 
   3.556172029154504*^9}, {3.5561721098001165`*^9, 3.556172145568163*^9}, {
   3.556172176795949*^9, 3.5561721801481404`*^9}, 3.556172227807866*^9, {
   3.5561727962673807`*^9, 3.556172799899588*^9}, 3.5561728872165823`*^9, {
   3.5561730102716208`*^9, 3.5561730116466994`*^9}, 3.5561732512364035`*^9, {
   3.556173382638919*^9, 3.556173383073944*^9}, {3.556173465847678*^9, 
   3.5561734719090247`*^9}, {3.556173698738999*^9, 3.556173701347148*^9}, {
   3.5561737544381847`*^9, 3.5561737589804444`*^9}, {3.556173857373072*^9, 
   3.5561738717838964`*^9}, 3.5605630757198763`*^9, {3.560587866062362*^9, 
   3.5605878680304747`*^9}, {3.604634905731859*^9, 3.604635023774643*^9}, {
   3.605238355323*^9, 3.605238390458934*^9}, 3.6052384435264177`*^9, {
   3.6052387491541977`*^9, 3.605238824474081*^9}, {3.6052388872270403`*^9, 
   3.605239039350692*^9}, {3.605239090544072*^9, 3.6052393867321587`*^9}, {
   3.605239420531273*^9, 3.605239517782123*^9}, {3.605239613691022*^9, 
   3.60523964641171*^9}, {3.605239782535225*^9, 3.605239785431781*^9}, 
   3.605239837607057*^9, {3.6052398943695507`*^9, 3.6052399280473967`*^9}, {
   3.605240001845026*^9, 3.605240004469739*^9}, {3.6052423119679403`*^9, 
   3.6052423211589203`*^9}, {3.6052425766528254`*^9, 3.605242613540421*^9}, {
   3.6052435976197042`*^9, 3.605243605423029*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{"-", "42.056`"}], "-", 
       RowBox[{"10", " ", "P"}]}], "0", "0", "0", 
      RowBox[{"10", " ", "P"}]},
     {"0.008`", 
      RowBox[{
       RowBox[{"-", "0.0118`"}], "-", "\[Omega]"}], "\[Omega]", "0", "0"},
     {"0.04`", "\[Omega]", 
      RowBox[{
       RowBox[{"-", "0.04`"}], "-", 
       RowBox[{"2", " ", "\[Omega]"}]}], "\[Omega]", "0"},
     {"0.008`", "0", "\[Omega]", 
      RowBox[{
       RowBox[{"-", "0.0118`"}], "-", "\[Omega]"}], "0"},
     {
      RowBox[{"42", "+", 
       RowBox[{"10", " ", "P"}]}], "0.0118`", "0.04`", "0.0118`", 
      RowBox[{
       RowBox[{"-", "10"}], " ", "P"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.60523753470462*^9, {3.605239379045362*^9, 3.605239387207322*^9}, {
   3.6052394281377573`*^9, 3.605239518852553*^9}, {3.6052396149854727`*^9, 
   3.605239650314781*^9}, 3.605239787223172*^9, 3.605239838383174*^9, 
   3.6052398982063637`*^9, 3.60524000570333*^9, 3.605242322168589*^9, 
   3.6052426141426973`*^9, 3.605243142344754*^9, 3.6052436061956997`*^9, {
   3.605508916663053*^9, 3.605508919447609*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{
  3.60523753470462*^9, {3.605239379045362*^9, 3.605239387207322*^9}, {
   3.6052394281377573`*^9, 3.605239518852553*^9}, {3.6052396149854727`*^9, 
   3.605239650314781*^9}, 3.605239787223172*^9, 3.605239838383174*^9, 
   3.6052398982063637`*^9, 3.60524000570333*^9, 3.605242322168589*^9, 
   3.6052426141426973`*^9, 3.605243142344754*^9, 3.6052436061956997`*^9, {
   3.605508916663053*^9, 3.605508919449768*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.287769784172648`", ",", "0.4244604316547037`", ",", 
   "0.2877697841726482`"}], "}"}]], "Output",
 CellChangeTimes->{
  3.60523753470462*^9, {3.605239379045362*^9, 3.605239387207322*^9}, {
   3.6052394281377573`*^9, 3.605239518852553*^9}, {3.6052396149854727`*^9, 
   3.605239650314781*^9}, 3.605239787223172*^9, 3.605239838383174*^9, 
   3.6052398982063637`*^9, 3.60524000570333*^9, 3.605242322168589*^9, 
   3.6052426141426973`*^9, 3.605243142344754*^9, 3.6052436061956997`*^9, {
   3.605508916663053*^9, 3.6055089194511127`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Display", " ", "the", " ", "Rate", " ", "matrix", " ", "and", " ", "the", 
    " ", "relative", " ", "triplet", " ", "state", " ", "population"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "evertthing", " ", "declared", " ", "in", " ", "this", " ", "box", " ", 
    "are", " ", "indepenedent", " ", "of", " ", "the", " ", "calcualtion"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"R", ",", " ", "P", ",", " ", "D"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"D", "=", 
      RowBox[{"IdentityMatrix", "[", "5", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"R", "[", 
       RowBox[{
       "P_", ",", "g1_", ",", "g0_", ",", "gi_", ",", "k1_", ",", "k0_", ",", 
        "ki_", ",", "\[Omega]_"}], "]"}], ":=", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "42.55"}], "-", 
           RowBox[{"P", " ", "10"}], "-", 
           RowBox[{"(", 
            RowBox[{"g1", "+", "g0", "+", "gi"}], ")"}]}], ",", "0", ",", "0",
           ",", "0", ",", 
          RowBox[{"P", " ", "10"}]}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"g1", ",", 
          RowBox[{
           RowBox[{"-", "k1"}], "-", "\[Omega]"}], ",", "\[Omega]", ",", "0", 
          ",", "0"}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"g0", ",", "\[Omega]", ",", 
          RowBox[{
           RowBox[{"-", "k0"}], "-", 
           RowBox[{"2", "\[Omega]"}]}], ",", "\[Omega]", ",", "0"}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"gi", ",", "0", ",", "\[Omega]", ",", 
          RowBox[{
           RowBox[{"-", "ki"}], "-", "\[Omega]"}], ",", "0"}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"42.55", "+", 
           RowBox[{"P", " ", "10"}]}], ",", "k1", ",", "k0", ",", "ki", ",", 
          RowBox[{
           RowBox[{"-", "P"}], " ", "10"}]}], "}"}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"TableForm", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<Rate Matrix\>\"", ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"R", "[", 
            RowBox[{"1", ",", 
             RowBox[{"g0", " ", "\[Alpha]"}], ",", "g0", ",", 
             RowBox[{"g0", " ", "\[Alpha]"}], ",", "0.0118", ",", "0.04", ",",
              "0.0118", ",", "\[Omega]"}], "]"}], "//", "MatrixForm"}], ",", 
          "\"\<\>\"", ",", "\[IndentingNewLine]", 
          "\"\<Relative Population of triplet state\>\"", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"\"\<m=+1\>\"", ",", "\"\<m=0\>\"", ",", "\"\<m=-1\>\""}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Take", "[", 
           RowBox[{
            FractionBox[
             RowBox[{"Flatten", "[", 
              RowBox[{"NullSpace", "[", 
               RowBox[{"R", "[", 
                RowBox[{"1", ",", 
                 RowBox[{"g0", " ", "\[Alpha]"}], ",", "g0", ",", 
                 RowBox[{"g0", " ", "\[Alpha]"}], ",", "0.0118", ",", "0.04", 
                 ",", "0.0118", ",", "\[Omega]"}], "]"}], "]"}], "]"}], 
             RowBox[{"TripletSum", ".", 
              RowBox[{"Flatten", "[", 
               RowBox[{"NullSpace", "[", 
                RowBox[{"R", "[", 
                 RowBox[{"1", ",", 
                  RowBox[{"g0", " ", "\[Alpha]"}], ",", "g0", ",", 
                  RowBox[{"g0", " ", "\[Alpha]"}], ",", "0.0118", ",", "0.04",
                   ",", "0.0118", ",", "\[Omega]"}], "]"}], "]"}], "]"}]}]], 
            " ", ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", "4"}], "}"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\"\<\>\"", ",", 
          "\"\<Diagonalization, R = \!\(\*SuperscriptBox[\(P\), \(-1\)]\)DP\>\
\"", ",", "\[IndentingNewLine]", 
          RowBox[{"(*", " ", 
           RowBox[{
           "calculate", " ", "eigen", " ", "value", " ", "and", " ", "eigen", 
            " ", "vector"}], " ", "*)"}], "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"PtDP", "=", 
            RowBox[{
             RowBox[{"Eigensystem", "[", 
              RowBox[{"R", "[", 
               RowBox[{"1", ",", 
                RowBox[{"g0", " ", "\[Alpha]"}], ",", "g0", ",", 
                RowBox[{"g0", " ", "\[Alpha]"}], ",", "0.0118", ",", "0.04", 
                ",", "0.0118", ",", "\[Omega]"}], "]"}], "]"}], "//", 
             "Chop"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"D", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", "i"}], "]"}], "]"}], "=", 
              RowBox[{"PtDP", "[", 
               RowBox[{"[", 
                RowBox[{"1", ",", "i"}], "]"}], "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", "5"}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"P", "=", 
            RowBox[{"Inverse", "[", 
             RowBox[{"Transpose", "[", 
              RowBox[{"PtDP", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\<D=\>\"", ",", 
             RowBox[{"NumberForm", "[", 
              RowBox[{
               RowBox[{"MatrixForm", "[", "D", "]"}], ",", "4"}], "]"}]}], 
            "}"}]}], ",", "\[IndentingNewLine]", 
          "\"\<Eigen State (Column vector)\>\"", ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"\"\<\!\(\*SuperscriptBox[\(P\), \(-1\)]\)=\>\"", ",", 
            RowBox[{
             RowBox[{"NumberForm", "[", 
              RowBox[{
               RowBox[{"MatrixForm", "[", 
                RowBox[{"Inverse", "[", "P", "]"}], "]"}], ",", "4"}], "]"}], 
             "//", "Chop"}]}], "}"}], ",", "\[IndentingNewLine]", 
          "\"\<After Diagonalization, \!\(\*SuperscriptBox[\(e\), \(R\)]\) = \
\!\(\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \
\(R\)]\)P\>\""}], "\[IndentingNewLine]", "}"}], "]"}], "\[IndentingNewLine]", 
       ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\[Alpha]", ",", "0.04657894737"}], "}"}], ",", "0.01", ",",
          "0.1", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"g0", ",", "0.1", ",", "1", " ", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
         RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
      "]"}]}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5275939603738747`*^9, 3.5275940666589537`*^9}, {
   3.5275946124311705`*^9, 3.5275946365275483`*^9}, {3.527594764828887*^9, 
   3.527594768789113*^9}, 3.527595168591981*^9, {3.527597445663222*^9, 
   3.5275974592619996`*^9}, {3.5275976810386844`*^9, 
   3.5275976954895115`*^9}, {3.527914405028182*^9, 3.527914411148549*^9}, {
   3.527914448731518*^9, 3.527914475194766*^9}, {3.5279145607189302`*^9, 
   3.527914565639586*^9}, {3.52808148212995*^9, 3.528081506199885*^9}, {
   3.52808180790549*^9, 3.52808181658368*^9}, {3.5285294519029627`*^9, 
   3.5285294531740355`*^9}, {3.5285323517848263`*^9, 
   3.5285323914340944`*^9}, {3.528610463431576*^9, 3.5286104842836313`*^9}, {
   3.528610908201466*^9, 3.528610918466481*^9}, {3.528611296271831*^9, 
   3.52861130844267*^9}, 3.5286119609430237`*^9, {3.528611999477659*^9, 
   3.528611999502537*^9}, {3.528680344489161*^9, 3.528680348055109*^9}, {
   3.528681209787346*^9, 3.528681214286643*^9}, {3.528681258753734*^9, 
   3.528681315786655*^9}, {3.528681739415457*^9, 3.5286817658669043`*^9}, {
   3.529122321570859*^9, 3.529122334673472*^9}, {3.5321580535343103`*^9, 
   3.53215806119585*^9}, {3.556161455140705*^9, 3.5561617763050747`*^9}, {
   3.5561618133771954`*^9, 3.5561618535884953`*^9}, {3.5561618889685183`*^9, 
   3.5561619480999007`*^9}, {3.5561620316716805`*^9, 
   3.5561620480636187`*^9}, {3.5561624088492537`*^9, 
   3.5561624535938134`*^9}, {3.5561634738091664`*^9, 
   3.5561635459972954`*^9}, {3.5561638470525146`*^9, 3.556163864596518*^9}, {
   3.556163906551918*^9, 3.5561639283571653`*^9}, {3.559516086397239*^9, 
   3.559516113583794*^9}, {3.604634322232161*^9, 3.604634332602325*^9}, 
   3.6046343649557037`*^9, 3.60463504488087*^9, 3.6052383221383057`*^9, {
   3.605240051153178*^9, 3.605240212625195*^9}, {3.605240372754908*^9, 
   3.6052403981960573`*^9}, {3.605240432384636*^9, 3.605240468709676*^9}, {
   3.605240499872045*^9, 3.605240510213542*^9}, {3.605240565103848*^9, 
   3.605240759921898*^9}, {3.605240805003296*^9, 3.6052409561194572`*^9}, {
   3.605241029121008*^9, 3.605241030968769*^9}, {3.605241576940014*^9, 
   3.605241586834672*^9}, {3.605241640697603*^9, 3.605241671753901*^9}, {
   3.6052417119305573`*^9, 3.6052417626980762`*^9}, {3.605241846032337*^9, 
   3.605241881810924*^9}, {3.605241918500568*^9, 3.605241919513813*^9}, {
   3.605242071799719*^9, 3.605242105838344*^9}, {3.605242137726287*^9, 
   3.605242184576392*^9}, {3.6052422482528067`*^9, 3.605242284512995*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`g0$$ = 0.1, $CellContext`\[Alpha]$$ = 
    0.04657894737, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Alpha]$$], 0.04657894737}, 0.01, 0.1}, {
      Hold[$CellContext`g0$$], 0.1, 1}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    840., {190.34375, 195.65625}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`\[Alpha]$2681$$ = 
    0, $CellContext`g0$2682$$ = 0, $CellContext`\[Omega]$2683$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`g0$$ = 0.1, $CellContext`\[Alpha]$$ = 
        0.04657894737, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$2681$$, 0], 
        Hold[$CellContext`g0$$, $CellContext`g0$2682$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$2683$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[{"Rate Matrix", 
         MatrixForm[
          $CellContext`R$2680[
          1, $CellContext`g0$$ $CellContext`\[Alpha]$$, $CellContext`g0$$, \
$CellContext`g0$$ $CellContext`\[Alpha]$$, 0.0118, 0.04, 
           0.0118, $CellContext`\[Omega]$$]], "", 
         "Relative Population of triplet state", {"m=+1", "m=0", "m=-1"}, 
         Take[Flatten[
            NullSpace[
             $CellContext`R$2680[
             1, $CellContext`g0$$ $CellContext`\[Alpha]$$, $CellContext`g0$$, \
$CellContext`g0$$ $CellContext`\[Alpha]$$, 0.0118, 0.04, 
              0.0118, $CellContext`\[Omega]$$]]]/
          Dot[$CellContext`TripletSum, 
           Flatten[
            NullSpace[
             $CellContext`R$2680[
             1, $CellContext`g0$$ $CellContext`\[Alpha]$$, $CellContext`g0$$, \
$CellContext`g0$$ $CellContext`\[Alpha]$$, 0.0118, 0.04, 
              0.0118, $CellContext`\[Omega]$$]]]], {2, 4}], "", 
         "Diagonalization, R = \!\(\*SuperscriptBox[\(P\), \(-1\)]\)DP", \
$CellContext`PtDP = Chop[
            Eigensystem[
             $CellContext`R$2680[
             1, $CellContext`g0$$ $CellContext`\[Alpha]$$, $CellContext`g0$$, \
$CellContext`g0$$ $CellContext`\[Alpha]$$, 0.0118, 0.04, 
              0.0118, $CellContext`\[Omega]$$]]]; 
         Table[Part[D$2680, $CellContext`i, $CellContext`i] = 
           Part[$CellContext`PtDP, 1, $CellContext`i], {$CellContext`i, 1, 
            5}]; $CellContext`P$2680 = Inverse[
            Transpose[
             Part[$CellContext`PtDP, 2]]]; {"D=", 
           NumberForm[
            MatrixForm[D$2680], 4]}, "Eigen State (Column vector)", {
         "\!\(\*SuperscriptBox[\(P\), \(-1\)]\)=", 
          Chop[
           NumberForm[
            MatrixForm[
             Inverse[$CellContext`P$2680]], 4]]}, 
         "After Diagonalization, \!\(\*SuperscriptBox[\(e\), \(R\)]\) = \
\!\(\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(R\)]\)P"}],
       "Specifications" :> {{{$CellContext`\[Alpha]$$, 0.04657894737}, 0.01, 
         0.1, Appearance -> "Labeled"}, {$CellContext`g0$$, 0.1, 1, 
         Appearance -> "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{883., {261., 267.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5561617820924053`*^9, {3.5561618489102273`*^9, 3.5561618547305603`*^9}, 
   3.5561619006071844`*^9, 3.556161949909004*^9, {3.556162053251915*^9, 
   3.5561620777243147`*^9}, {3.556162414568581*^9, 3.5561624543358555`*^9}, 
   3.5561634806955605`*^9, {3.556163536482751*^9, 3.5561635467863407`*^9}, {
   3.556163856656064*^9, 3.5561638651045475`*^9}, {3.5561639073699646`*^9, 
   3.5561639290432043`*^9}, 3.5561645418252535`*^9, 3.556164739747574*^9, 
   3.5561648251554585`*^9, 3.5561779133270597`*^9, 3.5595160790988216`*^9, 
   3.560562407608458*^9, 3.5605874231390285`*^9, 3.604632902071052*^9, 
   3.604635045549856*^9, 3.604636601920705*^9, 3.604637113727346*^9, 
   3.6052375370561533`*^9, 3.6052376871196737`*^9, 3.605239795381977*^9, {
   3.6052400740408897`*^9, 3.605240107707436*^9}, {3.605240139601372*^9, 
   3.6052401695228033`*^9}, {3.605240374450666*^9, 3.6052403988934603`*^9}, 
   3.605240470500621*^9, 3.605240510708118*^9, 3.605240663308523*^9, 
   3.605240760300148*^9, {3.605240871611721*^9, 3.605240956666671*^9}, 
   3.605241587718808*^9, {3.605241653112279*^9, 3.605241672981435*^9}, 
   3.605241717577116*^9, {3.605241753617661*^9, 3.6052417649157343`*^9}, {
   3.6052418525682697`*^9, 3.605241882383409*^9}, 3.6052419202015753`*^9, {
   3.605242079970819*^9, 3.605242106356681*^9}, {3.6052421487492332`*^9, 
   3.6052421854427967`*^9}, 3.605242285139481*^9, 3.605508925506125*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"TableForm", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<state evolution formula\>\"", ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"NumberForm", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             "InitailState"}], ")"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", "4"}], "]"}], "//", "Chop"}], 
       "//", "FullSimplify"}], " ", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"equation", " ", "for", " ", "state", " ", "m"}], "=", "1"}], 
       "*)"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"NumberForm", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             "InitailState"}], ")"}], "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "4"}], "]"}], "//", "Chop"}], 
       "//", "FullSimplify"}], 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"equation", " ", "for", " ", "state", " ", "m"}], "=", "0"}], 
       "*)"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"NumberForm", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             "InitailState"}], ")"}], "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "4"}], "]"}], "//", "Chop"}], 
       "//", "FullSimplify"}]}], 
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{"equation", " ", "for", " ", "state", " ", "m"}], "=", 
       RowBox[{"-", "1"}]}], "*)"}], "}"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\[Omega]", ",", "0", ",", "0.001", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.528611273866007*^9, 3.5286112920115213`*^9}, 
   3.5286119657550783`*^9, {3.5286124421023693`*^9, 3.528612449133955*^9}, {
   3.5286318985091953`*^9, 3.528631902245324*^9}, {3.5286814472646217`*^9, 
   3.528681449189024*^9}, {3.528681663169262*^9, 3.5286817540118637`*^9}, {
   3.528682147668028*^9, 3.528682183605474*^9}, {3.5291258609525337`*^9, 
   3.5291258646376963`*^9}, {3.5291272903422747`*^9, 3.529127290938792*^9}, {
   3.5299852427651253`*^9, 3.52998524292871*^9}, {3.5299857504978523`*^9, 
   3.529985750583544*^9}, {3.5305088072079687`*^9, 3.53050880759728*^9}, {
   3.530508924593412*^9, 3.530508924712405*^9}, {3.5305089673215103`*^9, 
   3.530508967558489*^9}, {3.530936427161887*^9, 3.530936436793125*^9}, {
   3.5309364914212027`*^9, 3.5309364915572042`*^9}, {3.53093662380763*^9, 
   3.530936623974806*^9}, {3.5309366817363777`*^9, 3.530936683296665*^9}, {
   3.530936715926711*^9, 3.5309367210135612`*^9}, {3.5309367814360533`*^9, 
   3.5309368271864758`*^9}, {3.530936871708383*^9, 3.530936874322204*^9}, {
   3.530936955100842*^9, 3.530936977658128*^9}, {3.5309370386082497`*^9, 
   3.5309370427199163`*^9}, {3.5309370769851913`*^9, 3.530937079741242*^9}, {
   3.5321580675302677`*^9, 3.532158174647512*^9}, {3.532158221198004*^9, 
   3.5321582587401657`*^9}, {3.532158478085745*^9, 3.5321584887257338`*^9}, {
   3.532158521870479*^9, 3.532158527765431*^9}, {3.532158730236267*^9, 
   3.532158733853898*^9}, {3.532158883869686*^9, 3.5321589018730793`*^9}, {
   3.532232537848071*^9, 3.532232648478219*^9}, {3.53223413420369*^9, 
   3.532234140601128*^9}, {3.532234203850094*^9, 3.5322342049114943`*^9}, {
   3.5322343207090797`*^9, 3.532234372634902*^9}, {3.532234594261051*^9, 
   3.5322345964361563`*^9}, {3.5325246337863145`*^9, 3.532524635619419*^9}, {
   3.5325246724435253`*^9, 3.5325246967099133`*^9}, {3.532524862135375*^9, 
   3.532524862432392*^9}, {3.532525357475707*^9, 3.5325254304828825`*^9}, {
   3.532526417890359*^9, 3.532526480651949*^9}, {3.5325265113637056`*^9, 
   3.532526521846305*^9}, {3.532526553000087*^9, 3.5325265669378843`*^9}, {
   3.532526707306913*^9, 3.532526713463265*^9}, 3.5325268295649056`*^9, {
   3.5325273329947004`*^9, 3.5325274134563026`*^9}, {3.5325275541983523`*^9, 
   3.5325275574855404`*^9}, {3.532527702670844*^9, 3.5325277679855804`*^9}, {
   3.5325698472466793`*^9, 3.5325698474176893`*^9}, {3.532569981216741*^9, 
   3.5325700688668604`*^9}, {3.5325701093567195`*^9, 3.532570133502847*^9}, {
   3.532570179868038*^9, 3.5325701831712136`*^9}, {3.5325702154327335`*^9, 
   3.5325702216220307`*^9}, 3.5325703226293154`*^9, {3.5325703963581066`*^9, 
   3.5325703986642265`*^9}, {3.532570471186921*^9, 3.532570487439774*^9}, {
   3.5326027904386473`*^9, 3.5326028214036016`*^9}, {3.5326028859744067`*^9, 
   3.5326028871240416`*^9}, {3.532603568719371*^9, 3.532603671704005*^9}, {
   3.532603918848193*^9, 3.5326039312454534`*^9}, {3.5326039733050203`*^9, 
   3.532603991087864*^9}, 3.5326040270552073`*^9, {3.532606024829173*^9, 
   3.5326060291035805`*^9}, {3.5326060631740403`*^9, 3.532606065155244*^9}, {
   3.53594422622404*^9, 3.535944234426688*^9}, {3.535957100913108*^9, 
   3.5359571013798532`*^9}, {3.535957150941229*^9, 3.53595719969522*^9}, {
   3.535957233374997*^9, 3.5359572762285213`*^9}, 3.535957381340088*^9, {
   3.535957415144292*^9, 3.535957419134405*^9}, {3.535957551571113*^9, 
   3.53595755279795*^9}, {3.5529001481983137`*^9, 3.552900152897582*^9}, {
   3.552900430285448*^9, 3.5529004325825796`*^9}, {3.5533145522385263`*^9, 
   3.553314563788828*^9}, {3.55331597016109*^9, 3.55331597279638*^9}, {
   3.553316084529192*^9, 3.553316093649374*^9}, {3.5533163423399057`*^9, 
   3.553316379969233*^9}, {3.554516991814664*^9, 3.554517025288579*^9}, {
   3.5545171134676228`*^9, 3.5545171162157793`*^9}, {3.554533952346751*^9, 
   3.55453397138384*^9}, {3.5545513029704065`*^9, 3.5545513042264786`*^9}, {
   3.554551347268941*^9, 3.554551406163309*^9}, {3.5545517066034937`*^9, 
   3.5545517093066483`*^9}, 3.554551745568722*^9, {3.554551781874799*^9, 
   3.5545517873771133`*^9}, {3.5561605238944407`*^9, 
   3.5561605389773035`*^9}, {3.55616058682104*^9, 3.5561606174417915`*^9}, {
   3.5561609360970173`*^9, 3.5561609468656335`*^9}, {3.5561612364361963`*^9, 
   3.556161260844592*^9}, {3.5561613624294024`*^9, 3.5561613999685497`*^9}, {
   3.5561712118947597`*^9, 3.5561712353090987`*^9}, {3.5605627231492167`*^9, 
   3.560562726469638*^9}, {3.604635070945553*^9, 3.604635083183897*^9}, {
   3.6046351225660973`*^9, 3.604635143038494*^9}, {3.604636370767803*^9, 
   3.604636415109249*^9}, {3.604636451021336*^9, 3.604636453916304*^9}, {
   3.605241794508589*^9, 3.605241801633068*^9}, {3.605241956111411*^9, 
   3.605241960053857*^9}, {3.605242007380479*^9, 3.6052420248882017`*^9}, {
   3.605242331691985*^9, 3.605242337829556*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 1, $CellContext`\[Omega]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 1}, 0, 10}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.001}}, Typeset`size$$ = {
    433., {31.34375, 36.65625}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`P$2267$$ = 
    0, $CellContext`\[Omega]$2268$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 1, $CellContext`\[Omega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$2267$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$2268$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      TableForm[{"state evolution formula", 
         FullSimplify[
          Chop[
           NumberForm[
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 4]]], 
         FullSimplify[
          Chop[
           NumberForm[
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 4]]], 
         FullSimplify[
          Chop[
           NumberForm[
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 4]]]}], 
      "Specifications" :> {{{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.001, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{476., {88., 94.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.553316094986801*^9, {3.553316358042879*^9, 3.553316380359095*^9}, 
   3.553318655922665*^9, {3.5533195254513187`*^9, 3.553319530940795*^9}, {
   3.5545160090224514`*^9, 3.554516020237093*^9}, {3.5545170010471926`*^9, 
   3.5545170260506225`*^9}, 3.554517116690807*^9, 3.554533237708876*^9, {
   3.554534065815241*^9, 3.5545340677373514`*^9}, {3.554551408948468*^9, 
   3.5545514307627163`*^9}, 3.5545515524636774`*^9, {3.554551783705903*^9, 
   3.554551788421173*^9}, {3.555123441586863*^9, 3.555123445367096*^9}, {
   3.5561604949647865`*^9, 3.556160500539105*^9}, 3.5561606185978575`*^9, {
   3.556160947431666*^9, 3.5561610025338173`*^9}, 3.5561612656488667`*^9, 
   3.556161367186674*^9, 3.556161412970293*^9, 3.5561644121948385`*^9, {
   3.556164824212405*^9, 3.5561648490518255`*^9}, 3.556167051685809*^9, 
   3.55616730486629*^9, 3.5561697673951387`*^9, {3.5561712152859535`*^9, 
   3.556171236507167*^9}, 3.5561712712451544`*^9, 3.5561713711958714`*^9, 
   3.556171854996543*^9, 3.556171919686243*^9, 3.556171978923631*^9, 
   3.55617215094347*^9, 3.55617218976169*^9, 3.556172249109085*^9, 
   3.556172895927081*^9, 3.5561737045673323`*^9, 3.556177911843975*^9, 
   3.5595160773257203`*^9, 3.5605624031172123`*^9, 3.560587406625084*^9, 
   3.604632888493094*^9, 3.6046329761268673`*^9, 3.604635144733157*^9, 
   3.604636251941675*^9, {3.6046363738307323`*^9, 3.604636378795895*^9}, {
   3.604636408857996*^9, 3.604636415922941*^9}, 3.604636454784836*^9, 
   3.604637110780884*^9, 3.6052375351187143`*^9, 3.6052418042658033`*^9, {
   3.605241943813452*^9, 3.605241960828144*^9}, 3.6052420256354637`*^9, 
   3.605242338523197*^9, 3.605243616963736*^9, 3.605508917679615*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Numerical", "Section",
 CellChangeTimes->{{3.5279150503253317`*^9, 3.527915063838367*^9}, 
   3.532524672442525*^9, {3.5325254464037933`*^9, 3.532525453814217*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Normal", " ", "mode", " ", "Decay", " ", "Rate"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"TableForm", "[", "\[IndentingNewLine]", 
     RowBox[{"Transpose", "[", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Round", "[", 
         RowBox[{
          RowBox[{"NormTo1", "[", 
           RowBox[{"Flatten", "[", 
            RowBox[{"NullSpace", "[", 
             RowBox[{"R", "[", 
              RowBox[{"P", ",", "\[Omega]"}], "]"}], "]"}], "]"}], "]"}], ",",
           "0.0001"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(N\), \(S\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(G\)]\)\>\""}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Round", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
           "InitailState"}], ",", "0.00001"}], "]"}]}], "}"}], "]"}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"t", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\[Omega]", ",", "0"}], "}"}], ",", "0", ",", "0.05", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.5279153081544437`*^9, 3.5279153856571608`*^9}, {
   3.5279157740460253`*^9, 3.527915782767555*^9}, {3.5279158276888638`*^9, 
   3.527915828054329*^9}, {3.528081510973756*^9, 3.528081557812776*^9}, {
   3.5285324532936325`*^9, 3.5285324575578766`*^9}, {3.528610500956833*^9, 
   3.528610500977811*^9}, {3.528611999539606*^9, 3.528611999566641*^9}, {
   3.528627478025985*^9, 3.5286276205989532`*^9}, {3.528627854594067*^9, 
   3.528627941733876*^9}, {3.5286813492070007`*^9, 3.5286813540465183`*^9}, {
   3.5286815031222677`*^9, 3.528681503156769*^9}, {3.532158338740382*^9, 
   3.532158356578746*^9}, {3.532232781940633*^9, 3.532232792507758*^9}, {
   3.5322331356973343`*^9, 3.5322333404952097`*^9}, {3.53252429838113*^9, 
   3.5325244631115522`*^9}, 3.532524672467527*^9, {3.5325248870317993`*^9, 
   3.5325249035637445`*^9}, {3.5325249345895195`*^9, 3.532524935841591*^9}, {
   3.5325249819222264`*^9, 3.5325250310340357`*^9}, {3.5325250734654627`*^9, 
   3.532525077370686*^9}, {3.5325251262974844`*^9, 3.532525184375806*^9}, {
   3.532527652450972*^9, 3.5325276537850485`*^9}, {3.5561611235897417`*^9, 
   3.5561611282190065`*^9}, {3.604635153457818*^9, 3.6046351671986437`*^9}, {
   3.604635222661049*^9, 3.604635252260442*^9}, {3.6052423715626593`*^9, 
   3.6052425406717*^9}, {3.6052426225951977`*^9, 3.6052426511888103`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 1, $CellContext`t$$ = 
    62.5, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`t$$], 50}, 0, 300}, {{
       Hold[$CellContext`\[Omega]$$], 0}, 0, 0.05}}, Typeset`size$$ = {
    274., {35., 40.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`P$18020$$ = 
    0, $CellContext`t$18021$$ = 0, $CellContext`\[Omega]$18022$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 1, $CellContext`t$$ = 
        50, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$18020$$, 0], 
        Hold[$CellContext`t$$, $CellContext`t$18021$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$18022$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[
        Transpose[{
          Round[
           $CellContext`NormTo1[
            Flatten[
             NullSpace[
              $CellContext`R[$CellContext`P$$, $CellContext`\[Omega]$$]]]], 
           0.0001], {
          "\!\(\*SubscriptBox[\(N\), \(S\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(0\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(-1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(G\)]\)"}, 
          Round[
           Dot[
            
            MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 0.00001]}]], 
      "Specifications" :> {{{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`t$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`\[Omega]$$, 0}, 0, 0.05, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{319., {104., 109.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.6052424678564577`*^9, 3.605242541227289*^9}, {
  3.605242630408078*^9, 3.605242651960691*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Relative", " ", "Triplet", " ", "state", " ", "population"}], " ", 
  "*)"}]], "Input",
 CellChangeTimes->{{3.527915645369335*^9, 3.527915679790099*^9}, {
   3.5285326091205454`*^9, 3.528532610999653*^9}, 3.532524672491528*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"Transpose", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "\"\< \>\"", ",", "\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\)\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\""}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Join", "[", 
        RowBox[{
         RowBox[{"{", "\"\<Rel Pop.\>\"", "}"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"NumberForm", "[", " ", 
            RowBox[{
             FractionBox[
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{"t", " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 "InitailState"}], ")"}], "[", 
               RowBox[{"[", "i", "]"}], "]"}], 
              RowBox[{"TripletSum", ".", 
               RowBox[{"MatrixExp", "[", 
                RowBox[{"t", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
               "InitailState"}]], ",", "3"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "2", ",", "4"}], "}"}]}], "]"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
        "\"\< \>\"", ",", " ", 
         "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)/\!\(\*SubscriptBox[\(N\), \
\(1\)]\)\>\"", ",", 
         "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)/\!\(\*SubscriptBox[\(N\), \
\(-1\)]\)\>\"", ",", "\"\<Total Pop.\>\""}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Join", "[", 
        RowBox[{
         RowBox[{"{", "\"\<Pop. Ratio\>\"", "}"}], ",", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"NumberForm", "[", 
            RowBox[{
             FractionBox[
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{"t", " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 "InitailState"}], ")"}], "[", 
               RowBox[{"[", "3", "]"}], "]"}], 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{"t", " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 "InitailState"}], ")"}], "[", 
               RowBox[{"[", "i", "]"}], "]"}]], ",", "3"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "2", ",", "4", ",", "2"}], "}"}]}], "]"}], ",", 
         
         RowBox[{"{", 
          RowBox[{"TripletSum", ".", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             "InitailState"}], ")"}]}], "}"}]}], "]"}]}], "}"}], "]"}], "//", 
    "TableForm"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Omega]", ",", "0"}], "}"}], ",", "0", ",", "0.05", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.527675841852358*^9, 3.5276758581771226`*^9}, {
   3.527914549099181*^9, 3.52791455422643*^9}, {3.527917529706612*^9, 
   3.52791753151722*^9}, {3.528083005643508*^9, 3.528083012583109*^9}, {
   3.528084103116766*^9, 3.528084135561075*^9}, {3.5280842388259172`*^9, 
   3.528084282775198*^9}, {3.528532488650655*^9, 3.528532489737717*^9}, {
   3.5286105011083517`*^9, 3.528610501350251*^9}, 3.5286105442132998`*^9, {
   3.5286107785587873`*^9, 3.528610793993833*^9}, {3.528611999746715*^9, 
   3.528611999980047*^9}, 3.5286123975326023`*^9, {3.5286241270952034`*^9, 
   3.5286241941522017`*^9}, {3.5286242769517655`*^9, 
   3.5286242844679937`*^9}, {3.5286270963322363`*^9, 3.528627192718687*^9}, {
   3.5286272295030184`*^9, 3.5286273500217047`*^9}, {3.5286277678879795`*^9, 
   3.5286278449100533`*^9}, {3.5286279639530334`*^9, 3.528628001647483*^9}, {
   3.5286815032020063`*^9, 3.528681503238963*^9}, {3.528682541113613*^9, 
   3.528682551801323*^9}, {3.532158346768848*^9, 3.5321583792146*^9}, {
   3.532232832847389*^9, 3.5322328744627943`*^9}, {3.532233078889883*^9, 
   3.532233121276425*^9}, 3.5325246724935284`*^9, {3.5325255198569946`*^9, 
   3.5325257091428213`*^9}, {3.5533162238209047`*^9, 3.55331623763605*^9}, {
   3.554551743349595*^9, 3.554551769938116*^9}, 3.5545518286384735`*^9, {
   3.5561609152098227`*^9, 3.556160915428835*^9}, {3.556164432828019*^9, 
   3.5561644347041264`*^9}, {3.604633053108653*^9, 3.6046330555990467`*^9}, {
   3.605242698310809*^9, 3.605242818880088*^9}, {3.6052428715630913`*^9, 
   3.6052429241913137`*^9}, {3.6052429544834347`*^9, 3.605243049069468*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 1, $CellContext`t$$ = 
    142.5, $CellContext`\[Omega]$$ = 0., Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`t$$], 50}, 0, 300}, {{
       Hold[$CellContext`\[Omega]$$], 0}, 0, 0.05}}, Typeset`size$$ = {
    371., {27., 32.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`P$21012$$ = 
    0, $CellContext`t$21013$$ = 0, $CellContext`\[Omega]$21014$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 1, $CellContext`t$$ = 
        50, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$21012$$, 0], 
        Hold[$CellContext`t$$, $CellContext`t$21013$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$21014$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[
        Transpose[{{
          " ", "\!\(\*SubscriptBox[\(N\), \(1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(0\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(-1\)]\)"}, 
          Join[{"Rel Pop."}, 
           Table[
            NumberForm[Part[
               Dot[
                
                MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], $CellContext`i]/
             Dot[$CellContext`TripletSum, 
              
              MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], {$CellContext`i, 2,
              4}]], {
          " ", "\!\(\*SubscriptBox[\(N\), \(0\)]\)/\!\(\*SubscriptBox[\(N\), \
\(1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(0\)]\)/\!\(\*SubscriptBox[\(N\), \(-1\
\)]\)", "Total Pop."}, 
          Join[{"Pop. Ratio"}, 
           Table[
            NumberForm[Part[
               Dot[
                
                MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3]/Part[
              Dot[
               
               MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], $CellContext`i], 
             3], {$CellContext`i, 2, 4, 2}], {
            Dot[$CellContext`TripletSum, 
             Dot[
              
              MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]]}]}]], 
      "Specifications" :> {{{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`t$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`\[Omega]$$, 0}, 0, 0.05, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{416., {96., 101.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.532525221139909*^9, 3.532525512167555*^9, {3.5325256484153476`*^9, 
   3.5325256678824615`*^9}, 3.5325257110059276`*^9, 3.5525319863863187`*^9, 
   3.552900534217393*^9, 3.5533161891457644`*^9, 3.553316238157957*^9, 
   3.5533163876535997`*^9, 3.5545515658804445`*^9, 3.5545518302735667`*^9, 
   3.556160865963006*^9, 3.5561609163988905`*^9, 3.556161059561079*^9, 
   3.556161316972802*^9, {3.556164421985399*^9, 3.5561644355781765`*^9}, 
   3.5561649169387083`*^9, 3.604633056690517*^9, 3.60524267176785*^9, 
   3.605242747565033*^9, {3.6052428648065767`*^9, 3.6052428748838778`*^9}, 
   3.6052429671566057`*^9, {3.605243012320134*^9, 3.60524304993407*^9}}]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Graphical", "Section",
 CellChangeTimes->{{3.5325263572378902`*^9, 3.5325263698056087`*^9}}],

Cell[CellGroupData[{

Cell["Absolute population of Triplet state", "Subsection",
 CellChangeTimes->{{3.528085634496533*^9, 3.528085642268388*^9}, 
   3.5325246725175295`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"MatrixExp", "[", 
           RowBox[{"t", " ", 
            RowBox[{"R", "[", 
             RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
          "InitailState"}], ")"}], "[", 
        RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"MatrixExp", "[", 
           RowBox[{"t", " ", 
            RowBox[{"R", "[", 
             RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
          "InitailState"}], ")"}], "[", 
        RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"MatrixExp", "[", 
           RowBox[{"t", " ", 
            RowBox[{"R", "[", 
             RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
          "InitailState"}], ")"}], "[", 
        RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"TripletDiff", ".", 
        RowBox[{"MatrixExp", "[", 
         RowBox[{"t", " ", 
          RowBox[{"R", "[", 
           RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
        "InitailState"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "150"}], "}"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Red", ",", "Green", ",", "Blue", ",", "Orange"}], "}"}]}], 
     ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "All"}], "}"}]}], ",", 
     RowBox[{"Epilog", "\[Rule]", " ", 
      RowBox[{"{", 
       RowBox[{"Red", ",", 
        RowBox[{"Text", "[", 
         RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
          RowBox[{"{", 
           RowBox[{"60", ",", "0.15"}], " ", "}"}]}], "]"}], ",", 
        RowBox[{"Text", "[", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\) and \
\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
          RowBox[{"{", 
           RowBox[{"100", ",", "0.1"}], "}"}]}], "]"}], ",", 
        RowBox[{"Text", "[", 
         RowBox[{
         "\"\<\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
          RowBox[{"{", 
           RowBox[{"42", ",", "0.1"}], "}"}]}], "]"}]}], "}"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"GridLines", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"40", "i"}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "0", ",", "10"}], "}"}]}], "]"}], ",", 
        "Automatic"}], "}"}]}], ",", "\[IndentingNewLine]", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\< Population\>\""}], "}"}]}],
      ",", "\[IndentingNewLine]", 
     RowBox[{"AspectRatio", "\[Rule]", "0.5"}], ",", " ", 
     RowBox[{"ImageSize", "\[Rule]", "500"}]}], "\[IndentingNewLine]", "]"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Omega]", ",", "0"}], "}"}], ",", "0", ",", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.528625440254594*^9, 3.5286254556696506`*^9}, 
   3.5286269398867173`*^9, {3.528626969886927*^9, 3.5286269782790275`*^9}, {
   3.5286815033823137`*^9, 3.528681503391528*^9}, {3.5286826829325733`*^9, 
   3.528682704802197*^9}, 3.528687891101067*^9, {3.5286881612635593`*^9, 
   3.528688165771367*^9}, {3.530936520815999*^9, 3.530936520959346*^9}, {
   3.5309368485560427`*^9, 3.53093684873097*^9}, {3.5309369020821123`*^9, 
   3.530936904013486*^9}, {3.530937027830245*^9, 3.530937028047958*^9}, {
   3.530937191873089*^9, 3.530937203944119*^9}, {3.532158410443554*^9, 
   3.532158410695383*^9}, {3.532232932105302*^9, 3.532232952237568*^9}, 
   3.5325246725195293`*^9, {3.53252686355685*^9, 3.5325269056412573`*^9}, {
   3.532526950578827*^9, 3.532526992393219*^9}, 3.532527070014659*^9, {
   3.5325274397188044`*^9, 3.5325274430359945`*^9}, {3.5325699156798058`*^9, 
   3.5325699464301453`*^9}, {3.5325700891228204`*^9, 
   3.5325700949750977`*^9}, {3.532570413295974*^9, 3.5325704150460567`*^9}, {
   3.5325704451696014`*^9, 3.5325704521879525`*^9}, 3.5325705083508515`*^9, {
   3.5326040357339363`*^9, 3.532604056279395*^9}, {3.5326054867676277`*^9, 
   3.5326054927424383`*^9}, {3.55253205161405*^9, 3.552532116974788*^9}, {
   3.5525321810874553`*^9, 3.5525321993635006`*^9}, {3.5525322627181244`*^9, 
   3.5525324917062216`*^9}, {3.5529010758313713`*^9, 3.552901099460723*^9}, {
   3.553316253375749*^9, 3.553316254839596*^9}, {3.553318741178832*^9, 
   3.553318765088592*^9}, {3.5545332070131207`*^9, 3.5545332325735826`*^9}, 
   3.5545340121151695`*^9, 3.5561672451978774`*^9, {3.556167325426466*^9, 
   3.5561673266375356`*^9}, {3.5561731534038076`*^9, 
   3.5561731706277924`*^9}, {3.5561764147463455`*^9, 
   3.5561764396037674`*^9}, {3.5605630997396584`*^9, 3.56056312168781*^9}, {
   3.60463529315758*^9, 3.6046353094286203`*^9}, {3.6046357760755377`*^9, 
   3.604635781553959*^9}, 3.605238435322535*^9, {3.6052428200794783`*^9, 
   3.605242821698867*^9}, {3.605243102725894*^9, 3.6052431152186747`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 1, $CellContext`\[Omega]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`\[Omega]$$], 0}, 0, 0.01}}, Typeset`size$$ = {
    500., {129., 133.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`P$25250$$ = 
    0, $CellContext`\[Omega]$25251$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 1, $CellContext`\[Omega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$25250$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$25251$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Part[
          Dot[
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 
         Part[
          Dot[
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 
         Part[
          Dot[
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 
         Dot[$CellContext`TripletDiff, 
          
          MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]}, {$CellContext`t, 0, 
         150}, PlotStyle -> {Red, Green, Blue, Orange}, PlotRange -> {0, All},
         Epilog -> {Red, 
          Text["\!\(\*SubscriptBox[\(N\), \(0\)]\)", {60, 0.15}], 
          Text[
          "\!\(\*SubscriptBox[\(N\), \(1\)]\) and \!\(\*SubscriptBox[\(N\), \
\(-1\)]\)", {100, 0.1}], 
          Text[
          "\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)", {42, 0.1}]}, GridLines -> {
          Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}, 
        Frame -> True, FrameLabel -> {"time [\[Mu]s]", " Population"}, 
        AspectRatio -> 0.5, ImageSize -> 500], 
      "Specifications" :> {{{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`\[Omega]$$, 0}, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {185., 191.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5525322002775526`*^9, {3.5525322576428337`*^9, 3.5525322880125713`*^9}, {
   3.5525323486110373`*^9, 3.5525323818049355`*^9}, 3.5525324184550323`*^9, {
   3.5525324571062427`*^9, 3.552532492638275*^9}, 3.5529001788420663`*^9, {
   3.552901095092473*^9, 3.5529011008608027`*^9}, {3.553316243285777*^9, 
   3.553316255548221*^9}, 3.553316365882721*^9, 3.5533164020216084`*^9, {
   3.553318745868208*^9, 3.5533187655934057`*^9}, 3.55451701149179*^9, 
   3.5545170444816766`*^9, 3.554517122806156*^9, {3.5545332439672337`*^9, 
   3.5545332565529537`*^9}, 3.5545519053208594`*^9, 3.5561644482729025`*^9, 
   3.5561649296624365`*^9, 3.556167059510257*^9, 3.5561672468369713`*^9, {
   3.5561673159409237`*^9, 3.5561673280166144`*^9}, 3.5561697709393415`*^9, 
   3.5561723898301334`*^9, 3.5561728092091208`*^9, 3.556172899975312*^9, 
   3.5561730163299675`*^9, {3.556173164266429*^9, 3.5561731713398333`*^9}, 
   3.556173255862668*^9, 3.5561734775063453`*^9, 3.5561737091355934`*^9, 
   3.5561764407988358`*^9, 3.5561779250047274`*^9, 3.560562847125512*^9, {
   3.56056310255578*^9, 3.560563123122388*^9}, 3.60463306997499*^9, 
   3.604635309973929*^9, 3.604635782130314*^9, {3.605243113196669*^9, 
   3.605243115696751*^9}, 3.605243618967211*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"Plot", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"PP", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
           "InitailState"}], ")"}], "[", 
         RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"PP", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
           "InitailState"}], ")"}], "[", 
         RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"PP", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
           "InitailState"}], ")"}], "[", 
         RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"TripletDiff", ".", 
         RowBox[{"MatrixExp", "[", 
          RowBox[{"t", " ", 
           RowBox[{"R", "[", 
            RowBox[{"PP", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
         "InitailState"}]}], "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"PP", ",", "0", ",", "8"}], "}"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Red", ",", "Green", ",", "Blue", ",", "Orange"}], "}"}]}], 
      ",", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"0", ",", "All"}], "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"ImageSize", "\[Rule]", "400"}], ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<Power\>\"", ",", "\"\< Population\>\""}], "}"}]}], ",", 
      RowBox[{"AspectRatio", "\[Rule]", "0.5"}]}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"t", ",", "50"}], "}"}], ",", "0", ",", "140", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], "]"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.5286246973272486`*^9, 3.5286248228940325`*^9}, {
   3.5286248565643616`*^9, 3.528624906317754*^9}, {3.5286264780119*^9, 
   3.5286266505351305`*^9}, {3.5286267098828115`*^9, 
   3.5286267297559214`*^9}, {3.528681503449511*^9, 3.528681503493166*^9}, {
   3.528688061093275*^9, 3.52868812336874*^9}, 3.529124340954063*^9, {
   3.5315343512436037`*^9, 3.5315343740848703`*^9}, {3.532233346691353*^9, 
   3.532233436694716*^9}, 3.532524672573533*^9, {3.532526849238031*^9, 
   3.5325268496010513`*^9}, {3.5325270525376587`*^9, 
   3.5325270560288587`*^9}, {3.5545174889450984`*^9, 3.554517525182171*^9}, {
   3.5545333060247836`*^9, 3.5545333157723413`*^9}, 3.554534013275236*^9, {
   3.5561670790393734`*^9, 3.55616708001643*^9}, 3.556167397620596*^9, {
   3.5561727754621906`*^9, 3.5561727766632595`*^9}, {3.556177216075179*^9, 
   3.556177240696587*^9}, {3.604635476570498*^9, 3.6046355000256767`*^9}, 
   3.6052384460947657`*^9, {3.605242834861795*^9, 3.605242838767622*^9}, {
   3.6052434556379757`*^9, 3.605243468041671*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`t$$ = 50, $CellContext`\[Omega]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`t$$], 50}, 0, 140}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    400., {102., 106.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`t$25308$$ = 
    0, $CellContext`\[Omega]$25309$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`t$$ = 50, $CellContext`\[Omega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$25308$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$25309$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Part[
          Dot[
           
           MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`PP, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 
         Part[
          Dot[
           
           MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`PP, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 
         Part[
          Dot[
           
           MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`PP, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 
         Dot[$CellContext`TripletDiff, 
          
          MatrixExp[$CellContext`t$$ $CellContext`R[$CellContext`PP, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]}, {$CellContext`PP, 0, 
         8}, PlotStyle -> {Red, Green, Blue, Orange}, PlotRange -> {0, All}, 
        ImageSize -> 400, AxesLabel -> {"Power", " Population"}, AspectRatio -> 
        0.5], 
      "Specifications" :> {{{$CellContext`t$$, 50}, 0, 140, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{443., {158., 164.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.532526839324464*^9, 3.5325268501030807`*^9}, 
   3.5325270575349445`*^9, 3.5325698915057383`*^9, 3.5325703405982285`*^9, 
   3.5326063212452936`*^9, 3.553316275821672*^9, 3.554516947297118*^9, 
   3.554517019924272*^9, 3.55451752621323*^9, 3.5545333164803815`*^9, 
   3.5545519094770975`*^9, 3.5561644807537603`*^9, 3.556164937709897*^9, {
   3.5561670626524363`*^9, 3.5561670808324766`*^9}, 3.556167399206686*^9, 
   3.5561697775627203`*^9, 3.556169912951464*^9, 3.556172393072319*^9, 
   3.556172777830326*^9, 3.556172814652432*^9, 3.5561729041235495`*^9, 
   3.5561730212682495`*^9, 3.5561732603979273`*^9, 3.5561733927885*^9, 
   3.5561734901880703`*^9, 3.556173718828148*^9, {3.556177217153241*^9, 
   3.556177241697644*^9}, 3.60463310500072*^9, 3.604635500655336*^9, {
   3.6052434615030746`*^9, 3.605243469475388*^9}, 3.605243621672022*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"the", " ", "1", " ", "cycle", " ", "effect"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Manipulate", "[", 
    RowBox[{
     RowBox[{"Plot", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{"t", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"t", "+", "tp"}], ")"}], " ", 
                RowBox[{"R", "[", 
                 RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              RowBox[{"MatrixExp", "[", 
               RowBox[{"tp", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{"t", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "2", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"t", "-", "tp"}], ")"}], " ", 
                RowBox[{"R", "[", 
                 RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              RowBox[{"MatrixExp", "[", 
               RowBox[{"tp", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{"t", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "3", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"t", "-", "tp"}], ")"}], " ", 
                RowBox[{"R", "[", 
                 RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              RowBox[{"MatrixExp", "[", 
               RowBox[{"tp", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "3", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{"t", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "4", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"t", "-", "tp"}], ")"}], " ", 
                RowBox[{"R", "[", 
                 RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              RowBox[{"MatrixExp", "[", 
               RowBox[{"tp", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "4", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{"t", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "5", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"MatrixExp", "[", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"t", "-", "tp"}], ")"}], " ", 
                RowBox[{"R", "[", 
                 RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
              RowBox[{"MatrixExp", "[", 
               RowBox[{"tp", " ", 
                RowBox[{"R", "[", 
                 RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
              "InitailState"}], ")"}], "[", 
            RowBox[{"[", "5", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"t", "<", "tp"}], ",", 
           RowBox[{"TripletDiff", ".", 
            RowBox[{"MatrixExp", "[", 
             RowBox[{"t", " ", 
              RowBox[{"R", "[", 
               RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
            "InitailState"}], ",", 
           RowBox[{"TripletDiff", ".", 
            RowBox[{"MatrixExp", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"t", "-", "tp"}], ")"}], " ", 
              RowBox[{"R", "[", 
               RowBox[{"0", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
            RowBox[{"MatrixExp", "[", 
             RowBox[{"tp", " ", 
              RowBox[{"R", "[", 
               RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
            "InitailState"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", "0", ",", "200"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
         "Red", ",", " ", "Orange", ",", " ", "Green", ",", " ", "Blue", ",", 
          " ", "Black", ",", "Purple"}], "}"}]}], ",", 
       RowBox[{"AxesLabel", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\< Population\>\""}], 
         "}"}]}], ",", 
       RowBox[{"AspectRatio", "\[Rule]", "0.5"}], ",", 
       RowBox[{"ImageSize", "\[Rule]", "600"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "0.2"}], ",", "0.5"}], "}"}]}], ",", 
       RowBox[{"GridLines", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"40", "i"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "0", ",", "10"}], "}"}]}], "]"}], ",", 
          "Automatic"}], "}"}]}]}], "]"}], "\[IndentingNewLine]", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"P", ",", "10"}], "}"}], ",", "0", ",", "10", ",", 
       RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
     "\[IndentingNewLine]", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"tp", ",", "80"}], "}"}], ",", "0", ",", "200", ",", 
       RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
     "\[IndentingNewLine]", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"\[Omega]", ",", "0"}], "}"}], ",", "0", ",", "0.01", ",", 
       RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], "]"}],
    "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5291249348296337`*^9, 3.529124949220943*^9}, {
   3.5291250399896793`*^9, 3.529125078277874*^9}, {3.529125125257935*^9, 
   3.5291251654477177`*^9}, {3.529125258843238*^9, 3.529125418393435*^9}, {
   3.529125498604445*^9, 3.529125622693595*^9}, {3.529125658528481*^9, 
   3.529125737157723*^9}, {3.5291258104895353`*^9, 3.52912583334299*^9}, {
   3.529126484730942*^9, 3.5291264857039757`*^9}, {3.529126566175704*^9, 
   3.5291265738932467`*^9}, {3.529126941350016*^9, 3.529126946796818*^9}, {
   3.529127365099112*^9, 3.529127386925767*^9}, {3.5292132638180237`*^9, 
   3.529213326155805*^9}, {3.529213356891603*^9, 3.529213418829131*^9}, {
   3.5292134727295227`*^9, 3.529213478649144*^9}, {3.5305326238836317`*^9, 
   3.530532712768716*^9}, 3.530532836482792*^9, {3.532233474013633*^9, 
   3.532233620386601*^9}, {3.532234040173098*^9, 3.5322340573269577`*^9}, {
   3.532234181835668*^9, 3.532234184544423*^9}, 3.532524672677539*^9, {
   3.532527229698792*^9, 3.5325272403804026`*^9}, {3.5325274908517294`*^9, 
   3.5325275095778003`*^9}, {3.553316293319083*^9, 3.553316293700533*^9}, {
   3.554533360402894*^9, 3.5545333887325144`*^9}, {3.554534014673316*^9, 
   3.554534015475362*^9}, {3.5561650220367203`*^9, 3.5561650229377713`*^9}, {
   3.556171304426052*^9, 3.5561713051610937`*^9}, {3.556172920019459*^9, 
   3.556172920251472*^9}, {3.6046358343324537`*^9, 3.604635894005232*^9}, {
   3.604636154104556*^9, 3.604636154852931*^9}, {3.605238446944524*^9, 
   3.60523844786095*^9}, {3.6052428443990307`*^9, 3.60524284939427*^9}, {
   3.605243523493884*^9, 3.60524353224303*^9}, 3.605243571127049*^9, {
   3.605243647359055*^9, 3.605243649318487*^9}, {3.605244093063231*^9, 
   3.605244094731401*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`P$$ = 10, $CellContext`tp$$ = 
    80, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`P$$], 10}, 0, 10}, {{
       Hold[$CellContext`tp$$], 80}, 0, 200}, {{
       Hold[$CellContext`\[Omega]$$], 0}, 0, 0.01}}, Typeset`size$$ = {
    600., {146., 150.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`P$25440$$ = 
    0, $CellContext`tp$25441$$ = 0, $CellContext`\[Omega]$25442$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`P$$ = 10, $CellContext`tp$$ = 
        80, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`P$$, $CellContext`P$25440$$, 0], 
        Hold[$CellContext`tp$$, $CellContext`tp$25441$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$25442$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 1], 
          Part[
           Dot[
            
            MatrixExp[($CellContext`t + $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            
            MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 1]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 
          Part[
           Dot[
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            
            MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 
          Part[
           Dot[
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            
            MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 
          Part[
           Dot[
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            
            MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 5], 
          Part[
           Dot[
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            
            MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 5]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Dot[$CellContext`TripletDiff, 
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 
          Dot[$CellContext`TripletDiff, 
           
           MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
             0, $CellContext`\[Omega]$$]], 
           
           MatrixExp[$CellContext`tp$$ $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]]}, {$CellContext`t, 0, 
         200}, PlotStyle -> {Red, Orange, Green, Blue, Black, Purple}, 
        AxesLabel -> {"time [\[Mu]s]", " Population"}, AspectRatio -> 0.5, 
        ImageSize -> 600, PlotRange -> {-0.2, 0.5}, GridLines -> {
          Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}], 
      "Specifications" :> {{{$CellContext`P$$, 10}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`tp$$, 80}, 0, 200, Appearance -> 
         "Labeled"}, {{$CellContext`\[Omega]$$, 0}, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{643., {216., 222.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5325271665521803`*^9, {3.532527233210993*^9, 3.5325272425545273`*^9}, {
   3.532527494072913*^9, 3.5325275118869324`*^9}, 3.5326063294831085`*^9, 
   3.552530513630082*^9, {3.553316279027358*^9, 3.553316294684874*^9}, 
   3.5533164085411177`*^9, 3.554533397637024*^9, 3.556164950328618*^9, 
   3.5561650235328054`*^9, 3.556167339883293*^9, 3.5561699488105154`*^9, {
   3.55617129372044*^9, 3.5561713072642145`*^9}, {3.556172913807103*^9, 
   3.5561729214195385`*^9}, 3.5561732641051393`*^9, 3.556177933859234*^9, 
   3.604633118208537*^9, 3.604635835655599*^9, 3.60463590105469*^9, 
   3.604636156283881*^9, 3.605243533011407*^9, 3.605243572303502*^9, {
   3.605243623739484*^9, 3.605243650213171*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Simulation on Pulse cycle", "Section",
 CellChangeTimes->{{3.532525315426302*^9, 3.532525328181031*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Claim", " ", "the", " ", "function", " ", "electron", " ", 
     "polarization", " ", "at", " ", "n"}], "-", 
    RowBox[{"th", " ", "cycle"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "starting", " ", "population", " ", "of", " ", "each", " ", "pulse"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"\[Eta]", "[", 
     RowBox[{"n_", ",", "tp_", ",", "td_", ",", "P_", ",", "\[Omega]_"}], 
     "]"}], ":=", 
    RowBox[{
     RowBox[{
      RowBox[{"MatrixPower", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"MatrixExp", "[", 
          RowBox[{"td", " ", 
           RowBox[{"R", "[", 
            RowBox[{"0", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
         RowBox[{"MatrixExp", "[", 
          RowBox[{"tp", " ", 
           RowBox[{"R", "[", 
            RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}]}], ",", "n"}], 
       "]"}], ".", "InitailState"}], "//", "Chop"}]}], "\[IndentingNewLine]", 
   
   RowBox[{"(*", "  ", 
    RowBox[{
    "population", " ", "after", " ", "laser", " ", "pulse", " ", "of", " ", 
     "each", " ", "pulse"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Rho]", "[", 
     RowBox[{"n_", ",", "tp_", ",", "td_", ",", "P_", ",", "\[Omega]_"}], 
     "]"}], ":=", 
    RowBox[{
     RowBox[{"MatrixExp", "[", 
      RowBox[{"tp", " ", 
       RowBox[{"R", "[", 
        RowBox[{"P", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
     RowBox[{"\[Eta]", "[", 
      RowBox[{"n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
      "]"}]}]}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.529982759226515*^9, 3.529982777370398*^9}, {
   3.529982812873681*^9, 3.529982823488248*^9}, {3.529982898539344*^9, 
   3.529982950432014*^9}, {3.529983297788761*^9, 3.529983313970002*^9}, {
   3.5299834359229603`*^9, 3.529983552014244*^9}, {3.530343754722887*^9, 
   3.530343819442891*^9}, {3.530343854329644*^9, 3.530343956976527*^9}, 
   3.530344039472705*^9, {3.530344079955578*^9, 3.530344126037752*^9}, {
   3.530344327619296*^9, 3.530344335010981*^9}, {3.5303446500799503`*^9, 
   3.530344663662202*^9}, {3.530345321846568*^9, 3.5303453253487673`*^9}, 
   3.530345385200371*^9, {3.530345469079124*^9, 3.530345483303999*^9}, {
   3.530345632901387*^9, 3.530345633267045*^9}, {3.530345724511764*^9, 
   3.530345728178261*^9}, {3.5305328915749426`*^9, 3.530532892821014*^9}, {
   3.532233571851905*^9, 3.532233571856517*^9}, {3.532233650954441*^9, 
   3.5322336596641693`*^9}, {3.53223536830401*^9, 3.532235379510455*^9}, 
   3.532524672816547*^9, {3.556165132339029*^9, 3.556165188204224*^9}, {
   3.604635528453232*^9, 3.6046355503086243`*^9}, 3.605242852984693*^9, {
   3.60524374944744*^9, 3.6052437532793016`*^9}, {3.6052438074087133`*^9, 
   3.6052438086333857`*^9}, {3.6052454518527937`*^9, 3.605245453257468*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "Numberical", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"TableForm", "[", 
     RowBox[{"Transpose", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\"\<duty=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{
             RowBox[{"100", 
              FractionBox["tp", 
               RowBox[{"tp", "+", "td"}]]}], "//", "N"}], "]"}], "<>", 
           "\"\<%\>\""}], ",", 
          RowBox[{"\"\<freq.=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{
             FractionBox["1000", 
              RowBox[{"tp", "+", "td"}]], "//", "N"}], "]"}], "<>", 
           "\"\<kHz\>\""}], ",", "\"\<\>\"", ",", "\"\<\>\"", ",", "\"\<\>\"",
           ",", "\"\<\>\""}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\>\"", ",", "\"\<\!\(\*SubscriptBox[\(N\), \(S1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(G0\)]\)\>\""}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"{", "\"\<starting pop.\>\"", "}"}], ",", 
          RowBox[{"\[Eta]", "[", 
           RowBox[{"n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], 
           " ", "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"{", "\"\<Laser-off pop\>\"", "}"}], ",", 
          RowBox[{"\[Rho]", "[", 
           RowBox[{
           "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
           "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], "]"}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n", ",", "15"}], "}"}], ",", "0", ",", "50", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tp", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"td", ",", "260"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.5299844911770563`*^9, 3.52998456936427*^9}, {
   3.529984608351158*^9, 3.529984609235268*^9}, {3.530343960826269*^9, 
   3.530343973307991*^9}, {3.530344427001458*^9, 3.530344455062717*^9}, {
   3.530345486728031*^9, 3.530345517092025*^9}, {3.5303456558986883`*^9, 
   3.5303456561043158`*^9}, {3.530534131364855*^9, 3.530534157564353*^9}, {
   3.532233571858458*^9, 3.532233571859908*^9}, 3.53223366599349*^9, {
   3.53223575710362*^9, 3.5322357572841587`*^9}, 3.532524672818547*^9, {
   3.5561651957456555`*^9, 3.5561651993368607`*^9}, {3.604635554416181*^9, 
   3.604635561129341*^9}, {3.605243838397852*^9, 3.605243984341845*^9}, {
   3.6052445459197493`*^9, 3.605244847262867*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 15, $CellContext`P$$ = 
    1, $CellContext`td$$ = 260, $CellContext`tp$$ = 
    80, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 15}, 0, 50, 1}, {{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`tp$$], 50}, 0, 300}, {{
       Hold[$CellContext`td$$], 260}, 0, 300}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    568., {44., 49.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$33544$$ = 
    0, $CellContext`P$33545$$ = 0, $CellContext`tp$33546$$ = 
    0, $CellContext`td$33547$$ = 0, $CellContext`\[Omega]$33548$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 15, $CellContext`P$$ = 
        1, $CellContext`td$$ = 260, $CellContext`tp$$ = 
        50, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$33544$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$33545$$, 0], 
        Hold[$CellContext`tp$$, $CellContext`tp$33546$$, 0], 
        Hold[$CellContext`td$$, $CellContext`td$33547$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$33548$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[
        Transpose[{{
           StringJoin["duty=", 
            ToString[
             N[
             100 ($CellContext`tp$$/($CellContext`tp$$ + \
$CellContext`td$$))]], "%"], 
           StringJoin["freq.=", 
            ToString[
             N[1000/($CellContext`tp$$ + $CellContext`td$$)]], "kHz"], "", "",
            "", ""}, {
          "", "\!\(\*SubscriptBox[\(N\), \(S1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(0\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(-1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(G0\)]\)"}, 
          Join[{"starting pop."}, 
           $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 
          Join[{"Laser-off pop"}, 
           $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]]}]], 
      "Specifications" :> {{{$CellContext`n$$, 15}, 0, 50, 1, Appearance -> 
         "Labeled"}, {{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`tp$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`td$$, 260}, 0, 300, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{613., {151., 156.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.605244604760722*^9, 3.605244795198015*^9}, {
   3.6052448364298267`*^9, 3.605244847917119*^9}, 3.605245455775137*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "Numberical", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"TableForm", "[", 
     RowBox[{"Transpose", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"\"\<tp=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            FractionBox[
             RowBox[{"\[Alpha]", " ", "1000"}], "f"], "]"}], "<>", 
           "\"\<\[Mu]s\>\""}], ",", 
          RowBox[{"\"\<td=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "\[Alpha]"}], ")"}], 
             FractionBox["1000", "f"]}], "]"}], "<>", "\"\<\[Mu]s\>\""}], ",", 
          RowBox[{"\"\<period=\>\"", "<>", 
           RowBox[{"ToString", "[", 
            FractionBox["1000", "f"], "]"}], "<>", "\"\<\[Mu]s\>\""}], ",", 
          "\"\<\>\"", ",", "\"\<\>\"", ",", "\"\<\>\""}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\>\"", ",", "\"\<\!\(\*SubscriptBox[\(N\), \(S1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
          "\"\<\!\(\*SubscriptBox[\(N\), \(G0\)]\)\>\""}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"{", "\"\<starting pop.\>\"", "}"}], ",", 
          RowBox[{"\[Eta]", "[", 
           RowBox[{"n", ",", 
            FractionBox[
             RowBox[{"\[Alpha]", " ", "1000"}], "f"], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "\[Alpha]"}], ")"}], 
             FractionBox["1000", "f"]}], ",", "P", " ", ",", "\[Omega]"}], 
           "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Join", "[", 
         RowBox[{
          RowBox[{"{", "\"\<Laser-off pop\>\"", "}"}], ",", 
          RowBox[{"\[Rho]", "[", 
           RowBox[{"n", ",", 
            FractionBox[
             RowBox[{"\[Alpha]", " ", "1000"}], "f"], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "\[Alpha]"}], ")"}], 
             FractionBox["1000", "f"]}], ",", "P", ",", "\[Omega]"}], " ", 
           "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], "]"}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n", ",", "15"}], "}"}], ",", "0", ",", "20", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "0.2", ",", "\"\<Duty\>\""}], "}"}], ",", "0",
       ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"f", ",", "1", ",", "\"\<Freq. [kHz]\>\""}], "}"}], ",", "0", 
      ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.5299844911770563`*^9, 3.52998456936427*^9}, {
   3.529984608351158*^9, 3.529984609235268*^9}, {3.530343960826269*^9, 
   3.530343973307991*^9}, {3.530344427001458*^9, 3.530344455062717*^9}, {
   3.530345486728031*^9, 3.530345517092025*^9}, {3.5303456558986883`*^9, 
   3.5303456561043158`*^9}, {3.530534131364855*^9, 3.530534157564353*^9}, {
   3.53053475597558*^9, 3.5305348018332033`*^9}, {3.5322335718622103`*^9, 
   3.5322335718639174`*^9}, 3.532233673721877*^9, 3.532524672981556*^9, {
   3.556165218090934*^9, 3.55616522221717*^9}, {3.604635571250505*^9, 
   3.60463558029745*^9}, {3.605244016991808*^9, 3.605244079318166*^9}, {
   3.6052443777476797`*^9, 3.605244536035437*^9}, {3.6052454407911987`*^9, 
   3.605245461152957*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`f$$ = 1, $CellContext`n$$ = 
    15, $CellContext`P$$ = 1, $CellContext`\[Alpha]$$ = 
    0.2, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 15}, 0, 20, 1}, {{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`\[Alpha]$$], 0.2, "Duty"}, 0, 1}, {{
       Hold[$CellContext`f$$], 1, "Freq. [kHz]"}, 0, 10}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    537., {45., 50.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$33603$$ = 
    0, $CellContext`P$33604$$ = 0, $CellContext`\[Alpha]$33605$$ = 
    0, $CellContext`f$33606$$ = 0, $CellContext`\[Omega]$33607$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`f$$ = 1, $CellContext`n$$ = 
        15, $CellContext`P$$ = 1, $CellContext`\[Alpha]$$ = 
        0.2, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$33603$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$33604$$, 0], 
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$33605$$, 0], 
        Hold[$CellContext`f$$, $CellContext`f$33606$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$33607$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> TableForm[
        Transpose[{{
           StringJoin["tp=", 
            ToString[$CellContext`\[Alpha]$$ 1000/$CellContext`f$$], 
            "\[Mu]s"], 
           StringJoin["td=", 
            ToString[(1 - $CellContext`\[Alpha]$$) (1000/$CellContext`f$$)], 
            "\[Mu]s"], 
           StringJoin["period=", 
            ToString[1000/$CellContext`f$$], "\[Mu]s"], "", "", ""}, {
          "", "\!\(\*SubscriptBox[\(N\), \(S1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(0\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(-1\)]\)", 
           "\!\(\*SubscriptBox[\(N\), \(G0\)]\)"}, 
          Join[{"starting pop."}, 
           $CellContext`\[Eta][$CellContext`n$$, $CellContext`\[Alpha]$$ 
            1000/$CellContext`f$$, (1 - $CellContext`\[Alpha]$$) (
             1000/$CellContext`f$$), $CellContext`P$$, \
$CellContext`\[Omega]$$]], 
          Join[{"Laser-off pop"}, 
           $CellContext`\[Rho][$CellContext`n$$, $CellContext`\[Alpha]$$ 
            1000/$CellContext`f$$, (1 - $CellContext`\[Alpha]$$) (
             1000/$CellContext`f$$), $CellContext`P$$, \
$CellContext`\[Omega]$$]]}]], 
      "Specifications" :> {{{$CellContext`n$$, 15}, 0, 20, 1, Appearance -> 
         "Labeled"}, {{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`\[Alpha]$$, 0.2, "Duty"}, 0, 1, 
         Appearance -> "Labeled"}, {{$CellContext`f$$, 1, "Freq. [kHz]"}, 0, 
         10, Appearance -> "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, 
         Appearance -> "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{582., {140., 145.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5561651092147064`*^9, 3.556165222982213*^9, 3.5561729442668457`*^9, 
   3.5561779429987564`*^9, 3.604635581200049*^9, {3.605244034611231*^9, 
   3.6052440799958982`*^9}, 3.60524413131524*^9, 3.605244415434122*^9, 
   3.6052444722097807`*^9, {3.60524451111751*^9, 3.6052445365481157`*^9}, {
   3.6052454425356293`*^9, 3.605245461667766*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"the", " ", "n"}], "-", 
    RowBox[{"th", " ", "cycle"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"Plot", "[", 
     RowBox[{
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ")"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], " ", 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ")"}], "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], " ", 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ")"}], "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "4", "]"}], "]"}]}], "]"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{"TripletDiff", ".", 
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
           RowBox[{"\[Eta]", "[", 
            RowBox[{
            "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
            "]"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{"TripletDiff", ".", 
             RowBox[{"MatrixExp", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"t", "-", "tp"}], ")"}], " ", 
               RowBox[{"R", "[", 
                RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
             RowBox[{"\[Rho]", "[", 
              RowBox[{"n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], 
              " ", "]"}]}]}], "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "0", ",", 
        RowBox[{"(", 
         RowBox[{"tp", "+", "td"}], ")"}]}], "}"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Red", ",", " ", "Green", ",", " ", "Blue", ",", "Orange"}], 
        "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"GridLines", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"40", "i"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "0", ",", "10"}], "}"}]}], "]"}], ",", 
         "Automatic"}], "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"Frame", "\[Rule]", "True"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\< Population\>\""}], 
        "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"Epilog", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Text", "[", 
          RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"50", ",", "0.06"}], "}"}]}], "]"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"150", ",", "0.02"}], " ", "}"}]}], "]"}], ",", 
         RowBox[{"Text", "[", 
          RowBox[{
          "\"\<\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"50", ",", "0.035"}], "}"}]}], "]"}]}], "}"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}], "\[IndentingNewLine]",
     ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n", ",", "15"}], "}"}], ",", "0", ",", "50", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tp", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"td", ",", "260"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 PageWidth->Infinity,
 CellChangeTimes->{{3.529127402798156*^9, 3.529127455430511*^9}, {
   3.529127492160283*^9, 3.529127596944018*^9}, {3.529127651710647*^9, 
   3.529127654709738*^9}, {3.52912769212985*^9, 3.529127809983247*^9}, {
   3.529127884881267*^9, 3.52912788726208*^9}, {3.529128722669039*^9, 
   3.5291287865832853`*^9}, 3.529129051741646*^9, {3.5291303019457197`*^9, 
   3.5291303040643263`*^9}, {3.529204192595784*^9, 3.529204192920377*^9}, {
   3.529207336629551*^9, 3.5292073372755747`*^9}, {3.529207443396071*^9, 
   3.5292074549881887`*^9}, {3.5292075116206837`*^9, 3.529207758498857*^9}, {
   3.5292078855288477`*^9, 3.529207976667563*^9}, {3.5292080099288197`*^9, 
   3.529208010045061*^9}, {3.5299827510959167`*^9, 3.5299827554348783`*^9}, {
   3.5299835658551073`*^9, 3.5299837028726254`*^9}, {3.529983794218131*^9, 
   3.5299838560040703`*^9}, {3.529983891813048*^9, 3.529983891920946*^9}, {
   3.529983947203665*^9, 3.5299839526893187`*^9}, {3.529983989420334*^9, 
   3.529984126505134*^9}, {3.529984277611435*^9, 3.52998427799205*^9}, {
   3.529984334713189*^9, 3.529984435242132*^9}, {3.529984472418784*^9, 
   3.529984477599317*^9}, {3.52998529957948*^9, 3.529985301090438*^9}, {
   3.5299854799961967`*^9, 3.5299854846342087`*^9}, {3.530344193236484*^9, 
   3.530344267979024*^9}, {3.530345549322158*^9, 3.530345618198637*^9}, {
   3.5303457796914587`*^9, 3.530345779977075*^9}, {3.532233572023994*^9, 
   3.5322335723589687`*^9}, 3.5322337538581467`*^9, {3.532235778633625*^9, 
   3.532235799508129*^9}, 3.5325246734535832`*^9, {3.5326063860956078`*^9, 
   3.5326064206340685`*^9}, {3.53260651256703*^9, 3.5326065132690315`*^9}, {
   3.532606638958452*^9, 3.532606697162154*^9}, {3.5326068070799475`*^9, 
   3.53260684849802*^9}, {3.5326068897922926`*^9, 3.532606894456701*^9}, {
   3.5525333947128706`*^9, 3.5525334527971926`*^9}, {3.552533512856628*^9, 
   3.552533550946807*^9}, {3.552533605285915*^9, 3.5525337883353844`*^9}, 
   3.5525338856689515`*^9, {3.552900903702526*^9, 3.552900903808532*^9}, {
   3.552901210416069*^9, 3.552901250979389*^9}, {3.55290129190373*^9, 
   3.552901292125743*^9}, {3.552901369389162*^9, 3.5529013899243364`*^9}, {
   3.5529014303266473`*^9, 3.552901480434513*^9}, {3.553318677465156*^9, 
   3.553318703787657*^9}, {3.5533195596973867`*^9, 3.553319567585539*^9}, {
   3.5545334388953834`*^9, 3.5545334950825973`*^9}, {3.554533558722237*^9, 
   3.554533580739496*^9}, {3.5545340252179193`*^9, 3.554534025840955*^9}, {
   3.556170989386033*^9, 3.556170993742282*^9}, {3.5561710603540916`*^9, 
   3.556171063596277*^9}, 3.5561713379299684`*^9, 3.556171406761905*^9, {
   3.556171528096845*^9, 3.5561715499360943`*^9}, {3.5561716349839587`*^9, 
   3.5561716416543407`*^9}, {3.5561768881994257`*^9, 3.556176888345434*^9}, {
   3.6046356020729303`*^9, 3.604635646840785*^9}, 3.604637298273303*^9, {
   3.604637968868232*^9, 3.6046379827505608`*^9}, {3.604638203985436*^9, 
   3.6046382075768347`*^9}, {3.604645085170534*^9, 3.604645086336611*^9}, {
   3.6046452130969563`*^9, 3.604645246221846*^9}, {3.605238448810207*^9, 
   3.605238449990349*^9}, 3.60524488138874*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 15, $CellContext`P$$ = 
    2.14, $CellContext`td$$ = 260, $CellContext`tp$$ = 
    84., $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 15}, 0, 50, 1}, {{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`tp$$], 50}, 0, 300}, {{
       Hold[$CellContext`td$$], 260}, 0, 300}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    500., {154., 158.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$29514$$ = 
    0, $CellContext`P$29515$$ = 0, $CellContext`tp$29516$$ = 
    0, $CellContext`td$29517$$ = 0, $CellContext`\[Omega]$29518$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 15, $CellContext`P$$ = 
        1, $CellContext`td$$ = 260, $CellContext`tp$$ = 
        50, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$29514$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$29515$$, 0], 
        Hold[$CellContext`tp$$, $CellContext`tp$29516$$, 0], 
        Hold[$CellContext`td$$, $CellContext`td$29517$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$29518$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 2], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 2]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 3], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 3]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 4], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 4]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Dot[$CellContext`TripletDiff, 
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
           $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Dot[$CellContext`TripletDiff, 
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]]]]}, \
{$CellContext`t, 0, $CellContext`tp$$ + $CellContext`td$$}, 
        PlotStyle -> {Red, Green, Blue, Orange}, GridLines -> {
          Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}, 
        Frame -> True, FrameLabel -> {"time [\[Mu]s]", " Population"}, Epilog -> {
          Text["\!\(\*SubscriptBox[\(N\), \(0\)]\)", {50, 0.06}], 
          Text["\!\(\*SubscriptBox[\(N\), \(-1\)]\)", {150, 0.02}], 
          Text[
          "\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)", {50, 0.035}]}, PlotRange -> 
        All, ImageSize -> 500], 
      "Specifications" :> {{{$CellContext`n$$, 15}, 0, 50, 1, Appearance -> 
         "Labeled"}, {{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`tp$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`td$$, 260}, 0, 300, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{543., {252., 258.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.6052441977092*^9, 3.60524488235677*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "the", " ", "magnetization", " ", "time", " ", "evolution", " ", "during",
      " ", "1"}], "-", 
    RowBox[{"pulse", " ", "in", " ", "n"}], "-", 
    RowBox[{"th", " ", "cycle"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Mag", "[", 
    RowBox[{
    "P_", ",", "tp_", ",", "td_", ",", "n_", ",", "t_", ",", "\[Omega]_"}], 
    "]"}], ":=", 
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{"t", "<", "tp"}], ",", 
     RowBox[{"TripletDiff", ".", 
      RowBox[{"MatrixExp", "[", 
       RowBox[{"t", " ", 
        RowBox[{"R", "[", 
         RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
      RowBox[{"\[Eta]", "[", 
       RowBox[{"n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
       "]"}]}], ",", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"t", "<", 
        RowBox[{"tp", "+", "td"}]}], ",", 
       RowBox[{"TripletDiff", ".", 
        RowBox[{"MatrixExp", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"t", "-", "tp"}], ")"}], " ", 
          RowBox[{"R", "[", 
           RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
        RowBox[{"\[Rho]", "[", 
         RowBox[{"n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
         "]"}]}]}], "]"}]}], "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5545163061644473`*^9, 3.5545163268736315`*^9}, {
  3.554533609588146*^9, 3.554533631776416*^9}, {3.554534027185032*^9, 
  3.5545340281390862`*^9}, {3.60463568215466*^9, 3.604635694209804*^9}, {
  3.6052384508555603`*^9, 3.6052384521976433`*^9}, {3.605244995276649*^9, 
  3.605245021896797*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"compare", " ", "power"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"Plot", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Mag", "[", 
         RowBox[{
         "0.25", ",", "tp", ",", "td", ",", "n", ",", "t", ",", "\[Omega]"}], 
         "]"}], ",", 
        RowBox[{"Mag", "[", 
         RowBox[{
         "0.5", ",", "tp", ",", "td", ",", "n", ",", "t", ",", "\[Omega]"}], 
         "]"}], ",", 
        RowBox[{"Mag", "[", 
         RowBox[{
         "1", ",", "tp", ",", "td", ",", "n", ",", "t", ",", "\[Omega]"}], 
         "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "8", ",", 
        RowBox[{"(", 
         RowBox[{"tp", "+", "td"}], ")"}]}], "}"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Red", ",", " ", "Green", ",", " ", "Blue"}], "}"}]}], ",", 
      RowBox[{"GridLines", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"40", "i"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "0", ",", "10"}], "}"}]}], "]"}], ",", 
         "Automatic"}], "}"}]}], ",", 
      RowBox[{"Frame", "\[Rule]", "True"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\<Polarization\>\""}], 
        "}"}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", "\[IndentingNewLine]", 
      RowBox[{"ImageSize", "\[Rule]", "500"}], ",", " ", 
      RowBox[{"AspectRatio", "\[Rule]", "0.5"}]}], "]"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n", ",", "15"}], "}"}], ",", "0", ",", "50", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tp", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"td", ",", "260"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.5545160958864202`*^9, 3.5545162944527774`*^9}, {
   3.5545163413584604`*^9, 3.554516370868148*^9}, {3.554516425957299*^9, 
   3.5545164462304583`*^9}, {3.554516476296178*^9, 3.55451648350259*^9}, {
   3.554516526598055*^9, 3.554516553511595*^9}, {3.554516596428049*^9, 
   3.554516616140177*^9}, {3.554516675497572*^9, 3.554516678993772*^9}, {
   3.554516776495349*^9, 3.554516812390402*^9}, {3.554516865177421*^9, 
   3.55451689015785*^9}, {3.554517171423937*^9, 3.5545171810984907`*^9}, {
   3.55451723283745*^9, 3.554517304304538*^9}, {3.5545174318078303`*^9, 
   3.5545174373711486`*^9}, {3.5545175572170033`*^9, 3.554517578071196*^9}, 
   3.5545179473943205`*^9, {3.554517986693568*^9, 3.5545179935099583`*^9}, {
   3.5561717628912745`*^9, 3.5561717654264193`*^9}, {3.556172968210215*^9, 
   3.556172970518347*^9}, {3.604635700394073*^9, 3.6046357341049557`*^9}, {
   3.6046359549149723`*^9, 3.604635966471196*^9}, {3.604645368446909*^9, 
   3.604645375355257*^9}, {3.6052449144871893`*^9, 3.605244923502425*^9}, {
   3.605245103091484*^9, 3.6052451033681583`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 15, $CellContext`td$$ = 
    260, $CellContext`tp$$ = 50, $CellContext`\[Omega]$$ = 0, Typeset`show$$ =
     True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 15}, 0, 50, 1}, {{
       Hold[$CellContext`tp$$], 50}, 0, 300}, {{
       Hold[$CellContext`td$$], 260}, 0, 300}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    500., {129., 133.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$29822$$ = 
    0, $CellContext`tp$29823$$ = 0, $CellContext`td$29824$$ = 
    0, $CellContext`\[Omega]$29825$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 15, $CellContext`td$$ = 
        260, $CellContext`tp$$ = 50, $CellContext`\[Omega]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$29822$$, 0], 
        Hold[$CellContext`tp$$, $CellContext`tp$29823$$, 0], 
        Hold[$CellContext`td$$, $CellContext`td$29824$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$29825$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         $CellContext`Mag[
         0.25, $CellContext`tp$$, $CellContext`td$$, $CellContext`n$$, \
$CellContext`t, $CellContext`\[Omega]$$], 
         $CellContext`Mag[
         0.5, $CellContext`tp$$, $CellContext`td$$, $CellContext`n$$, \
$CellContext`t, $CellContext`\[Omega]$$], 
         $CellContext`Mag[
         1, $CellContext`tp$$, $CellContext`td$$, $CellContext`n$$, \
$CellContext`t, $CellContext`\[Omega]$$]}, {$CellContext`t, 
         8, $CellContext`tp$$ + $CellContext`td$$}, 
        PlotStyle -> {Red, Green, Blue}, GridLines -> {
          Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}, 
        Frame -> True, FrameLabel -> {"time [\[Mu]s]", "Polarization"}, 
        PlotRange -> All, ImageSize -> 500, AspectRatio -> 0.5], 
      "Specifications" :> {{{$CellContext`n$$, 15}, 0, 50, 1, Appearance -> 
         "Labeled"}, {{$CellContext`tp$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`td$$, 260}, 0, 300, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{545., {211., 216.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.55451613802783*^9, 3.554516178371138*^9}, 
   3.554516272009494*^9, 3.554516398074704*^9, {3.554516440577135*^9, 
   3.5545164646775136`*^9}, 3.5545164956642857`*^9, 3.5545166187743273`*^9, 
   3.554516743078437*^9, {3.5545168761240473`*^9, 3.5545168955981607`*^9}, 
   3.5545170844809647`*^9, 3.554517147266556*^9, 3.5545171856537514`*^9, 
   3.554517309219819*^9, {3.5545175660405083`*^9, 3.554517583748521*^9}, 
   3.55451795246961*^9, 3.554517998929268*^9, 3.5561673787025137`*^9, 
   3.5561717661024585`*^9, 3.556171823530743*^9, 3.5561718705524325`*^9, 
   3.5561719477048454`*^9, 3.5561720021479597`*^9, 3.5561720552969995`*^9, 
   3.5561722120249634`*^9, {3.556172333902935*^9, 3.556172349484826*^9}, 
   3.5561728405359125`*^9, 3.556172971814421*^9, 3.5561730452046185`*^9, 
   3.5561732946848884`*^9, 3.556173408767413*^9, 3.556173506596009*^9, 
   3.556173732839949*^9, 3.5561737799316425`*^9, {3.604635710225884*^9, 
   3.604635735144734*^9}, {3.604635961929764*^9, 3.604635967373221*^9}, 
   3.604636050310657*^9, {3.604645351190482*^9, 3.604645375932356*^9}, 
   3.6052442186072083`*^9, 3.605244917591522*^9, 3.605245104244116*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"the", " ", "n"}], "-", 
    RowBox[{"th", " ", "cycle"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", 
   RowBox[{
    RowBox[{"Plot", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{"n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], 
              " ", "]"}]}], ")"}], "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"t", "<", 
               RowBox[{
                RowBox[{"2", "tp"}], "+", "td"}]}], ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"t", "-", "tp", "-", "td"}], ")"}], " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 
                 RowBox[{"\[Eta]", "[", 
                  RowBox[{
                   RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                   ",", "\[Omega]"}], " ", "]"}]}], ")"}], "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"t", "<", 
                 RowBox[{"2", 
                  RowBox[{"(", 
                   RowBox[{"tp", "+", "td"}], ")"}]}]}], ",", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"MatrixExp", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"t", "-", 
                    RowBox[{"2", "tp"}], "-", "td"}], ")"}], " ", 
                    RowBox[{"R", "[", 
                    RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
                   
                   RowBox[{"\[Rho]", "[", 
                    RowBox[{
                    RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                    ",", "\[Omega]"}], " ", "]"}]}], ")"}], "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ")"}], "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], " ", 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"t", "<", 
               RowBox[{
                RowBox[{"2", "tp"}], "+", "td"}]}], ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"t", "-", "tp", "-", "td"}], ")"}], " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 
                 RowBox[{"\[Eta]", "[", 
                  RowBox[{
                   RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                   " ", ",", "\[Omega]"}], "]"}]}], ")"}], "[", 
               RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"t", "<", 
                 RowBox[{"2", 
                  RowBox[{"(", 
                   RowBox[{"tp", "+", "td"}], ")"}]}]}], ",", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"MatrixExp", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"t", "-", 
                    RowBox[{"2", "tp"}], "-", "td"}], ")"}], " ", 
                    RowBox[{"R", "[", 
                    RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                   
                   RowBox[{"\[Rho]", "[", 
                    RowBox[{
                    RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                    ",", "\[Omega]"}], " ", "]"}]}], ")"}], "[", 
                 RowBox[{"[", "3", "]"}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{"P", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ")"}], "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
               RowBox[{"\[Rho]", "[", 
                RowBox[{
                "n", ",", "tp", ",", "td", ",", "P", ",", "\[Omega]"}], " ", 
                "]"}]}], ")"}], "[", 
             RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"t", "<", 
               RowBox[{
                RowBox[{"2", "tp"}], "+", "td"}]}], ",", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"t", "-", "tp", "-", "td"}], ")"}], " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 
                 RowBox[{"\[Eta]", "[", 
                  RowBox[{
                   RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                   " ", ",", "\[Omega]"}], "]"}]}], ")"}], "[", 
               RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"t", "<", 
                 RowBox[{"2", 
                  RowBox[{"(", 
                   RowBox[{"tp", "+", "td"}], ")"}]}]}], ",", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"MatrixExp", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"t", "-", 
                    RowBox[{"2", "tp"}], "-", "td"}], ")"}], " ", 
                    RowBox[{"R", "[", 
                    RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
                   
                   RowBox[{"\[Rho]", "[", 
                    RowBox[{
                    RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                    ",", "\[Omega]"}], " ", "]"}]}], ")"}], "[", 
                 RowBox[{"[", "4", "]"}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"t", "<", "tp"}], ",", 
          RowBox[{"TripletDiff", ".", 
           RowBox[{"MatrixExp", "[", 
            RowBox[{"t", " ", 
             RowBox[{"R", "[", 
              RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
           RowBox[{"\[Eta]", "[", 
            RowBox[{
            "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
            "]"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"t", "<", 
             RowBox[{"tp", "+", "td"}]}], ",", 
            RowBox[{"TripletDiff", ".", 
             RowBox[{"MatrixExp", "[", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"t", "-", "tp"}], ")"}], " ", 
               RowBox[{"R", "[", 
                RowBox[{"0", ",", "\[Omega]"}], " ", "]"}]}], "]"}], ".", 
             RowBox[{"\[Rho]", "[", 
              RowBox[{
              "n", ",", "tp", ",", "td", ",", "P", " ", ",", "\[Omega]"}], 
              "]"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"t", "<", 
               RowBox[{
                RowBox[{"2", "tp"}], "+", "td"}]}], ",", 
              RowBox[{"TripletDiff", ".", 
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp", "-", "td"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{"P", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
               RowBox[{"\[Eta]", "[", 
                RowBox[{
                 RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", " ",
                  ",", "\[Omega]"}], "]"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"t", "<", 
                 RowBox[{"2", 
                  RowBox[{"(", 
                   RowBox[{"tp", "+", "td"}], ")"}]}]}], ",", 
                RowBox[{"TripletDiff", ".", 
                 RowBox[{"MatrixExp", "[", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"t", "-", 
                    RowBox[{"2", "tp"}], "-", "td"}], ")"}], " ", 
                   RowBox[{"R", "[", 
                    RowBox[{"0", " ", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
                 
                 RowBox[{"\[Rho]", "[", 
                  RowBox[{
                   RowBox[{"n", "+", "1"}], ",", "tp", ",", "td", ",", "P", 
                   " ", ",", "\[Omega]"}], "]"}]}]}], "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"t", ",", "0", ",", 
        RowBox[{"2", 
         RowBox[{"(", 
          RowBox[{"tp", "+", "td"}], ")"}]}]}], "}"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Red", ",", " ", "Green", ",", " ", "Blue", ",", "Orange"}], 
        "}"}]}], ",", 
      RowBox[{"GridLines", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"40", "i"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "0", ",", "30"}], "}"}]}], "]"}], ",", 
         "Automatic"}], "}"}]}], "\[IndentingNewLine]", ",", 
      RowBox[{"AxesLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\< Population\>\""}], 
        "}"}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "600"}]}], "]"}], "\[IndentingNewLine]",
     ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"n", ",", "15"}], "}"}], ",", "0", ",", "50", ",", "1", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"P", ",", "1"}], "}"}], ",", "0", ",", "10", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"tp", ",", "50"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"td", ",", "260"}], "}"}], ",", "0", ",", "300", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
    "\[IndentingNewLine]", ",", 
    RowBox[{"{", 
     RowBox[{"\[Omega]", ",", "0", ",", "0.01", ",", 
      RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
   "]"}]}]], "Input",
 PageWidth->Infinity,
 CellChangeTimes->{{3.529127402798156*^9, 3.529127455430511*^9}, {
   3.529127492160283*^9, 3.529127596944018*^9}, {3.529127651710647*^9, 
   3.529127654709738*^9}, {3.52912769212985*^9, 3.529127809983247*^9}, {
   3.529127884881267*^9, 3.52912788726208*^9}, {3.529128722669039*^9, 
   3.5291287865832853`*^9}, 3.529129051741646*^9, {3.5291303019457197`*^9, 
   3.5291303040643263`*^9}, {3.529204192595784*^9, 3.529204192920377*^9}, {
   3.529207336629551*^9, 3.5292073372755747`*^9}, {3.529207443396071*^9, 
   3.5292074549881887`*^9}, {3.5292075116206837`*^9, 3.529207758498857*^9}, {
   3.5292078855288477`*^9, 3.529207976667563*^9}, {3.5292080099288197`*^9, 
   3.529208010045061*^9}, {3.5299827510959167`*^9, 3.5299827554348783`*^9}, {
   3.5299835658551073`*^9, 3.5299837028726254`*^9}, {3.529983794218131*^9, 
   3.5299838560040703`*^9}, {3.529983891813048*^9, 3.529983891920946*^9}, {
   3.529983947203665*^9, 3.5299839526893187`*^9}, {3.529983989420334*^9, 
   3.529984126505134*^9}, {3.529984277611435*^9, 3.52998427799205*^9}, {
   3.529984334713189*^9, 3.529984435242132*^9}, {3.529984472418784*^9, 
   3.529984477599317*^9}, {3.52998529957948*^9, 3.529985301090438*^9}, {
   3.5299854799961967`*^9, 3.5299854846342087`*^9}, {3.530344193236484*^9, 
   3.530344267979024*^9}, {3.530345549322158*^9, 3.530345618198637*^9}, {
   3.5303457796914587`*^9, 3.530345779977075*^9}, {3.532233572023994*^9, 
   3.5322335723589687`*^9}, 3.5322337538581467`*^9, {3.532235778633625*^9, 
   3.532235799508129*^9}, 3.5325246734535832`*^9, {3.5326063860956078`*^9, 
   3.5326064206340685`*^9}, {3.53260651256703*^9, 3.5326065132690315`*^9}, {
   3.532606638958452*^9, 3.532606697162154*^9}, {3.552534035053496*^9, 
   3.5525340512674236`*^9}, {3.55453371490117*^9, 3.554533769869314*^9}, {
   3.554534031109256*^9, 3.5545340334943924`*^9}, {3.6052384547379017`*^9, 
   3.6052384563090477`*^9}, {3.605245046294044*^9, 3.6052450627198257`*^9}, {
   3.605245146394486*^9, 3.6052452944018*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 15, $CellContext`P$$ = 
    1, $CellContext`td$$ = 260, $CellContext`tp$$ = 
    50, $CellContext`\[Omega]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 15}, 0, 50, 1}, {{
       Hold[$CellContext`P$$], 1}, 0, 10}, {{
       Hold[$CellContext`tp$$], 50}, 0, 300}, {{
       Hold[$CellContext`td$$], 260}, 0, 300}, {
      Hold[$CellContext`\[Omega]$$], 0, 0.01}}, Typeset`size$$ = {
    600., {168., 172.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$30775$$ = 
    0, $CellContext`P$30776$$ = 0, $CellContext`tp$30777$$ = 
    0, $CellContext`td$30778$$ = 0, $CellContext`\[Omega]$30779$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 15, $CellContext`P$$ = 
        1, $CellContext`td$$ = 260, $CellContext`tp$$ = 
        50, $CellContext`\[Omega]$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$30775$$, 0], 
        Hold[$CellContext`P$$, $CellContext`P$30776$$, 0], 
        Hold[$CellContext`tp$$, $CellContext`tp$30777$$, 0], 
        Hold[$CellContext`td$$, $CellContext`td$30778$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$30779$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 2], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 2], 
           If[$CellContext`t < 2 $CellContext`tp$$ + $CellContext`td$$, 
            Part[
             Dot[
              
              MatrixExp[($CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$) $CellContext`R[$CellContext`P$$, $CellContext`\[Omega]$$]], 
              $CellContext`\[Eta][$CellContext`n$$ + 
               1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 2], 
            If[$CellContext`t < 2 ($CellContext`tp$$ + $CellContext`td$$), 
             Part[
              Dot[
               
               MatrixExp[($CellContext`t - 
                 2 $CellContext`tp$$ - $CellContext`td$$) $CellContext`R[
                 0, $CellContext`\[Omega]$$]], 
               $CellContext`\[Rho][$CellContext`n$$ + 
                1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 2]]]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 3], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 3], 
           If[$CellContext`t < 2 $CellContext`tp$$ + $CellContext`td$$, 
            Part[
             Dot[
              
              MatrixExp[($CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$) $CellContext`R[$CellContext`P$$, $CellContext`\[Omega]$$]], 
              $CellContext`\[Eta][$CellContext`n$$ + 
               1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 3], 
            If[$CellContext`t < 2 ($CellContext`tp$$ + $CellContext`td$$), 
             Part[
              Dot[
               
               MatrixExp[($CellContext`t - 
                 2 $CellContext`tp$$ - $CellContext`td$$) $CellContext`R[
                 0, $CellContext`\[Omega]$$]], 
               $CellContext`\[Rho][$CellContext`n$$ + 
                1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 3]]]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Part[
           Dot[
            
            MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 4], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Part[
            Dot[
             
             MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
               0, $CellContext`\[Omega]$$]], 
             $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 4], 
           If[$CellContext`t < 2 $CellContext`tp$$ + $CellContext`td$$, 
            Part[
             Dot[
              
              MatrixExp[($CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$) $CellContext`R[$CellContext`P$$, $CellContext`\[Omega]$$]], 
              $CellContext`\[Eta][$CellContext`n$$ + 
               1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 4], 
            If[$CellContext`t < 2 ($CellContext`tp$$ + $CellContext`td$$), 
             Part[
              Dot[
               
               MatrixExp[($CellContext`t - 
                 2 $CellContext`tp$$ - $CellContext`td$$) $CellContext`R[
                 0, $CellContext`\[Omega]$$]], 
               $CellContext`\[Rho][$CellContext`n$$ + 
                1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 4]]]]], 
         If[$CellContext`t < $CellContext`tp$$, 
          Dot[$CellContext`TripletDiff, 
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`P$$, \
$CellContext`\[Omega]$$]], 
           $CellContext`\[Eta][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 
          If[$CellContext`t < $CellContext`tp$$ + $CellContext`td$$, 
           Dot[$CellContext`TripletDiff, 
            
            MatrixExp[($CellContext`t - $CellContext`tp$$) $CellContext`R[
              0, $CellContext`\[Omega]$$]], 
            $CellContext`\[Rho][$CellContext`n$$, $CellContext`tp$$, \
$CellContext`td$$, $CellContext`P$$, $CellContext`\[Omega]$$]], 
           If[$CellContext`t < 2 $CellContext`tp$$ + $CellContext`td$$, 
            Dot[$CellContext`TripletDiff, 
             
             MatrixExp[($CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$) $CellContext`R[$CellContext`P$$, $CellContext`\[Omega]$$]], 
             $CellContext`\[Eta][$CellContext`n$$ + 
              1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]], 
            If[$CellContext`t < 2 ($CellContext`tp$$ + $CellContext`td$$), 
             Dot[$CellContext`TripletDiff, 
              
              MatrixExp[($CellContext`t - 
                2 $CellContext`tp$$ - $CellContext`td$$) $CellContext`R[
                0, $CellContext`\[Omega]$$]], 
              $CellContext`\[Rho][$CellContext`n$$ + 
               1, $CellContext`tp$$, $CellContext`td$$, $CellContext`P$$, \
$CellContext`\[Omega]$$]]]]]]}, {$CellContext`t, 0, 
         2 ($CellContext`tp$$ + $CellContext`td$$)}, 
        PlotStyle -> {Red, Green, Blue, Orange}, GridLines -> {
          Table[40 $CellContext`i, {$CellContext`i, 0, 30}], Automatic}, 
        AxesLabel -> {"time [\[Mu]s]", " Population"}, PlotRange -> All, 
        ImageSize -> 600], 
      "Specifications" :> {{{$CellContext`n$$, 15}, 0, 50, 1, Appearance -> 
         "Labeled"}, {{$CellContext`P$$, 1}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`tp$$, 50}, 0, 300, Appearance -> 
         "Labeled"}, {{$CellContext`td$$, 260}, 0, 300, Appearance -> 
         "Labeled"}, {$CellContext`\[Omega]$$, 0, 0.01, Appearance -> 
         "Labeled"}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{645., {263., 268.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.5325280519068193`*^9, {3.5326063659403725`*^9, 3.5326064215700703`*^9}, 
   3.532606513861832*^9, 3.532606697614555*^9, 3.5525325912949176`*^9, 
   3.552534052029467*^9, 3.5533164545520144`*^9, 3.5545337754556336`*^9, 
   3.5561742648693795`*^9, {3.605245194544883*^9, 3.605245203635845*^9}, {
   3.6052452581324587`*^9, 3.60524529510373*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1225, 730},
WindowMargins->{{Automatic, 13}, {Automatic, 0}},
ShowSelection->True,
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (February 23, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 163, 2, 76, "Title"],
Cell[1423, 36, 141, 2, 46, "Subtitle"],
Cell[CellGroupData[{
Cell[1589, 42, 9183, 234, 546, "Input",
 InitializationCell->True],
Cell[10775, 278, 1638, 42, 105, "Output"],
Cell[12416, 322, 536, 9, 27, "Output"],
Cell[12955, 333, 578, 11, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13570, 349, 9584, 199, 510, "Input",
 InitializationCell->True],
Cell[23157, 550, 5499, 99, 545, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28693, 654, 7375, 134, 103, "Input",
 InitializationCell->True],
Cell[36071, 790, 4271, 84, 199, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[40379, 879, 170, 2, 67, "Section"],
Cell[CellGroupData[{
Cell[40574, 885, 3392, 69, 164, "Input"],
Cell[43969, 956, 2805, 58, 230, "Output"]
}, Open  ]],
Cell[46789, 1017, 273, 5, 30, "Input"],
Cell[CellGroupData[{
Cell[47087, 1026, 5510, 123, 213, "Input"],
Cell[52600, 1151, 4291, 86, 214, "Output"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[56940, 1243, 98, 1, 37, "Section"],
Cell[CellGroupData[{
Cell[57063, 1248, 152, 2, 34, "Subsection"],
Cell[CellGroupData[{
Cell[57240, 1254, 5675, 124, 193, "Input"],
Cell[62918, 1380, 4386, 84, 393, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[67341, 1469, 3525, 79, 148, "Input"],
Cell[70869, 1550, 3533, 69, 339, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[74439, 1624, 10112, 240, 223, "Input"],
Cell[84554, 1866, 6322, 136, 455, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[90937, 2009, 110, 1, 67, "Section"],
Cell[91050, 2012, 2947, 65, 88, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[94022, 2081, 3747, 84, 326, "Input"],
Cell[97772, 2167, 3641, 71, 324, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[101450, 2243, 4386, 100, 375, "Input"],
Cell[105839, 2345, 4164, 78, 302, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[110040, 2428, 11377, 254, 392, "Input"],
Cell[121420, 2684, 6098, 121, 527, "Output"]
}, Open  ]],
Cell[127533, 2808, 1728, 44, 58, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[129286, 2856, 3702, 83, 221, "Input"],
Cell[132991, 2941, 4243, 74, 444, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[137271, 3020, 16443, 382, 506, "Input"],
Cell[153717, 3404, 9678, 195, 548, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @vT@qGQ3yb3qbDwrADD9h90t *)
