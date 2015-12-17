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
NotebookDataLength[     92530,       2004]
NotebookOptionsPosition[     92709,       1991]
NotebookOutlinePosition[     93111,       2009]
CellTagsIndexPosition[     93068,       2006]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Triplet state Population ", "Title",
 CellChangeTimes->{{3.5266251467609587`*^9, 3.526625161585161*^9}, {
  3.5595167130890837`*^9, 3.5595167153892155`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Button", "[", 
   RowBox[{"\"\<Initialization\>\"", ",", "\[IndentingNewLine]", 
    RowBox[{"(*", " ", 
     RowBox[{"auxilary", " ", "vector"}], " ", "*)"}], "\[IndentingNewLine]", 
    
    RowBox[{
     RowBox[{"TripletDiff", "=", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "1", ",", 
        RowBox[{"-", "1"}], ",", "0"}], "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"TripletSum", "=", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1", ",", "1", ",", "1", ",", "0"}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"InitailState", "=", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "1"}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Diag", "=", 
      RowBox[{"IdentityMatrix", "[", "5", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Diag0", "=", 
      RowBox[{"IdentityMatrix", "[", "5", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{"normalization", " ", "function"}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"NormTo1", "[", "list_", "]"}], ":=", 
      FractionBox["list", 
       RowBox[{"Total", "[", "list", "]"}]]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"R", "[", 
       RowBox[{
       "Pow_", ",", "A_", ",", "W_", ",", "g1_", ",", "g0_", ",", "gi_", ",", 
        "k1_", ",", "k0_", ",", "ki_", ",", "\[Omega]_"}], "]"}], ":=", 
      "\[IndentingNewLine]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "A"}], "-", 
           RowBox[{"Pow", " ", "W"}], "-", 
           RowBox[{"(", 
            RowBox[{"g1", "+", "g0", "+", "gi"}], ")"}]}], ",", "0", ",", "0",
           ",", "0", ",", 
          RowBox[{"Pow", " ", "W"}]}], "}"}], ",", "\[IndentingNewLine]", 
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
          RowBox[{"A", "+", 
           RowBox[{"Pow", " ", "W"}]}], ",", "k1", ",", "k0", ",", "ki", ",", 
          
          RowBox[{
           RowBox[{"-", "Pow"}], " ", "W"}]}], "}"}]}], "\[IndentingNewLine]",
        "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{
       "Claim", " ", "the", " ", "function", " ", "electron", " ", 
        "polarization", " ", "at", " ", "n"}], "-", 
       RowBox[{"th", " ", "cycle"}]}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "population", " ", "evolution", " ", "from", " ", "starting", " ", "of",
        " ", "each", " ", "pulse"}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"\[CapitalOmega]", "[", 
       RowBox[{
       "t_", ",", "n_", ",", "tp_", ",", "td_", ",", "Pow_", ",", "A_", ",", 
        "W_", ",", "g1_", ",", "g0_", ",", "gi_", ",", "k1_", ",", "k0_", ",",
         "ki_", ",", "\[Omega]_"}], "]"}], ":=", 
      RowBox[{
       RowBox[{
        RowBox[{"MatrixExp", "[", 
         RowBox[{"t", " ", 
          RowBox[{"R", "[", 
           RowBox[{
           "Pow", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
            "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}]}], "]"}], 
        ".", 
        RowBox[{"MatrixPower", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"td", " ", 
             RowBox[{"R", "[", 
              RowBox[{
              "0", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
               "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}]}], "]"}], 
           ".", 
           RowBox[{"MatrixExp", "[", 
            RowBox[{"tp", " ", 
             RowBox[{"R", "[", 
              RowBox[{
              "Pow", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",",
                "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}]}], 
            "]"}]}], ",", 
          RowBox[{"n", "-", "1"}]}], "]"}], ".", "InitailState"}], "//", 
       "Chop"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", "  ", 
      RowBox[{
      "population", " ", "evolution", " ", "after", " ", "laser", " ", 
       "pulse", " ", "of", " ", "each", " ", "pulse"}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"\[Rho]", "[", 
       RowBox[{
       "t_", ",", "n_", ",", "tp_", ",", "td_", ",", "Pow_", ",", "A_", ",", 
        "W_", ",", "g1_", ",", "g0_", ",", "gi_", ",", "k1_", ",", "k0_", ",",
         "ki_", ",", "\[Omega]_"}], "]"}], ":=", 
      RowBox[{
       RowBox[{"MatrixExp", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "-", "tp"}], ")"}], " ", 
         RowBox[{"R", "[", 
          RowBox[{
          "0", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1",
            ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}]}], "]"}], ".", 
       RowBox[{"\[CapitalOmega]", "[", 
        RowBox[{
        "tp", ",", "n", ",", "tp", ",", "td", ",", "Pow", " ", ",", "A", ",", 
         "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", 
         "ki", ",", "\[Omega]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{"popl", ".", " ", "evolu", "."}], "  ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"\[Eta]", "[", 
       RowBox[{
       "t_", ",", "n_", ",", "tp_", ",", "td_", ",", "Pow_", ",", "A_", ",", 
        "W_", ",", "g1_", ",", "g0_", ",", "gi_", ",", "k1_", ",", "k0_", ",",
         "ki_", ",", "\[Omega]_"}], "]"}], ":=", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"nStart", ",", "nEnd"}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"nStart", "=", 
          RowBox[{
           RowBox[{
            RowBox[{"MatrixPower", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{"td", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "0", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", 
                   ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", 
               RowBox[{"MatrixExp", "[", 
                RowBox[{"tp", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "Pow", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", 
                   ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}]}], ",", 
              RowBox[{"n", "-", "1"}]}], "]"}], ".", "InitailState"}], "//", 
           "Chop"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"nEnd", "=", 
          RowBox[{
           RowBox[{"MatrixExp", "[", 
            RowBox[{"tp", " ", 
             RowBox[{"R", "[", 
              RowBox[{
              "Pow", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",",
                "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}]}], "]"}],
            ".", "nStart"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"Piecewise", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{"t", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "Pow", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", 
                   ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", "nStart"}], ",", 
              RowBox[{"t", "\[LessEqual]", " ", "tp"}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"t", "-", "tp"}], ")"}], " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "0", ",", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", 
                   ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", "nEnd"}], ",", 
              RowBox[{
               RowBox[{"tp", "+", "td"}], "\[GreaterEqual]", " ", "t", ">", 
               "tp"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], "]"}]}]}], 
       "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"SetDirectory", "[", 
      RowBox[{"NotebookDirectory", "[", "]"}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"initialized", " ", "=", " ", "1"}], ";"}]}], 
   "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", "start", " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"If", " ", "[", 
    RowBox[{
     RowBox[{"initialized", " ", "\[Equal]", " ", "0"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Style", "[", 
      RowBox[{
      "\"\<Please Click the Button.\>\"", ",", " ", "Red", ",", " ", "Bold", 
       ",", " ", "24"}], "]"}], "\[IndentingNewLine]", ",", 
     "\[IndentingNewLine]", 
     RowBox[{"TableForm", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{"\"\<Parameters\>\"", ",", "Red"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<Items\>\"", ",", "Blue"}], "]"}], ",", 
            "\"\<Laser Power[W]\>\"", ",", 
            "\"\<Einstein \!\(\*SubscriptBox[\(B\), \
\(12\)]\)=\!\(\*SubscriptBox[\(B\), \(21\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(S\), \
\(0\)]\)->\!\(\*SubscriptBox[\(S\), \(1\)]\)/Power\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(S\), \
\(1\)]\)->\!\(\*SubscriptBox[\(m\), \(1\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(S\), \
\(1\)]\)->\!\(\*SubscriptBox[\(m\), \(0\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(S\), \
\(1\)]\)->\!\(\*SubscriptBox[\(m\), \(1\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(m\), \
\(1\)]\)->\!\(\*SubscriptBox[\(S\), \(0\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(m\), \
\(0\)]\)->\!\(\*SubscriptBox[\(S\), \(0\)]\)\>\"", ",", 
            "\"\<\!\(\*SubscriptBox[\(m\), \
\(-1\)]\)->\!\(\*SubscriptBox[\(S\), \(0\)]\)\>\"", ",", 
            "\"\<Thermal Mix\>\""}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<Rate \!\(\*SuperscriptBox[\(10\), \(6\)]\) \
\!\(\*SuperscriptBox[\(s\), \(-1\)]\)\>\"", ",", "Blue"}], "]"}], ",", "Pow", 
            ",", " ", "A", ",", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
            "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], " ", "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{"\"\<Time \[Mu]s\>\"", ",", "Blue"}], "]"}], ",", 
             "\"\<\>\"", ",", " ", 
             RowBox[{"1", "/", "A"}], ",", 
             RowBox[{"1", "/", "W"}], ",", 
             RowBox[{"1", "/", "g1"}], ",", 
             RowBox[{"1", "/", "g0"}], ",", 
             RowBox[{"1", "/", "gi"}], ",", 
             RowBox[{"1", "/", "k1"}], ",", 
             RowBox[{"1", "/", "k0"}], ",", 
             RowBox[{"1", "/", "ki"}], ",", 
             RowBox[{"1", "/", "\[Omega]"}]}], "}"}], "//", "N"}]}], 
         "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", "\"\<\>\"",
         ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Rate Matrix\>\"", ",", "Red"}], "]"}], ",", 
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Power = 0\>\"", ",", "Brown"}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"MatrixForm", "[", 
             RowBox[{"R", "[", 
              RowBox[{
              "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", "gi",
                ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], 
             "]"}], ",", "4"}], "]"}], ",", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"NumberForm", "[", 
             RowBox[{
              RowBox[{"MatrixForm", "[", 
               RowBox[{"R", "[", 
                RowBox[{
                "0", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", "gi",
                  ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], 
               "]"}], ",", "4"}], "]"}], ",", "Brown"}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<Relative Population of triplet state\>\"", ",", "Red"}],
          "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\"\<m=+1\>\"", ",", "\"\<m=0\>\"", ",", "\"\<m=-1\>\""}], 
           "}"}], ",", 
          RowBox[{"Take", "[", 
           RowBox[{
            FractionBox[
             RowBox[{"Flatten", "[", 
              RowBox[{"NullSpace", "[", 
               RowBox[{"R", "[", 
                RowBox[{
                "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                 "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                "]"}], "]"}], "]"}], 
             RowBox[{"TripletSum", ".", 
              RowBox[{"Flatten", "[", 
               RowBox[{"NullSpace", "[", 
                RowBox[{"R", "[", 
                 RowBox[{
                 "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                  "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                 "]"}], "]"}], "]"}]}]], " ", ",", 
            RowBox[{"{", 
             RowBox[{"2", ",", "4"}], "}"}]}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", "\"\<-----------------------\>\"", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<Diagonalization, R = \!\(\*SuperscriptBox[\(P\), \
\(-1\)]\)(Diag)P \>\"", ",", "Red"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
         "calculate", " ", "eigen", " ", "value", " ", "and", " ", "eigen", 
          " ", "vector"}], " ", "*)"}], "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"PtDP", "=", 
          RowBox[{
           RowBox[{"Eigensystem", "[", 
            RowBox[{"R", "[", 
             RowBox[{
             "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", 
              ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], 
            "]"}], "//", "Chop"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"PtDP0", "=", 
          RowBox[{
           RowBox[{"Eigensystem", "[", 
            RowBox[{"R", "[", 
             RowBox[{
             "0", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", 
              ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], 
            "]"}], "//", "Chop"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Diag", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "i"}], "]"}], "]"}], "=", 
            RowBox[{"PtDP", "[", 
             RowBox[{"[", 
              RowBox[{"1", ",", "i"}], "]"}], "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", "5"}], "}"}]}], "]"}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Diag0", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "i"}], "]"}], "]"}], "=", 
            RowBox[{"PtDP0", "[", 
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
         RowBox[{"P0", "=", 
          RowBox[{"Inverse", "[", 
           RowBox[{"Transpose", "[", 
            RowBox[{"PtDP0", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Diag=\>\"", ",", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"MatrixForm", "[", "Diag", "]"}], ",", "4"}], "]"}], ",", 
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"NumberForm", "[", 
              RowBox[{
               RowBox[{"MatrixForm", "[", "Diag0", "]"}], ",", "4"}], "]"}], 
             ",", "Brown"}], "]"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
        "\"\<Eigen State (Column vector)\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"\"\<\!\(\*SuperscriptBox[\(P\), \(-1\)]\)=\>\"", ",", 
          RowBox[{
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"MatrixForm", "[", 
              RowBox[{"Inverse", "[", "P", "]"}], "]"}], ",", "4"}], "]"}], "//",
            "Chop"}], ",", 
          RowBox[{"Style", "[", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"NumberForm", "[", 
              RowBox[{
               RowBox[{"MatrixForm", "[", 
                RowBox[{"Inverse", "[", "P0", "]"}], "]"}], ",", "4"}], "]"}],
              "//", "Chop"}], ",", "Brown"}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<After Diagonalization, \!\(\*SuperscriptBox[\(e\), \(R\)]\) = \
\!\(\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(Diag\)]\)P \
\\nThe rate equation can be rewrite as\\n    \!\(\*FractionBox[\(dN\), \
\(dt\)]\) = R.N \[Implies] \!\(\*FractionBox[\(d \((P . N)\)\), \(dt\)]\) = \
Diag.(P.N)\\nThe cont. solution is\\n    N(t) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\\nThe Pulsed solution is\\n    \!\
\(\*SubscriptBox[\(N\), \(1\)]\) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\\n    \!\(\*SubscriptBox[\(N\), \
\(\(2\)\(\\\ \)\)]\)= \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SuperscriptBox[\(e\), \(\*SubscriptBox[\(R\), \(0\)] \
t\)]\)\!\(\*SuperscriptBox[\(e\), \(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\) \
= \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(\[CapitalOmega]N\), \(0\)]\)\\n    \
\!\(\*SubscriptBox[\(N\), \(n\)]\) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SuperscriptBox[\(\[CapitalOmega]\), \
\(n\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\\nwhere \[CapitalOmega] = \
\!\(\*SuperscriptBox[\(e\), \(\*SubscriptBox[\(R\), \(0\)] \*SubscriptBox[\(t\
\), \(d\)]\)]\)\!\(\*SuperscriptBox[\(e\), \(R\\\ \*SubscriptBox[\(t\), \
\(p\)]\)]\) and \!\(\*SubscriptBox[\(N\), \(n\)]\) is the population just \
after the n-th pulse.\\n\[CapitalOmega] can be written as\\n    \
\[CapitalOmega] = \!\(\*SuperscriptBox[SubscriptBox[\(P\), \(0\)], \
\(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(\*SubscriptBox[\(Diag\), \(0\)] \
\*SubscriptBox[\(t\), \(d\)]\)]\)\!\(\*SubscriptBox[\(P\), \
\(0\)]\)\!\(\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \
\(Diag\\\ \*SubscriptBox[\(t\), \(p\)]\)]\)P\\n    \!\(\*SuperscriptBox[\(\
\[CapitalOmega]\), \(n\)]\) \[Rule] const. \>\"", ",", " ", 
          RowBox[{"RGBColor", "[", 
           RowBox[{"0", ",", "0.5", ",", "0"}], "]"}]}], "]"}], ",", 
        "\[IndentingNewLine]", "\"\<-----------------------\>\"", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<triple state evolution formula\>\"", ",", "Red"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(N\), \(m = \(+1\)\)]\)(t) = \>\"", ",", 
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
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", "4"}], "]"}], "//", 
            "Chop"}], "//", "FullSimplify"}]}], " ", "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(N\), \(m = 0\)]\)(t) = \>\"", ",", 
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
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
               RowBox[{"[", "3", "]"}], "]"}], ",", "4"}], "]"}], "//", 
            "Chop"}], "//", "FullSimplify"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
         "\"\<\!\(\*SubscriptBox[\(N\), \(m = \(-1\)\)]\)(t) = \>\"", ",", 
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
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
               RowBox[{"[", "4", "]"}], "]"}], ",", "4"}], "]"}], "//", 
            "Chop"}], "//", "FullSimplify"}]}], "}"}], ",", 
        "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
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
                  RowBox[{
                  "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                   "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{"t", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                   "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"MatrixExp", "[", 
                RowBox[{"t", " ", 
                 RowBox[{"R", "[", 
                  RowBox[{
                  "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                   "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                  "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
             RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"TripletDiff", ".", 
             RowBox[{"MatrixExp", "[", 
              RowBox[{"t", " ", 
               RowBox[{"R", "[", 
                RowBox[{
                "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",", 
                 "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], 
                "]"}]}], "]"}], ".", "InitailState"}]}], 
           "\[IndentingNewLine]", "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "150"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Red", ",", "Green", ",", "Blue", ",", "Orange"}], 
            "}"}]}], ",", 
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"0", ",", "All"}], "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"Epilog", "\[Rule]", " ", 
           RowBox[{"{", 
            RowBox[{"Red", "\[IndentingNewLine]", ",", 
             RowBox[{"Text", "[", 
              RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(0\)]\)\>\"", ",", 
               RowBox[{"{", 
                RowBox[{"60", ",", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"MatrixExp", "[", 
                    RowBox[{"60", " ", 
                    RowBox[{"R", "[", 
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
                  RowBox[{"[", "3", "]"}], "]"}]}], " ", "}"}]}], "]"}], 
             "\[IndentingNewLine]", ",", 
             RowBox[{"Text", "[", 
              RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(1\)]\)\>\"", ",", 
               RowBox[{"{", 
                RowBox[{"100", ",", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"MatrixExp", "[", 
                    RowBox[{"100", " ", 
                    RowBox[{"R", "[", 
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "]"}], ",", 
             "\[IndentingNewLine]", ",", 
             RowBox[{"Text", "[", 
              RowBox[{"\"\<\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
               RowBox[{"{", 
                RowBox[{"130", ",", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"MatrixExp", "[", 
                    RowBox[{"130", " ", 
                    RowBox[{"R", "[", 
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}], "[", 
                  RowBox[{"[", "4", "]"}], "]"}]}], "}"}]}], "]"}], 
             "\[IndentingNewLine]", ",", 
             RowBox[{"Text", "[", 
              RowBox[{
              "\"\<\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
               RowBox[{"{", 
                RowBox[{"42", ",", 
                 RowBox[{"TripletDiff", ".", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"MatrixExp", "[", 
                    RowBox[{"42", " ", 
                    RowBox[{"R", "[", 
                    RowBox[{
                    "Pow", ",", "A", ",", " ", "W", ",", "g1", ",", "g0", ",",
                     "gi", ",", "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}],
                     "]"}]}], "]"}], ".", "InitailState"}], ")"}]}]}], 
                "}"}]}], "]"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{
            "\"\<Ploting the triplet state evolution \>\"", ",", "Bold", ",", 
             "Red", ",", "16"}], "]"}]}], ",", "\[IndentingNewLine]", 
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
          RowBox[{"AspectRatio", "\[Rule]", "0.5"}], ",", " ", 
          RowBox[{"ImageSize", "\[Rule]", "500"}]}], "\[IndentingNewLine]", 
         "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Plot", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A", ",", 
               " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", 
               "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A", ",", 
               " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", 
               "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A", ",", 
               " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", 
               "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
             RowBox[{"[", "4", "]"}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"\[Eta]", "[", 
              RowBox[{
              "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A", ",", 
               " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", ",", 
               "k0", ",", "ki", ",", "\[Omega]"}], "]"}], ".", 
             "TripletDiff"}]}], "\[IndentingNewLine]", "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", 
            RowBox[{"(", 
             RowBox[{"tp", "+", "td"}], ")"}]}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "Red", ",", " ", "Green", ",", " ", "Blue", ",", "Orange"}], 
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
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"\"\<Triplet state pop. in n=\>\"", "<>", 
              RowBox[{"ToString", "[", "n", "]"}], "<>", 
              "\"\< cycle. \\n \!\(\*SubscriptBox[\(t\), \(p\)]\)=\>\"", "<>", 
              RowBox[{"ToString", "[", "tp", "]"}], "<>", 
              "\"\< \[Mu]s, \!\(\*SubscriptBox[\(t\), \(d\)]\)=\>\"", "<>", 
              RowBox[{"ToString", "[", "td", "]"}], "<>", 
              "\"\< \[Mu]s  |  freq=\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
                FractionBox["1000", 
                 RowBox[{"tp", "+", "td"}]], "//", "N"}], "]"}], "<>", 
              "\"\< kHz, duty=\>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{
                RowBox[{
                 FractionBox["tp", 
                  RowBox[{"tp", "+", "td"}]], " ", "100"}], "//", "N"}], 
               "]"}], "<>", "\"\<%\>\""}], ",", "Bold", ",", "Red", ",", 
             "16"}], "]"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
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
                "\"\<\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \(0\)]\)-\!\(\
\*SubscriptBox[\(N\), \(-1\)]\)\>\"", ",", 
                 RowBox[{"{", 
                  RowBox[{"50", ",", "0.035"}], "}"}]}], "]"}]}], "}"}]}], 
            ","}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
          RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Plot", "[", 
           RowBox[{
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"Piecewise", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A",
                     ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
                    "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                   RowBox[{"t", "\[LessEqual]", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    RowBox[{"t", "-", "tp", "-", "td"}], ",", "n", ",", "tp", 
                    ",", "td", ",", "Pow", ",", "A", ",", " ", "W", ",", "g1",
                     ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", "ki", 
                    ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "2", "]"}], "]"}], ",", 
                   RowBox[{"t", ">", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}]}], 
                "\[IndentingNewLine]", "}"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Piecewise", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A",
                     ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
                    "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", 
                   RowBox[{"t", "\[LessEqual]", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    RowBox[{"t", "-", "tp", "-", "td"}], ",", "n", ",", "tp", 
                    ",", "td", ",", "Pow", ",", "A", ",", " ", "W", ",", "g1",
                     ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", "ki", 
                    ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "3", "]"}], "]"}], ",", 
                   RowBox[{"t", ">", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}]}], 
                "\[IndentingNewLine]", "}"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Piecewise", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A",
                     ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
                    "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "4", "]"}], "]"}], ",", 
                   RowBox[{"t", "\[LessEqual]", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    RowBox[{"t", "-", "tp", "-", "td"}], ",", "n", ",", "tp", 
                    ",", "td", ",", "Pow", ",", "A", ",", " ", "W", ",", "g1",
                     ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", "ki", 
                    ",", "\[Omega]"}], "]"}], "[", 
                    RowBox[{"[", "4", "]"}], "]"}], ",", 
                   RowBox[{"t", ">", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}]}], 
                "\[IndentingNewLine]", "}"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Piecewise", "[", 
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A",
                     ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
                    "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], ".",
                     "TripletDiff"}], ",", 
                   RowBox[{"t", "\[LessEqual]", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    RowBox[{"t", "-", "tp", "-", "td"}], ",", "n", ",", "tp", 
                    ",", "td", ",", "Pow", ",", "A", ",", " ", "W", ",", "g1",
                     ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", "ki", 
                    ",", "\[Omega]"}], "]"}], ".", "TripletDiff"}], ",", 
                   RowBox[{"t", ">", " ", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}]}], 
                "\[IndentingNewLine]", "}"}], "]"}]}], "\[IndentingNewLine]", 
             "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"t", ",", "0", ",", 
              RowBox[{"2", 
               RowBox[{"(", 
                RowBox[{"tp", "+", "td"}], ")"}]}]}], "}"}], ",", 
            RowBox[{"PlotStyle", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
              "Red", ",", " ", "Green", ",", " ", "Blue", ",", "Orange"}], 
              "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"GridLines", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"40", "i"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", "0", ",", "20"}], "}"}]}], "]"}], ",", 
               "Automatic"}], "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"Frame", "\[Rule]", "True"}], ",", 
            RowBox[{"FrameLabel", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"\"\<time [\[Mu]s]\>\"", ",", "\"\< Population\>\""}], 
              "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<Ploting the triplet state evolution in n, n+1 cycle \>\"", 
               ",", "Bold", ",", "Red", ",", "16"}], "]"}]}]}], 
           "\[IndentingNewLine]", "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Button", "[", 
           RowBox[{
            RowBox[{"\"\<Export Left graph\\n Time step = \>\"", "<>", 
             RowBox[{"ToString", "[", "\[CapitalDelta]t", "]"}], "<>", 
             "\"\<\[Mu]s\>\""}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"Export", "[", 
              RowBox[{"\"\<triplet.data\>\"", ",", "\[IndentingNewLine]", 
               RowBox[{"Join", "[", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{
                   "{", "\"\<Parameters: unit are using usec, 10^-6 sec^-1 or \
W\>\"", "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<Power\>\"", ",", " ", "Pow"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<Einstein B12=B21\>\"", ",", " ", "A"}], 
                    "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<S0->S1/Power\>\"", ",", " ", "W"}], "}"}], 
                   ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<S1->m1\>\"", ",", " ", "g1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<S1->m0\>\"", ",", " ", "g0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<S1->m-1\>\"", ",", " ", "gi"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<m1->S0\>\"", ",", " ", "k1"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<m0->S0\>\"", ",", " ", "k0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<m-1->S0\>\"", ",", " ", "ki"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<Thermal Mix\>\"", ",", " ", "\[Omega]"}], 
                    "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<# cycle\>\"", ",", " ", "n"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<Pulse duration\>\"", ",", " ", "tp"}], "}"}],
                    " ", ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<Pulse-off duration\>\"", ",", " ", "td"}], 
                    "}"}], ",", " ", 
                   RowBox[{"{", 
                    RowBox[{"\"\<frequency\>\"", ",", " ", 
                    RowBox[{
                    FractionBox["1000", 
                    RowBox[{"tp", "+", "td"}]], "//", "N"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"\"\<duty\>\"", ",", " ", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"tp", " ", "100"}], 
                    RowBox[{"tp", "+", "td"}]], "//", "N"}]}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    "\"\<Time step\>\"", ",", " ", "\[CapitalDelta]t"}], 
                    "}"}]}], "}"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"{", "\"\<---------------------\>\"", "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"{", 
                  RowBox[{"{", 
                   RowBox[{
                   "\"\<Time\>\"", ",", " ", "\"\<N(S1)\>\"", ",", " ", 
                    "\"\<N(m=1)\>\"", ",", " ", "\"\<N(m=0)\>\"", ",", 
                    "\"\<N(m=-1)\>\"", ",", "\"\<N(S0)\>\""}], "}"}], "}"}], 
                 ",", "\[IndentingNewLine]", 
                 RowBox[{"Table", "[", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Join", "[", 
                    RowBox[{
                    RowBox[{"{", "t", "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Piecewise", "[", 
                    RowBox[{"{", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    "t", ",", "n", ",", "tp", ",", "td", ",", "Pow", ",", "A",
                     ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", 
                    "k1", ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], ",", 
                    RowBox[{"t", "<", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"\[Eta]", "[", 
                    RowBox[{
                    RowBox[{"t", "-", "tp", "-", "td"}], ",", "n", ",", "tp", 
                    ",", "td", ",", "Pow", ",", "A", ",", " ", "W", ",", "g1",
                     ",", "g0", ",", "gi", ",", "k1", ",", "k0", ",", "ki", 
                    ",", "\[Omega]"}], "]"}], ",", 
                    RowBox[{"t", ">=", 
                    RowBox[{"tp", "+", "td"}]}]}], "}"}]}], 
                    "\[IndentingNewLine]", "}"}], "]"}]}], 
                    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
                   
                   RowBox[{"{", 
                    RowBox[{"t", ",", "0", ",", 
                    RowBox[{"2", 
                    RowBox[{"(", 
                    RowBox[{"tp", "+", "td"}], ")"}]}], ",", 
                    "\[CapitalDelta]t"}], "}"}]}], "]"}]}], 
                "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
               "\"\<Table\>\""}], "]"}], ";"}], ",", "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"200", ",", "50"}], "}"}]}]}], "\[IndentingNewLine]", 
           "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"ListPlot", "[", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Evaluate", "[", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"\[CapitalOmega]", "[", 
               RowBox[{
               "0", ",", "nn", ",", "tp", ",", "td", ",", "Pow", ",", "A", 
                ",", " ", "W", ",", "g1", ",", "g0", ",", "gi", ",", "k1", 
                ",", "k0", ",", "ki", ",", "\[Omega]"}], "]"}], ".", 
              "TripletDiff"}], ",", 
             RowBox[{"{", 
              RowBox[{"nn", ",", "1", ",", "30"}], "}"}]}], "]"}], "]"}], ",",
           "\[IndentingNewLine]", 
          RowBox[{"Frame", "\[Rule]", "True"}], ",", 
          RowBox[{"FrameLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
            "\"\<number of cycle\>\"", ",", "\"\< Start TripleDiff\>\""}], 
            "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
          RowBox[{"Joined", "\[Rule]", "True"}], ",", "\[IndentingNewLine]", 
          RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
          RowBox[{"GridLines", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Automatic", ",", "Automatic"}], "}"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"PlotLabel", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{
            "\"\<The Triplet Diff vs # of cycle \>\"", ",", "Bold", ",", 
             "Red", ",", "16"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], 
       "\[IndentingNewLine]", "}"}], "]"}]}], "\[IndentingNewLine]", "]"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"Pow", ",", "1", ",", "\"\<Power\>\""}], "}"}], ",", "0", ",", 
     "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "A", ",", "42.55", ",", 
       "\"\<Einstein \!\(\*SubscriptBox[\(B\), \(12\)]\)\>\""}], "}"}], ",", 
     "0", ",", "100", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "W", ",", "10", ",", 
       "\"\<\!\(\*SubscriptBox[\(S\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \(1\
\)]\)/Power\>\""}], "}"}], ",", "0", ",", "10", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "g1", ",", "0.001863", ",", 
       "\"\<\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \(1\
\)]\)\>\""}], "}"}], ",", "0", ",", "0.1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "g0", ",", " ", "0.04", ",", 
       "\"\<\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \(0\
\)]\)\>\""}], "}"}], ",", "0", ",", "1", " ", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "gi", ",", "0.001863", ",", 
       "\"\<\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \(1\
\)]\)\>\""}], "}"}], ",", "0", ",", "0.1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k1", ",", "0.0118", ",", 
       "\"\<\!\(\*SubscriptBox[\(m\), \(1\)]\)->\!\(\*SubscriptBox[\(S\), \(0\
\)]\)\>\""}], "}"}], ",", "0", ",", "1", " ", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "k0", ",", "0.04", ",", 
       "\"\<\!\(\*SubscriptBox[\(m\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \(0\
\)]\)\>\""}], "}"}], ",", "0", ",", "1", " ", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "ki", ",", "0.0118", ",", 
       "\"\<\!\(\*SubscriptBox[\(m\), \(-1\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)\>\""}], "}"}], ",", "0", ",", "1", " ", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Omega]", ",", "0.0001", ",", "\"\<Thermal Mix\>\""}], "}"}], 
     ",", "0.0001", ",", "0.01", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "30", ",", "\"\<# cycle\>\""}], "}"}], ",", "1", ",", 
     "100", ",", "1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"tp", ",", "80", ",", "\"\<pulse duration\>\""}], "}"}], ",", 
     "0", ",", "150", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"td", ",", "200", ",", "\"\<pulse-off duration\>\""}], "}"}], 
     ",", "0", ",", "300", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[CapitalDelta]t", ",", "1", ",", "\"\<Time step\>\""}], "}"}],
      ",", " ", "0.1", ",", " ", "5", ",", "0.1", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ContinuousAction", "\[Rule]", "False"}]}], "\[IndentingNewLine]", 
  "]"}]}], "Input",
 CellChangeTimes->{{3.605586186911762*^9, 3.605586188008655*^9}, {
   3.6055864100234737`*^9, 3.605586427957095*^9}, {3.605586505382753*^9, 
   3.605586509954773*^9}, {3.605586607044183*^9, 3.6055867909131927`*^9}, {
   3.605586908616272*^9, 3.605586912732933*^9}, {3.606015717005847*^9, 
   3.606015750322769*^9}, {3.6060160801688232`*^9, 3.606016114225134*^9}, {
   3.6060161469355173`*^9, 3.606016195744882*^9}, {3.606016335058064*^9, 
   3.606016340545285*^9}, {3.606016373263788*^9, 3.606016387987563*^9}, {
   3.606016613332232*^9, 3.6060166236898947`*^9}, {3.606016696772746*^9, 
   3.606016746762287*^9}, {3.606016796226151*^9, 3.606016821264092*^9}, {
   3.6060169358355618`*^9, 3.606016943526102*^9}, {3.606016995486601*^9, 
   3.606017014175511*^9}, {3.606017075416008*^9, 3.606017094255341*^9}, {
   3.60601717130822*^9, 3.6060171995362864`*^9}, {3.6060172415762997`*^9, 
   3.606017244324748*^9}, {3.6060173368891783`*^9, 3.606017350575487*^9}, {
   3.606017433851767*^9, 3.606017491691267*^9}, {3.606017539004529*^9, 
   3.606017701498941*^9}, {3.606017782761755*^9, 3.606017795785707*^9}, {
   3.606017865807413*^9, 3.606018138728354*^9}, {3.606018194140346*^9, 
   3.606018211204401*^9}, {3.606018410839772*^9, 3.606018531256207*^9}, 
   3.606018562802423*^9, {3.606018641925281*^9, 3.606018642409326*^9}, {
   3.6060186833772078`*^9, 3.606018686496744*^9}}],

Cell[BoxData[
 ButtonBox["\<\"Initialization\"\>",
  Appearance->Automatic,
  ButtonFunction:>($CellContext`TripletDiff = {0, 0, 1, -1, 
     0}; $CellContext`TripletSum = {0, 1, 1, 1, 
     0}; $CellContext`InitailState = {0, 0, 0, 0, 1}; $CellContext`Diag = 
    IdentityMatrix[5]; $CellContext`Diag0 = 
    IdentityMatrix[5]; $CellContext`NormTo1[
      Pattern[$CellContext`list, 
       Blank[]]] := $CellContext`list/Total[$CellContext`list]; $CellContext`R[
      Pattern[$CellContext`Pow, 
       Blank[]], 
      Pattern[$CellContext`A, 
       Blank[]], 
      Pattern[$CellContext`W, 
       Blank[]], 
      Pattern[$CellContext`g1, 
       Blank[]], 
      Pattern[$CellContext`g0, 
       Blank[]], 
      Pattern[$CellContext`gi, 
       Blank[]], 
      Pattern[$CellContext`k1, 
       Blank[]], 
      Pattern[$CellContext`k0, 
       Blank[]], 
      Pattern[$CellContext`ki, 
       Blank[]], 
      Pattern[$CellContext`\[Omega], 
       Blank[]]] := {{-$CellContext`A - $CellContext`Pow $CellContext`W - \
($CellContext`g1 + $CellContext`g0 + $CellContext`gi), 0, 0, 
       0, $CellContext`Pow $CellContext`W}, {$CellContext`g1, \
-$CellContext`k1 - $CellContext`\[Omega], $CellContext`\[Omega], 0, 
       0}, {$CellContext`g0, $CellContext`\[Omega], -$CellContext`k0 - 
       2 $CellContext`\[Omega], $CellContext`\[Omega], 0}, {$CellContext`gi, 
       0, $CellContext`\[Omega], -$CellContext`ki - $CellContext`\[Omega], 
       0}, {$CellContext`A + $CellContext`Pow $CellContext`W, \
$CellContext`k1, $CellContext`k0, $CellContext`ki, (-$CellContext`Pow) \
$CellContext`W}}; $CellContext`\[CapitalOmega][
      Pattern[$CellContext`t, 
       Blank[]], 
      Pattern[$CellContext`n, 
       Blank[]], 
      Pattern[$CellContext`tp, 
       Blank[]], 
      Pattern[$CellContext`td, 
       Blank[]], 
      Pattern[$CellContext`Pow, 
       Blank[]], 
      Pattern[$CellContext`A, 
       Blank[]], 
      Pattern[$CellContext`W, 
       Blank[]], 
      Pattern[$CellContext`g1, 
       Blank[]], 
      Pattern[$CellContext`g0, 
       Blank[]], 
      Pattern[$CellContext`gi, 
       Blank[]], 
      Pattern[$CellContext`k1, 
       Blank[]], 
      Pattern[$CellContext`k0, 
       Blank[]], 
      Pattern[$CellContext`ki, 
       Blank[]], 
      Pattern[$CellContext`\[Omega], 
       Blank[]]] := Chop[
      Dot[
       MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow, \
$CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]], 
       MatrixPower[
        Dot[
         MatrixExp[$CellContext`td $CellContext`R[
           0, $CellContext`A, $CellContext`W, $CellContext`g1, \
$CellContext`g0, $CellContext`gi, $CellContext`k1, $CellContext`k0, \
$CellContext`ki, $CellContext`\[Omega]]], 
         MatrixExp[$CellContext`tp $CellContext`R[$CellContext`Pow, \
$CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]]], $CellContext`n - 
        1], $CellContext`InitailState]]; $CellContext`\[Rho][
      Pattern[$CellContext`t, 
       Blank[]], 
      Pattern[$CellContext`n, 
       Blank[]], 
      Pattern[$CellContext`tp, 
       Blank[]], 
      Pattern[$CellContext`td, 
       Blank[]], 
      Pattern[$CellContext`Pow, 
       Blank[]], 
      Pattern[$CellContext`A, 
       Blank[]], 
      Pattern[$CellContext`W, 
       Blank[]], 
      Pattern[$CellContext`g1, 
       Blank[]], 
      Pattern[$CellContext`g0, 
       Blank[]], 
      Pattern[$CellContext`gi, 
       Blank[]], 
      Pattern[$CellContext`k1, 
       Blank[]], 
      Pattern[$CellContext`k0, 
       Blank[]], 
      Pattern[$CellContext`ki, 
       Blank[]], 
      Pattern[$CellContext`\[Omega], 
       Blank[]]] := Dot[
      MatrixExp[($CellContext`t - $CellContext`tp) $CellContext`R[
        0, $CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]], 
      $CellContext`\[CapitalOmega][$CellContext`tp, $CellContext`n, \
$CellContext`tp, $CellContext`td, $CellContext`Pow, $CellContext`A, \
$CellContext`W, $CellContext`g1, $CellContext`g0, $CellContext`gi, \
$CellContext`k1, $CellContext`k0, $CellContext`ki, $CellContext`\[Omega]]]; \
$CellContext`\[Eta][
      Pattern[$CellContext`t, 
       Blank[]], 
      Pattern[$CellContext`n, 
       Blank[]], 
      Pattern[$CellContext`tp, 
       Blank[]], 
      Pattern[$CellContext`td, 
       Blank[]], 
      Pattern[$CellContext`Pow, 
       Blank[]], 
      Pattern[$CellContext`A, 
       Blank[]], 
      Pattern[$CellContext`W, 
       Blank[]], 
      Pattern[$CellContext`g1, 
       Blank[]], 
      Pattern[$CellContext`g0, 
       Blank[]], 
      Pattern[$CellContext`gi, 
       Blank[]], 
      Pattern[$CellContext`k1, 
       Blank[]], 
      Pattern[$CellContext`k0, 
       Blank[]], 
      Pattern[$CellContext`ki, 
       Blank[]], 
      Pattern[$CellContext`\[Omega], 
       Blank[]]] := 
    Module[{$CellContext`nStart, $CellContext`nEnd}, $CellContext`nStart = 
       Chop[
         Dot[
          MatrixPower[
           Dot[
            
            MatrixExp[$CellContext`td $CellContext`R[
              0, $CellContext`A, $CellContext`W, $CellContext`g1, \
$CellContext`g0, $CellContext`gi, $CellContext`k1, $CellContext`k0, \
$CellContext`ki, $CellContext`\[Omega]]], 
            
            MatrixExp[$CellContext`tp $CellContext`R[$CellContext`Pow, \
$CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]]], $CellContext`n - 
           1], $CellContext`InitailState]]; $CellContext`nEnd = Dot[
         MatrixExp[$CellContext`tp $CellContext`R[$CellContext`Pow, \
$CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]], $CellContext`nStart]; Piecewise[{{
          Dot[
           
           MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow, \
$CellContext`A, $CellContext`W, $CellContext`g1, $CellContext`g0, \
$CellContext`gi, $CellContext`k1, $CellContext`k0, $CellContext`ki, \
$CellContext`\[Omega]]], $CellContext`nStart], $CellContext`t <= \
$CellContext`tp}, {
          Dot[
           
           MatrixExp[($CellContext`t - $CellContext`tp) $CellContext`R[
             0, $CellContext`A, $CellContext`W, $CellContext`g1, \
$CellContext`g0, $CellContext`gi, $CellContext`k1, $CellContext`k0, \
$CellContext`ki, $CellContext`\[Omega]]], $CellContext`nEnd], 
          
          Inequality[$CellContext`tp + $CellContext`td, 
           GreaterEqual, $CellContext`t, Greater, $CellContext`tp]}}]]; 
   SetDirectory[
     NotebookDirectory[]]; $CellContext`initialized = 1; Null),
  Evaluator->Automatic,
  Method->"Preemptive"]], "Output",
 CellChangeTimes->{
  3.6055861919334908`*^9, 3.605586431561616*^9, 3.605586624749683*^9, 
   3.60558679281091*^9, 3.605586943760786*^9, 3.6060162176312428`*^9, 
   3.6060163416595783`*^9, 3.606016392867153*^9, 3.6060166252308893`*^9, {
   3.6060167276869802`*^9, 3.606016749452385*^9}, 3.606016867461108*^9, 
   3.6060170146924677`*^9, 3.6060170986465063`*^9, 3.6060172047219687`*^9, 
   3.6060172610341377`*^9, 3.60601735562853*^9, 3.606017498777774*^9, 
   3.606017702657569*^9, 3.606017805209425*^9, 3.6060181409895906`*^9, 
   3.606018213641788*^9, 3.606018341621022*^9, 3.6060185322902737`*^9, 
   3.606018566524439*^9, 3.606018612690508*^9, 3.606018650004396*^9, {
   3.606018694178714*^9, 3.606018718095846*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`A$$ = 42.55, $CellContext`g0$$ = 
    0.04, $CellContext`g1$$ = 0.001863, $CellContext`gi$$ = 
    0.001863, $CellContext`k0$$ = 0.04, $CellContext`k1$$ = 
    0.0118, $CellContext`ki$$ = 0.0118, $CellContext`n$$ = 
    30, $CellContext`Pow$$ = 1, $CellContext`td$$ = 200, $CellContext`tp$$ = 
    80, $CellContext`W$$ = 10, $CellContext`\[CapitalDelta]t$$ = 
    1, $CellContext`\[Omega]$$ = 0.0001, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`Pow$$], 1, "Power"}, 0, 10}, {{
       Hold[$CellContext`A$$], 42.55, 
       "Einstein \!\(\*SubscriptBox[\(B\), \(12\)]\)"}, 0, 100}, {{
       Hold[$CellContext`W$$], 10, 
       "\!\(\*SubscriptBox[\(S\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(1\)]\)/Power"}, 0, 10}, {{
       Hold[$CellContext`g1$$], 0.001863, 
       "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)"}, 0, 0.1}, {{
       Hold[$CellContext`g0$$], 0.04, 
       "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(0\)]\)"}, 0, 1}, {{
       Hold[$CellContext`gi$$], 0.001863, 
       "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)"}, 0, 0.1}, {{
       Hold[$CellContext`k1$$], 0.0118, 
       "\!\(\*SubscriptBox[\(m\), \(1\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)"}, 0, 1}, {{
       Hold[$CellContext`k0$$], 0.04, 
       "\!\(\*SubscriptBox[\(m\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)"}, 0, 1}, {{
       Hold[$CellContext`ki$$], 0.0118, 
       "\!\(\*SubscriptBox[\(m\), \(-1\)]\)->\!\(\*SubscriptBox[\(S\), \(0\)]\
\)"}, 0, 1}, {{
       Hold[$CellContext`\[Omega]$$], 0.0001, "Thermal Mix"}, 0.0001, 0.01}, {{
       Hold[$CellContext`n$$], 30, "# cycle"}, 1, 100, 1}, {{
       Hold[$CellContext`tp$$], 80, "pulse duration"}, 0, 150}, {{
       Hold[$CellContext`td$$], 200, "pulse-off duration"}, 0, 300}, {{
       Hold[$CellContext`\[CapitalDelta]t$$], 1, "Time step"}, 0.1, 5, 0.1}}, 
    Typeset`size$$ = {13720., {452.84375, 458.15625}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`Pow$661881$$ = 0, $CellContext`A$661882$$ = 
    0, $CellContext`W$661883$$ = 0, $CellContext`g1$661884$$ = 
    0, $CellContext`g0$661885$$ = 0, $CellContext`gi$661886$$ = 
    0, $CellContext`k1$661887$$ = 0, $CellContext`k0$661888$$ = 
    0, $CellContext`ki$661889$$ = 0, $CellContext`\[Omega]$661890$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`A$$ = 42.55, $CellContext`g0$$ = 
        0.04, $CellContext`g1$$ = 0.001863, $CellContext`gi$$ = 
        0.001863, $CellContext`k0$$ = 0.04, $CellContext`k1$$ = 
        0.0118, $CellContext`ki$$ = 0.0118, $CellContext`n$$ = 
        30, $CellContext`Pow$$ = 1, $CellContext`td$$ = 
        200, $CellContext`tp$$ = 80, $CellContext`W$$ = 
        10, $CellContext`\[CapitalDelta]t$$ = 1, $CellContext`\[Omega]$$ = 
        0.0001}, "ControllerVariables" :> {
        Hold[$CellContext`Pow$$, $CellContext`Pow$661881$$, 0], 
        Hold[$CellContext`A$$, $CellContext`A$661882$$, 0], 
        Hold[$CellContext`W$$, $CellContext`W$661883$$, 0], 
        Hold[$CellContext`g1$$, $CellContext`g1$661884$$, 0], 
        Hold[$CellContext`g0$$, $CellContext`g0$661885$$, 0], 
        Hold[$CellContext`gi$$, $CellContext`gi$661886$$, 0], 
        Hold[$CellContext`k1$$, $CellContext`k1$661887$$, 0], 
        Hold[$CellContext`k0$$, $CellContext`k0$661888$$, 0], 
        Hold[$CellContext`ki$$, $CellContext`ki$661889$$, 0], 
        Hold[$CellContext`\[Omega]$$, $CellContext`\[Omega]$661890$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      If[$CellContext`initialized == 0, 
        Style["Please Click the Button.", Red, Bold, 24], 
        TableForm[{
          Style["Parameters", Red], {{
            Style["Items", Blue], "Laser Power[W]", 
            "Einstein \!\(\*SubscriptBox[\(B\), \(12\)]\)=\!\(\*SubscriptBox[\
\(B\), \(21\)]\)", 
            "\!\(\*SubscriptBox[\(S\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(1\)]\)/Power", 
            "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)", 
            "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(0\)]\)", 
            "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)", 
            "\!\(\*SubscriptBox[\(m\), \(1\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)", 
            "\!\(\*SubscriptBox[\(m\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)", 
            "\!\(\*SubscriptBox[\(m\), \(-1\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)", "Thermal Mix"}, {
            Style[
            "Rate \!\(\*SuperscriptBox[\(10\), \(6\)]\) \!\(\*SuperscriptBox[\
\(s\), \(-1\)]\)", 
             Blue], $CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, \
$CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, \
$CellContext`k0$$, $CellContext`ki$$, $CellContext`\[Omega]$$}, 
           N[{
             Style["Time \[Mu]s", Blue], "", 1/$CellContext`A$$, 
             1/$CellContext`W$$, 1/$CellContext`g1$$, 1/$CellContext`g0$$, 
             1/$CellContext`gi$$, 1/$CellContext`k1$$, 1/$CellContext`k0$$, 
             1/$CellContext`ki$$, 1/$CellContext`\[Omega]$$}]}, "", {
           Style["Rate Matrix", Red], 
           Style["Power = 0", Brown]}, {
           NumberForm[
            MatrixForm[
             $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], 4], 
           Style[
            NumberForm[
             MatrixForm[
              $CellContext`R[
              0, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$]], 4], Brown]}, "", 
          Style[
          "Relative Population of triplet state", Red], {{
           "m=+1", "m=0", "m=-1"}, 
           Take[Flatten[
              NullSpace[
               $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]]]/Dot[$CellContext`TripletSum, 
             Flatten[
              NullSpace[
               $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]]]], {2, 4}]}, "-----------------------", 
          Style[
          "Diagonalization, R = \!\(\*SuperscriptBox[\(P\), \(-1\)]\)(Diag)P \
", Red], $CellContext`PtDP = Chop[
             Eigensystem[
              $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]]]; $CellContext`PtDP0 = Chop[
             Eigensystem[
              $CellContext`R[
              0, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$]]]; 
          Table[Part[$CellContext`Diag, $CellContext`i, $CellContext`i] = 
            Part[$CellContext`PtDP, 1, $CellContext`i], {$CellContext`i, 1, 
             5}]; Table[
           Part[$CellContext`Diag0, $CellContext`i, $CellContext`i] = 
            Part[$CellContext`PtDP0, 1, $CellContext`i], {$CellContext`i, 1, 
             5}]; $CellContext`P = Inverse[
             Transpose[
              Part[$CellContext`PtDP, 2]]]; $CellContext`P0 = Inverse[
             Transpose[
              Part[$CellContext`PtDP0, 2]]]; {"Diag=", 
            NumberForm[
             MatrixForm[$CellContext`Diag], 4], 
            Style[
             NumberForm[
              MatrixForm[$CellContext`Diag0], 4], Brown]}, 
          "Eigen State (Column vector)", {
          "\!\(\*SuperscriptBox[\(P\), \(-1\)]\)=", 
           Chop[
            NumberForm[
             MatrixForm[
              Inverse[$CellContext`P]], 4]], 
           Style[
            Chop[
             NumberForm[
              MatrixForm[
               Inverse[$CellContext`P0]], 4]], Brown]}, 
          Style[
          "After Diagonalization, \!\(\*SuperscriptBox[\(e\), \(R\)]\) = \!\(\
\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(Diag\)]\)P \n\
The rate equation can be rewrite as\n    \!\(\*FractionBox[\(dN\), \(dt\)]\) \
= R.N \[Implies] \!\(\*FractionBox[\(d \((P . N)\)\), \(dt\)]\) = Diag.(P.N)\n\
The cont. solution is\n    N(t) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\nThe Pulsed solution is\n    \!\(\
\*SubscriptBox[\(N\), \(1\)]\) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\n    \!\(\*SubscriptBox[\(N\), \(\
\(2\)\(\\ \)\)]\)= \!\(\*SuperscriptBox[\(e\), \(Rt\)]\)\!\(\*SuperscriptBox[\
\(e\), \(\*SubscriptBox[\(R\), \(0\)] t\)]\)\!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SubscriptBox[\(\[CapitalOmega]N\), \(0\)]\)\n    \
\!\(\*SubscriptBox[\(N\), \(n\)]\) = \!\(\*SuperscriptBox[\(e\), \
\(Rt\)]\)\!\(\*SuperscriptBox[\(\[CapitalOmega]\), \
\(n\)]\)\!\(\*SubscriptBox[\(N\), \(0\)]\)\nwhere \[CapitalOmega] = \
\!\(\*SuperscriptBox[\(e\), \(\*SubscriptBox[\(R\), \(0\)] \*SubscriptBox[\(t\
\), \(d\)]\)]\)\!\(\*SuperscriptBox[\(e\), \(R\\ \*SubscriptBox[\(t\), \(p\)]\
\)]\) and \!\(\*SubscriptBox[\(N\), \(n\)]\) is the population just after the \
n-th pulse.\n\[CapitalOmega] can be written as\n    \[CapitalOmega] = \
\!\(\*SuperscriptBox[SubscriptBox[\(P\), \(0\)], \
\(-1\)]\)\!\(\*SuperscriptBox[\(e\), \(\*SubscriptBox[\(Diag\), \(0\)] \
\*SubscriptBox[\(t\), \(d\)]\)]\)\!\(\*SubscriptBox[\(P\), \
\(0\)]\)\!\(\*SuperscriptBox[\(P\), \(-1\)]\)\!\(\*SuperscriptBox[\(e\), \
\(Diag\\ \*SubscriptBox[\(t\), \(p\)]\)]\)P\n    \!\(\*SuperscriptBox[\(\
\[CapitalOmega]\), \(n\)]\) \[Rule] const. ", 
           RGBColor[0, 0.5, 0]], "-----------------------", 
          Style["triple state evolution formula", Red], {
          "\!\(\*SubscriptBox[\(N\), \(m = \(+1\)\)]\)(t) = ", 
           FullSimplify[
            Chop[
             NumberForm[
              Part[
               Dot[
                
                MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 4]]]}, {
          "\!\(\*SubscriptBox[\(N\), \(m = 0\)]\)(t) = ", 
           FullSimplify[
            Chop[
             NumberForm[
              Part[
               Dot[
                
                MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 4]]]}, {
          "\!\(\*SubscriptBox[\(N\), \(m = \(-1\)\)]\)(t) = ", 
           FullSimplify[
            Chop[
             NumberForm[
              Part[
               Dot[
                
                MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 4]]]}, "", 
          Plot[{
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2], 
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3], 
            Part[
             Dot[
              
              MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4], 
            Dot[$CellContext`TripletDiff, 
             
             MatrixExp[$CellContext`t $CellContext`R[$CellContext`Pow$$, \
$CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, \
$CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]}, {$CellContext`t, 0, 
            150}, PlotStyle -> {Red, Green, Blue, Orange}, 
           PlotRange -> {0, All}, Epilog -> {Red, 
             Text["\!\(\*SubscriptBox[\(N\), \(0\)]\)", {60, 
               Part[
                Dot[
                 MatrixExp[
                 60 $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 3]}], 
             Text["\!\(\*SubscriptBox[\(N\), \(1\)]\)", {100, 
               Part[
                Dot[
                 MatrixExp[
                 100 $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 2]}], Null, 
             Text["\!\(\*SubscriptBox[\(N\), \(-1\)]\)", {130, 
               Part[
                Dot[
                 MatrixExp[
                 130 $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState], 4]}], 
             Text[
             "\[CapitalDelta]N=\!\(\*SubscriptBox[\(N\), \
\(0\)]\)-\!\(\*SubscriptBox[\(N\), \(-1\)]\)", {42, 
               Dot[$CellContext`TripletDiff, 
                Dot[
                 MatrixExp[
                 42 $CellContext`R[$CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$]], $CellContext`InitailState]]}]}, PlotLabel -> 
           Style["Ploting the triplet state evolution ", Bold, Red, 16], 
           GridLines -> {
             Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}, 
           Frame -> True, FrameLabel -> {"time [\[Mu]s]", " Population"}, 
           AspectRatio -> 0.5, ImageSize -> 500], "", 
          Plot[{
            Part[
             $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 2], 
            Part[
             $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 3], 
            Part[
             $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 4], 
            Dot[
             $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], $CellContext`TripletDiff]}, {$CellContext`t, 
            0, $CellContext`tp$$ + $CellContext`td$$}, 
           PlotStyle -> {Red, Green, Blue, Orange}, GridLines -> {
             Table[40 $CellContext`i, {$CellContext`i, 0, 10}], Automatic}, 
           Frame -> True, FrameLabel -> {"time [\[Mu]s]", " Population"}, 
           PlotLabel -> Style[
             StringJoin["Triplet state pop. in n=", 
              ToString[$CellContext`n$$], 
              " cycle. \n \!\(\*SubscriptBox[\(t\), \(p\)]\)=", 
              ToString[$CellContext`tp$$], 
              " \[Mu]s, \!\(\*SubscriptBox[\(t\), \(d\)]\)=", 
              ToString[$CellContext`td$$], " \[Mu]s  |  freq=", 
              ToString[
               N[1000/($CellContext`tp$$ + $CellContext`td$$)]], 
              " kHz, duty=", 
              ToString[
               
               N[($CellContext`tp$$/($CellContext`tp$$ + $CellContext`td$$)) 
                100]], "%"], Bold, Red, 16], PlotRange -> All, ImageSize -> 
           500], {
           Plot[{
             Piecewise[{{
                Part[
                 $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 
                 2], $CellContext`t <= $CellContext`tp$$ + \
$CellContext`td$$}, {
                Part[
                 $CellContext`\[Eta][$CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$, $CellContext`n$$, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], 
                 2], $CellContext`t > $CellContext`tp$$ + \
$CellContext`td$$}}], 
             Piecewise[{{
                Part[
                 $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 
                 3], $CellContext`t <= $CellContext`tp$$ + \
$CellContext`td$$}, {
                Part[
                 $CellContext`\[Eta][$CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$, $CellContext`n$$, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], 
                 3], $CellContext`t > $CellContext`tp$$ + \
$CellContext`td$$}}], 
             Piecewise[{{
                Part[
                 $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], 
                 4], $CellContext`t <= $CellContext`tp$$ + \
$CellContext`td$$}, {
                Part[
                 $CellContext`\[Eta][$CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$, $CellContext`n$$, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], 
                 4], $CellContext`t > $CellContext`tp$$ + \
$CellContext`td$$}}], 
             Piecewise[{{
                Dot[
                 $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], $CellContext`TripletDiff], $CellContext`t <= \
$CellContext`tp$$ + $CellContext`td$$}, {
                Dot[
                 $CellContext`\[Eta][$CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$, $CellContext`n$$, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], $CellContext`TripletDiff], \
$CellContext`t > $CellContext`tp$$ + $CellContext`td$$}}]}, {$CellContext`t, 
             0, 2 ($CellContext`tp$$ + $CellContext`td$$)}, 
            PlotStyle -> {Red, Green, Blue, Orange}, GridLines -> {
              Table[40 $CellContext`i, {$CellContext`i, 0, 20}], Automatic}, 
            Frame -> True, FrameLabel -> {"time [\[Mu]s]", " Population"}, 
            ImageSize -> 500, PlotLabel -> 
            Style["Ploting the triplet state evolution in n, n+1 cycle ", 
              Bold, Red, 16]], 
           Button[
            StringJoin["Export Left graph\n Time step = ", 
             ToString[$CellContext`\[CapitalDelta]t$$], "\[Mu]s"], 
            Export["triplet.data", 
              
              Join[{{"Parameters: unit are using usec, 10^-6 sec^-1 or W"}, {
                "Power", $CellContext`Pow$$}, {
                "Einstein B12=B21", $CellContext`A$$}, {
                "S0->S1/Power", $CellContext`W$$}, {
                "S1->m1", $CellContext`g1$$}, {"S1->m0", $CellContext`g0$$}, {
                "S1->m-1", $CellContext`gi$$}, {
                "m1->S0", $CellContext`k1$$}, {"m0->S0", $CellContext`k0$$}, {
                "m-1->S0", $CellContext`ki$$}, {
                "Thermal Mix", $CellContext`\[Omega]$$}, {
                "# cycle", $CellContext`n$$}, {
                "Pulse duration", $CellContext`tp$$}, {
                "Pulse-off duration", $CellContext`td$$}, {"frequency", 
                 N[1000/($CellContext`tp$$ + $CellContext`td$$)]}, {"duty", 
                 
                 N[$CellContext`tp$$ 
                  100/($CellContext`tp$$ + $CellContext`td$$)]}, {
                "Time step", $CellContext`\[CapitalDelta]t$$}}, {
               "---------------------"}, {{
                "Time", "N(S1)", "N(m=1)", "N(m=0)", "N(m=-1)", "N(S0)"}}, 
               Table[
                Join[{$CellContext`t}, 
                 Piecewise[{{
                    $CellContext`\[Eta][$CellContext`t, $CellContext`n$$, \
$CellContext`tp$$, $CellContext`td$$, $CellContext`Pow$$, $CellContext`A$$, \
$CellContext`W$$, $CellContext`g1$$, $CellContext`g0$$, $CellContext`gi$$, \
$CellContext`k1$$, $CellContext`k0$$, $CellContext`ki$$, \
$CellContext`\[Omega]$$], $CellContext`t < $CellContext`tp$$ + \
$CellContext`td$$}, {
                    $CellContext`\[Eta][$CellContext`t - $CellContext`tp$$ - \
$CellContext`td$$, $CellContext`n$$, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], $CellContext`t >= \
$CellContext`tp$$ + $CellContext`td$$}}]], {$CellContext`t, 0, 
                 2 ($CellContext`tp$$ + $CellContext`td$$), $CellContext`\
\[CapitalDelta]t$$}]], "Table"]; Null, ImageSize -> {200, 50}]}, 
          ListPlot[
           Evaluate[
            Table[
             Dot[
              $CellContext`\[CapitalOmega][
              0, $CellContext`nn, $CellContext`tp$$, $CellContext`td$$, \
$CellContext`Pow$$, $CellContext`A$$, $CellContext`W$$, $CellContext`g1$$, \
$CellContext`g0$$, $CellContext`gi$$, $CellContext`k1$$, $CellContext`k0$$, \
$CellContext`ki$$, $CellContext`\[Omega]$$], $CellContext`TripletDiff], \
{$CellContext`nn, 1, 30}]], Frame -> True, 
           FrameLabel -> {"number of cycle", " Start TripleDiff"}, ImageSize -> 
           500, Joined -> True, PlotRange -> All, 
           GridLines -> {Automatic, Automatic}, PlotLabel -> 
           Style["The Triplet Diff vs # of cycle ", Bold, Red, 16]]}]], 
      "Specifications" :> {{{$CellContext`Pow$$, 1, "Power"}, 0, 10, 
         Appearance -> 
         "Labeled"}, {{$CellContext`A$$, 42.55, 
          "Einstein \!\(\*SubscriptBox[\(B\), \(12\)]\)"}, 0, 100, Appearance -> 
         "Labeled"}, {{$CellContext`W$$, 10, 
          "\!\(\*SubscriptBox[\(S\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(1\)]\)/Power"}, 0, 10, Appearance -> 
         "Labeled"}, {{$CellContext`g1$$, 0.001863, 
          "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)"}, 0, 0.1, Appearance -> 
         "Labeled"}, {{$CellContext`g0$$, 0.04, 
          "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(0\)]\)"}, 0, 1, Appearance -> 
         "Labeled"}, {{$CellContext`gi$$, 0.001863, 
          "\!\(\*SubscriptBox[\(S\), \(1\)]\)->\!\(\*SubscriptBox[\(m\), \
\(1\)]\)"}, 0, 0.1, Appearance -> 
         "Labeled"}, {{$CellContext`k1$$, 0.0118, 
          "\!\(\*SubscriptBox[\(m\), \(1\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)"}, 0, 1, Appearance -> 
         "Labeled"}, {{$CellContext`k0$$, 0.04, 
          "\!\(\*SubscriptBox[\(m\), \(0\)]\)->\!\(\*SubscriptBox[\(S\), \
\(0\)]\)"}, 0, 1, Appearance -> 
         "Labeled"}, {{$CellContext`ki$$, 0.0118, 
          "\!\(\*SubscriptBox[\(m\), \(-1\)]\)->\!\(\*SubscriptBox[\(S\), \(0\
\)]\)"}, 0, 1, Appearance -> 
         "Labeled"}, {{$CellContext`\[Omega]$$, 0.0001, "Thermal Mix"}, 
         0.0001, 0.01, Appearance -> 
         "Labeled"}, {{$CellContext`n$$, 30, "# cycle"}, 1, 100, 1, 
         Appearance -> "Labeled"}, {{$CellContext`tp$$, 80, "pulse duration"},
          0, 150, Appearance -> 
         "Labeled"}, {{$CellContext`td$$, 200, "pulse-off duration"}, 0, 300, 
         Appearance -> 
         "Labeled"}, {{$CellContext`\[CapitalDelta]t$$, 1, "Time step"}, 0.1, 
         5, 0.1, Appearance -> "Labeled"}}, 
      "Options" :> {ContinuousAction -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{14113., {484., 489.}},
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
  3.6055861919334908`*^9, 3.605586431561616*^9, 3.605586624749683*^9, 
   3.60558679281091*^9, 3.605586943760786*^9, 3.6060162176312428`*^9, 
   3.6060163416595783`*^9, 3.606016392867153*^9, 3.6060166252308893`*^9, {
   3.6060167276869802`*^9, 3.606016749452385*^9}, 3.606016867461108*^9, 
   3.6060170146924677`*^9, 3.6060170986465063`*^9, 3.6060172047219687`*^9, 
   3.6060172610341377`*^9, 3.60601735562853*^9, 3.606017498777774*^9, 
   3.606017702657569*^9, 3.606017805209425*^9, 3.6060181409895906`*^9, 
   3.606018213641788*^9, 3.606018341621022*^9, 3.6060185322902737`*^9, 
   3.606018566524439*^9, 3.606018612690508*^9, 3.606018650004396*^9, {
   3.606018694178714*^9, 3.606018718163109*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1211, 730},
WindowMargins->{{14, Automatic}, {Automatic, 10}},
ShowSelection->True,
CellContext->Notebook,
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
Cell[CellGroupData[{
Cell[1445, 38, 55107, 1214, 3053, "Input"],
Cell[56555, 1254, 7748, 198, 43, "Output"],
Cell[64306, 1454, 28375, 533, 990, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zwTKMymYG5gfsAgyex#H8JWI *)
