import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LexEintrag extends StatelessWidget{
  final String titel;
  String newdef = '';
  List<String> newkey = [];
  String newimage = '';
  String newimagesub = '';

  LexEintrag({
    Key? key,
    required this.titel,
  }) : super(key: key);

  String getdef(String titel){
    String newdef = '';

    switch(titel){
      case 'Affinity Chromatography':
        newdef = Affinity_Chrom.def;
        break;
      case 'Formulation':
        newdef = Formulation.def;
        break;
      case 'Bioreactor':
        newdef = Bioreactor.def;
        break;
      case 'Allosteric Regulation':
        newdef = Allosteric_Regulation.def;
        break;
      case 'Bacterial Growth':
        newdef = Bacterial_Growth.def;
        break;
      case 'Batch Processing':
        newdef = Batch_Processing.def;
        break;
      case 'Chromatography':
        newdef = Chromatography.def;
        break;
      case 'Downstream Processing':
        newdef = Downstream_Processing.def;
        break;
      case 'Enzyme':
        newdef = Enzyme.def;
        break;
      case 'Hofmeister Series':
        newdef = Hofmeister.def;
        break;
      case 'Hydrophobic Interaction Chromatography':
        newdef = HIC.def;
        break;
      case 'Immobilization':
        newdef = Immobilization.def;
        break;
      case 'Ion Exchange Chromatography':
        newdef = IEX.def;
        break;
      case 'Ligand':
        newdef = Ligand.def;
        break;
      case 'Michaelis-Menten Kinetics':
        newdef = MMKinetics.def;
        break;
      case 'Osmotic Pressure':
        newdef = OsmoticPressure.def;
        break;
      case 'PCR':
        newdef = PCR.def;
        break;
      case 'Reversed Phase Chromatography':
        newdef = RPC.def;
        break;
      case 'Scale-Up':
        newdef = ScaleUp.def;
        break;
      case 'Size Exclusion Chromatography':
        newdef = SEC.def;
        break;
      case 'Upstream Processing':
        newdef = Upstream_Processing.def;
        break;
    }
    return newdef;
  }

  List<String> getkeys(String titel){
    List<String> newkey = [];

    switch(titel){
      case 'Affinity Chromatography':
        newkey= Affinity_Chrom.key_points;
        break;
      case 'Formulation':
        newkey = Formulation.key_points;
        break;
      case 'Bioreactor':
        newkey = Bioreactor.key_points;
        break;
      case 'Allosteric Regulation':
        newkey = Allosteric_Regulation.key_points;
        break;
      case 'Bacterial Growth':
        newkey = Bacterial_Growth.key_points;
        break;
      case 'Batch Processing':
        newkey = Batch_Processing.key_points;
        break;
      case 'Chromatography':
        newkey = Chromatography.key_points;
        break;
      case 'Downstream Processing':
        newkey = Downstream_Processing.key_points;
        break;
      case 'Enzyme':
        newkey = Enzyme.key_points;
        break;
      case 'Hofmeister Series':
        newkey = Hofmeister.key_points;
        break;
      case 'Hydrophobic Interaction Chromatography':
        newkey = HIC.key_points;
        break;
      case 'Immobilization':
        newkey = Immobilization.key_points;
        break;
      case 'Ion Exchange Chromatography':
        newkey = IEX.key_points;
        break;
      case 'Ligand':
        newkey = Ligand.key_points;
        break;
      case 'Michaelis-Menten Kinetics':
        newkey = MMKinetics.key_points;
        break;
      case 'Osmotic Pressure':
        newkey = OsmoticPressure.key_points;
        break;
      case 'PCR':
        newkey = PCR.key_points;
        break;
      case 'Reversed Phase Chromatography':
        newkey = RPC.key_points;
        break;
      case 'Scale-Up':
        newkey = ScaleUp.key_points;
        break;
      case 'Size Exclusion Chromatography':
        newkey = SEC.key_points;
        break;
      case 'Upstream Processing':
        newkey = Upstream_Processing.key_points;
        break;
    }
    return newkey;
  }

  String getimg(String titel){
    String newimg = '';

    switch(titel){
      case 'Affinity Chromatography':
        newimg = Affinity_Chrom.image;
        break;
      case 'Formulation':
        newimg = Formulation.image;
        break;
      case 'Bioreactor':
        newimg = Bioreactor.image;
        break;
      case 'Allosteric Regulation':
        newimg = Allosteric_Regulation.image;
        break;
      case 'Bacterial Growth':
        newimg = Bacterial_Growth.image;
        break;
      case 'Batch Processing':
        newimg = Batch_Processing.image;
        break;
      case 'Chromatography':
        newimg = Chromatography.image;
        break;
      case 'Downstream Processing':
        newimg = Downstream_Processing.image;
        break;
      case 'Enzyme':
        newimg = Enzyme.image;
        break;
      case 'Hofmeister Series':
        newimg = Hofmeister.image;
        break;
      case 'Hydrophobic Interaction Chromatography':
        newimg = HIC.image;
        break;
      case 'Immobilization':
        newimg = Immobilization.image;
        break;
      case 'Ion Exchange Chromatography':
        newimg = IEX.image;
        break;
      case 'Ligand':
        newimg = Ligand.image;
        break;
      case 'Michaelis-Menten Kinetics':
        newimg = MMKinetics.image;
        break;
      case 'Osmotic Pressure':
        newimg = OsmoticPressure.image;
        break;
      case 'PCR':
        newimg = PCR.image;
        break;
      case 'Reversed Phase Chromatography':
        newimg = RPC.image;
        break;
      case 'Scale-Up':
        newimg = ScaleUp.image;
        break;
      case 'Size Exclusion Chromatography':
        newimg = SEC.image;
        break;
      case 'Upstream Processing':
        newimg = Upstream_Processing.image;
        break;
    }
    return newimg;
  }

  String getimgsub(String titel){
    String newimgsub = '';

    switch(titel){
      case 'Affinity Chromatography':
        newimgsub = Affinity_Chrom.imagesub;
        break;
      case 'Formulation':
        newimgsub = Formulation.imagesub;
        break;
      case 'Bioreactor':
        newimgsub = Bioreactor.imagesub;
        break;
      case 'Allosteric Regulation':
        newimgsub = Allosteric_Regulation.imagesub;
        break;
      case 'Bacterial Growth':
        newimgsub = Bacterial_Growth.imagesub;
        break;
      case 'Batch Processing':
        newimgsub = Batch_Processing.imagesub;
        break;
      case 'Chromatography':
        newimgsub = Chromatography.imagesub;
        break;
      case 'Downstream Processing':
        newimgsub = Downstream_Processing.imagesub;
        break;
      case 'Enzyme':
        newimgsub = Enzyme.imagesub;
        break;
      case 'Hofmeister Series':
        newimgsub = Hofmeister.imagesub;
        break;
      case 'Hydrophobic Interaction Chromatography':
        newimgsub = HIC.imagesub;
        break;
      case 'Immobilization':
        newimgsub = Immobilization.imagesub;
        break;
      case 'Ion Exchange Chromatography':
        newimgsub = IEX.imagesub;
        break;
      case 'Ligand':
        newimgsub = Ligand.imagesub;
        break;
      case 'Michaelis-Menten Kinetics':
        newimgsub = MMKinetics.imagesub;
        break;
      case 'Osmotic Pressure':
        newimgsub = OsmoticPressure.imagesub;
        break;
      case 'PCR':
        newimgsub = PCR.imagesub;
        break;
      case 'Reversed Phase Chromatography':
        newimgsub = RPC.imagesub;
        break;
      case 'Scale-Up':
        newimgsub = ScaleUp.imagesub;
        break;
      case 'Size Exclusion Chromatography':
        newimgsub = SEC.imagesub;
        break;
      case 'Upstream Processing':
        newimgsub = Upstream_Processing.imagesub;
        break;
    }
    return newimgsub;
  }

  @override
  Widget build(BuildContext context){
    newdef = getdef(titel);
    newkey = getkeys(titel);
    newimage = getimg(titel);
    newimagesub = getimgsub(titel);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$titel',
        style: TextStyle(fontSize: 25)
        ),
      ),
      body:
      ListView(
        padding: EdgeInsets.all(16),
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 23),
                children: <TextSpan>[
                  (TextSpan(text: 'Definition',
                      style: TextStyle(fontWeight: FontWeight.bold)))
                ]
            ),
          ),
          Divider(
            height: 30,
            thickness: 5,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 22),
                children: <TextSpan>[
                TextSpan(text: 'The'),
                TextSpan(text: ' $titel ', style: (TextStyle(fontWeight: FontWeight.bold))),
                TextSpan(text: newdef)
                ]
            ),
          ),
          if(newkey[0] != '') Divider(
                height: 30,
                thickness: 5,
              ),
          if(newkey[0] != '') RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 23),
                    children: <TextSpan>[
                      (TextSpan(
                          text: newkey[0],
                          style: TextStyle(fontWeight: FontWeight.bold)))
                    ]),
              ),
          if(newkey[0] != '') Divider(),
          if(newkey[0] != '' ) for(int i = 1; i < newkey.length; i+=2)
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 22),
                  children: <TextSpan>[
                    TextSpan(
                        text: newkey[i], style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: newkey[i+1]
                    )
                  ]),
            ),
          if(newimage != '') Divider(
            height: 30,
            thickness: 5,
          ),
          if(newimage != '') Image.asset('$newimage'),
          if(newimagesub != '') Text(newimagesub)
        ]
      )
    );
  }
}

class Affinity_Chrom{
  static String def = 'or AC is a special type of chromatography, where the stationary phase consists of ligands that can have specific biological interactions with a target molecule in the mobile phase. The AC can be very specific to the target molecule and is able to process high volumes.';
  static List<String> key_points = ['Bind and Elute', 'Binding Interactions due to:','','','● hydrogen honding','','● electrostatic interactions','','● hydrophobic interactions','','● van der Waals forces', '', '● thiophilic interactions','','','Elution Strategies','','','● use of competitive ligands', '', '● change in pH', '','● change in ionic strength','','● change in polarity'];
  static String image = '';
  static String imagesub = '';
}

class Allosteric_Regulation{
  static String def = 'takes place when an enzyme is regulated through an effector that is not binding at the active site, but on a specific regulation site. The binding of a ligand on the so called allosteric enzyme can induce a conformational change that causes a change in activity.';
  static List<String> key_points = [''];
  static String image = '';
  static String imagesub = '';
}

class Bacterial_Growth{
  static String def = ' can be modeled with 4 different phases. The 1. phase is the lag phase, where the organisms adapt themselves to the new conditions. Then the exponential/log phase follows in which the bacteria is starting to reproduce through cell division. In this phase the highest growth rates are seen. The 3. phase is called the stationary phase, because the cell numbers stay constant as death rates and growth rates are equal due to a lack of nutrition or formation of inhibitory products. The last phase is Death, here the cell numbers decrease.';
  static List<String> key_points = [''];
  static String image = 'assets/Images/BacGrowth.png';
  static String imagesub = 'The bacterial growth with its 4 phases';
}

class Batch_Processing{
  static String def = 'is a specific mode of process where all the nutrients and substrate is added at the start of the process. No medium or cells/product is discharged until a chosen product concentration is reached.';
  static List<String> key_points = ['Considerations', 'Advantages:','','','● growth rates are near the maximum','','● simple and robust','','● simple sterilization','','','Disadvantages:','','','● constant adaption to changing conditions','','● possible product inhibition','','● unwanted byproducts'];
  static String image = 'assets/Images/BatchEq.PNG';
  static String imagesub = 'Equation (1) describes the concentration of biomass over time, while equation (2) describes the product concentration over time.';
}

class Bioreactor{
  static String def = 'is a vessel which is usually used to grow cells under controlled conditions. Those cells produce e.g. pharmaceuticals or are themselves the product. The CSTR (Continous Stirred Tank Reactor) is the most commonly used reactor type, but there are more and there are also different modes to run the process like batch, semi-batch and continuous processing.';
  static List<String> key_points = ['Requirements for a Bioreactor', 'Medium', ' - optimized for the reaction conditions', 'Sparger', ' - to supply the cells with oxygen if needed', 'Agitator', ' - to homogenize the medium', 'Buffers', ' - to control the pH in the medium', 'Jacket', ' - to supply/dissipate heat', 'Foam Control', ' - to prevent foaming', 'Baffle', ' - to prevent vortex formations through stirring'];
  static String image = 'assets/Images/Bioreactor_principle.png';
  static String imagesub = 'A simple scheme of a bioreactor';
}

class Chromatography{
  static String def = 'is a process step that is used e.g. for the purification or analysis of pharmaceuticals. A chromatography system contains a column with a stationary phase. This phase can interact with a mobile phase which can be a mixture of different substances. Due to different affinities of the substances to the stationary phase, it is possible to separate these substances. A typical chromatography can be divided in 3 steps, at first the molecules bind to ligands of the stationary phase, then the elution (gradient or step elution) follows where e.g. the pH changes and after the binding and elution steps, the chromatography has to be recovered to get to its initial state. For different cases, different columns like monolithic columns (analytical use), packed columns (analytical or preparative use) or membrane stacks (preparative use) are utilized. There are also different types of Chromatography as seen below.';
  static List<String> key_points = ['Types of Chromatography', 'SEC', ' - Size Exclusion Chromatography', 'IEX', ' - Ion Exchange Chromatography', 'HIC', ' - Hydrophobic Interaction Chromatography', 'RP', ' - Reversed Phase Chromatography', 'AC', ' - Affinity Chromatography'];
  static String image = 'assets/Images/ChromaExample.PNG';
  static String imagesub = 'Exemplary RP Chromatography process using a gradient elution. Source: https://www.cytivalifesciences.com/en/us/support/handbooks';
}

class Downstream_Processing{
  static String def = 'or DSP describes all the process steps after the fermentation. This often starts with a solid - liquid separation through e.g. centrifugation, then different capture and purification steps follow, where the target molecule is concentrated and stabilized. In these steps impurities from the bulk or same-class and regulatory impurities are removed. Chromatography is widely used as a polishing step to remove trace contaminants to reach the desired purity. At the end of the process the formulation takes place to get a marketable product.';
  static List<String> key_points = ['DSP Guidelines','Remove the largest quantity first:','','','High volumes lead to large costs','','','Know your product:','','','Exploit differences between the product and the impurities, e.g. size and shape or specific affinities','','','Use different separation bases in successive steps','','','This should be common sense','','','Keep it simple','','','During the process development one should consider that the process will be scaled up'];
  static String image = '';
  static String imagesub = '';
}

class Enzyme{
  static String def = 'is a protein that acts as a biocatalyst. It accelerates chemical reactions by lowering the activation energy. Enzymes are essential to control the metabolism. Enzymes are also used in the industry, a comparison of enzymes and chemical catalysts is seen below';
  static List<String> key_points = ['Advantages and Disadvantages','Advantages:','','','● reaction specificity','','● substrate specifity', '', '● regio specificity','','● stereo specificity', '','● mild reaction conditions','','','Disadvantages:','','','● sensible to temperatures, pH, ions...','','● can be expensive', '','● can be in need of expensive cofactors'];
  static String image = '';
  static String imagesub = '';
}

class Formulation{
  static String def = 'is one of the last steps in the production of pharmaceuticals. The purified product is processed to achieve a safe, stable and in general marketable product.';
  static List<String> key_points = ['What is used?', 'Buffers',' - to change solubility', 'Glucose', ' - to stabilize protein conformation', 'Surfactants',' - to prevent aggregation', 'Antioxidants',' - the name says it all', 'Lyophilisation',' - to increase stability due to water removal'];
  static String image = '';
  static String imagesub = '';
}

class Hofmeister{
  static String def = 'differentiates salts by their precipitation effects in chaotropic and kosmotrophic. Chaotropic salts weaken hydrophobic interactions and can cause denaturation of proteins, while kosmotropic salts stabilize the proteins by strengthening their hydrophobic interactions. The Hofmeister - Series below ranks the salts from kosmotropic (left) to chaotropic (right).';
  static List<String> key_points = [''];
  static String image = 'assets/Images/Hofmeister.PNG';
  static String imagesub = 'The Hofmeister - Series. \nSource: Zhang, Yanjie, and Paul S. Cremer. "Interactions between macromolecules and ions: the Hofmeister series." Current opinion in chemical biology 10.6 (2006): 658‐663.';
}

class HIC{
  static String def = 'or HIC is a special type of chromatography, where the stationary phase consists of hydrophobic surfaces. Hydrophobic areas of a protein can interact with the HIC medium and bind. \n\nThe high surface tension of water at the air-water interface occurs due to a highly ordered structure of water molecules at the surface. A similar effect is seen around hydrophobic surfaces in water, a highly ordered shell of water molecules surrounds the hydrophobic areas. Because those highly ordered shells are thermodynamically less favourable to less ordered water molecules, hydrophobic surfaces merge to decrease the amount of ordered water molecules. \n\nThe hydrophobic interaction is stronger at high salt concentrations. Therefore, in the elution step the salt concentration is reduced, so that the hydrophobic proteins elute one after another.';
  static List<String> key_points = ['Bind and Elute', 'Binding Interactions due to:','','','● the formation of thermodynamical favourable states','','','Elution Strategies','','','● lowering ionic strength'];
  static String image = '';
  static String imagesub = '';
}

class Immobilization{
  static String def = 'of enzymes or whole cells is widely used in the industry because it comes with some major advantages. When immobilized, proteins have greater thermal and operational stability and do not dissolve that much which can make purification steps more simple. Immobilized enzymes/cells can also be better recycled to reduce production costs.';
  static List<String> key_points = ['Immobilization Methods','Cross-Linkage', ' - a covalent bond between biocatalysts', 'Covalent Bond', ' - a covalent bond between the biocatalyst and a solid support', 'Entrapment', ' - the biocatalyst is trapped within an insoluble substance', 'Adsorption', ' - the biocatalyst binds to a solid support e.g. with electrostatic affinity to each other'];
  static String image = '';
  static String imagesub = '';
}

class IEX{
  static String def = 'or IEX is a special type of chromatography, where the stationary phase consists of ligands with functional groups that are positively/negatively charged and accordingly called anion/cation exchanger. Depending on the pH, proteins can have different surface net charges. Below their isoelectric point the proteins are positively charged and only bind to cation exchangers, above their isoelectric point the proteins are negatively charged and only bind to anion exchangers. Therefore, the control of the pH value is key for a successful IEX. Beside the usual Bind & Elute mode, a flow through mode can also be used, where the target molecule is flowing through the column and the contaminants bind to the ion exchangers.';
  static List<String> key_points = ['Bind and Elute', 'Binding Interactions due to:','','','● different charges of the target molecule and the stationary phase','','','Elution Strategies','','','● increasing ionic strength with higher salt concentrations'];
  static String image = '';
  static String imagesub = '';
}

class Ligand{
  static String def = 'is a class of substances in biochemistry that can build a (most commonly reversible) complex with a biomolecule to achieve a specific purpose. For example, the binding of a ligand to a protein can cause a conformational change of the protein.';
  static List<String> key_points = [''];
  static String image = '';
  static String imagesub = '';
}

class MMKinetics{
  static String def = 'is a model to describe the reaction kinetics of an enzyme and can be quite reliable when looked at single substrate reactions.';
  static List<String> key_points = ['Assumptions', '','● one enzyme for one substrate to form one enzyme-substrate complex', '','● the enzyme-substrate complex concentration is constant','','● back reactions are negligible','','● substrate concentration >> enzyme concentration'];
  static String image = 'assets/Images/MMKinetics.PNG';
  static String imagesub = 'The Michaelis-Menten Euqation with v being the reaction rate, v\u2098\u2090\u2093 being the maximum reaction rate, K\u2098 being the Michaelis constant and c\u209B being the concentration of substrate.';
}

class OsmoticPressure{
  static String def = 'is a result of osmosis. Osmosis is the process of a solvent passing a semi-permeable membrane to a solution with higher solute concentrations driven by diffusion. Because the solute can not pass the membrane the pressure increases because the solvent is flowing in only one direction until an equilibrium is reached. This pressure is called the osmotic pressure.';
  static List<String> key_points = [''];
  static String image = 'assets/Images/Osmosis_diagram.png';
  static String imagesub = 'Osmosis that led to osmotic pressure, which is equalized by the hydrostatic pressure of the left part of the U-shaped tube.';
}

class PCR{
  static String def = 'or Polymerase-Chain-Reaction is a technique to multiply a DNA sample. The reaction is performed in a thermal cycler in small reaction tubes that contains:\n● a DNA sample\n● a buffer solution\n● DNA primers\n● DNA polymerase\n● nucleotides to build new DNA strands\n● Mg²\u207A';
  static List<String> key_points = ['PCR Cycle','1. Denaturation','','','The chamber is heated up to 94-98 °C for 20-30 seconds to cause a denaturation of the DNA sample.\n','2. Primer Annealing','','','The camber cools down to 50-65 °C for 20-40 seconds so that the primers can anneal to the single stranded DNA.\n','3. Elongation','','','The chamber is heated to about 72 °C, depending on the used DNA polymerase. The synthesis of the new DNA strands takes place in this step.\n','4. Repeat','','','The amount of double-stranded DNA has doubled and the cycle can be repeated.'];
  static String image = '';
  static String imagesub = '';
}

class RPC{
  static String def = 'or RPC is a special type of chromatography, where the stationary phase consists of hydrophobic surfaces. Hydrophobic areas of a protein can interact with the RPC medium and bind. This is very similar to a Hydrophobic Interaction Chromatography, but in this case the hydrophobic interactions between the stationary phase and the proteins are usually stronger. Therefore, lowering ionic strength for the elution might not be enough and an organic modifier is used for the elution step. More organic modifier can lead to a more denaturating environment compared to the HIC.';
  static List<String> key_points = ['Bind and Elute', 'Binding Interactions due to:','','','● the formation of thermodynamical favourable states (see HIC)','','','Elution Strategies','','','● reverse hydrophobic interactions with non polar organic solvents'];
  static String image = '';
  static String imagesub = '';
}

class ScaleUp{
  static String def = 'describes the process of increasing the scale from laboratory scale to production scale. Especially the fermentation or bioreaction encounters different problems.\n\nMore inoculum steps have to be integrated in the process before the reaction in the production reactor can be started.\n\nThe Amount of contaminating microorganisms which are allowed in a fermentation vessel is independent from the volume of the respective vessel, they are given in absolute numbers. For this reason, the sterilization is becoming more difficult with increasing volume.\n\nThere are also difficulties with agitation and aeration in bigger volumes, especially due to increasing heterogeneity. Those environmental problems are seen below.';
  static List<String> key_points = ['Problematic Reaction Parameters','','● pH','','● temperature','','● O\u2082 transfer rate and concentrations','','● CO\u2082 removal rate and concentration','','● nutrient availability','','● shear stress','','● foaming'];
  static String image = '';
  static String imagesub = '';
}

class SEC{
  static String def = 'or SEC is a special type of chromatography, where the column consists of a packed bad of porous spheres. Those spheres within the gel filtration medium are inert and chemical stable. The molecules in the mobile phase move with the buffer through the column, where the molecules diffuse into and out of the pores. The smaller the molecule the deeper it moves into the matrix and the longer it needs to reach the end of the column. The bigger the molecule the faster it goes through the column. ';
  static List<String> key_points = ['Applications','Group Separations','','','● removing small Molecules','','● adjust pH and buffer','','','Fractionating','','','● removing dimers and aggregates','','','Size Estimation','','','● free but imprecise information'];
  static String image = '';
  static String imagesub = '';
}

class Upstream_Processing {
  static String def = 'or USP describes all the process steps before the fermentation. This includes vial thawing of starter cultures and several inoculum steps with increasing volumes. To increase the volume different reactor types are used, from shake flasks, wave bioreactors to small bioreactors until the cell mass is transferred to the production bioreactor, where the bioreaction takes place.';
  static List<String> key_points = [''];
  static String image = '';
  static String imagesub = '';
}
