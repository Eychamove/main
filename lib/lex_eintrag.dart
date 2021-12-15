import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LexEintragPage extends StatefulWidget {
  final LexikonEintrag lexikonEintrag;

  const LexEintragPage({
    Key? key,
    required this.lexikonEintrag,
  }) : super(key: key);

  @override
  State<LexEintragPage> createState() => _LexEintragPageState();
}

class _LexEintragPageState extends State<LexEintragPage> {
  // maybe widget.lexikonEintrag Felder zu Variablen machen weil die so oft vorkommen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.lexikonEintrag.title,
            style: const TextStyle(fontSize: 25)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 23),
                children: <TextSpan>[
                  (TextSpan(
                      text: 'Definition',
                      style: TextStyle(fontWeight: FontWeight.bold)))
                ]),
          ),
          const Divider(
            height: 30,
            thickness: 5,
          ),
          RichText(
            text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 22),
                children: <TextSpan>[
                  const TextSpan(text: 'The '),
                  TextSpan(
                      text: widget.lexikonEintrag.title,
                      style: (const TextStyle(fontWeight: FontWeight.bold))),
                  TextSpan(text: widget.lexikonEintrag.def)
                ]),
          ),
          if (widget.lexikonEintrag.keyPoints != null) ...[
            const Divider(
              height: 30,
              thickness: 5,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 23),
                  children: <TextSpan>[
                    (TextSpan(
                        text: widget.lexikonEintrag.keyPoints![0],
                        style: const TextStyle(fontWeight: FontWeight.bold)))
                  ]),
            ),
            const Divider(),
            for (int i = 1; i < widget.lexikonEintrag.keyPoints!.length; i += 2)
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 22),
                    children: <TextSpan>[
                      TextSpan(
                          text: widget.lexikonEintrag.keyPoints![i],
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: widget.lexikonEintrag.keyPoints![i + 1])
                    ]),
              ),
          ],
          if (widget.lexikonEintrag.image != null) ...[
            const Divider(
              height: 30,
              thickness: 5,
            ),
            if (widget.lexikonEintrag.image != null)
              Image.asset(widget.lexikonEintrag.image!),
          ],
          if (widget.lexikonEintrag.imagesub != null)
            Text(widget.lexikonEintrag.imagesub!)
        ],
      ),
    );
  }
}

class LexikonEintrag {
  final String title;
  final String def;
  final List<String>? keyPoints;
  final String? image;
  final String? imagesub;

  LexikonEintrag(
      {required this.title,
      required this.def,
      this.keyPoints,
      this.image,
      this.imagesub});

  static List<LexikonEintrag> favObjs = [
    LexikonEintrag(
      title: 'Affinity Chrom',
      def:
          'or AC is a special type of chromatography, where the stationary phase consists of ligands that can have specific biological interactions with a target molecule in the mobile phase. The AC can be very specific to the target molecule and is able to process high volumes.',
      keyPoints: [
        'Bind and Elute',
        'Binding Interactions due to:',
        '',
        '',
        '● hydrogen honding',
        '',
        '● electro interactions',
        '',
        '● hydrophobic interactions',
        '',
        '● van der Waals forces',
        '',
        '● thiophilic interactions',
        '',
        '',
        'Elution Strategies',
        '',
        '',
        '● use of competitive ligands',
        '',
        '● change in pH',
        '',
        '● change in ionic strength',
        '',
        '● change in polarity'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Allosteric Regulation',
      def:
          'takes place when an enzyme is regulated through an effector that is not binding at the active site, but on a specific regulation site. The binding of a ligand on the so called allosteric enzyme can induce a conformational change that causes a change in activity.',
      keyPoints: [''],
      imagesub: '',
    ),
  ];

  static List<LexikonEintrag> lexikonEintraege = [
    LexikonEintrag(
      title: 'Affinity Chrom',
      def:
          'or AC is a special type of chromatography, where the stationary phase consists of ligands that can have specific biological interactions with a target molecule in the mobile phase. The AC can be very specific to the target molecule and is able to process high volumes.',
      keyPoints: [
        'Bind and Elute',
        'Binding Interactions due to:',
        '',
        '',
        '● hydrogen honding',
        '',
        '● electro interactions',
        '',
        '● hydrophobic interactions',
        '',
        '● van der Waals forces',
        '',
        '● thiophilic interactions',
        '',
        '',
        'Elution Strategies',
        '',
        '',
        '● use of competitive ligands',
        '',
        '● change in pH',
        '',
        '● change in ionic strength',
        '',
        '● change in polarity'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Allosteric Regulation',
      def:
          'takes place when an enzyme is regulated through an effector that is not binding at the active site, but on a specific regulation site. The binding of a ligand on the so called allosteric enzyme can induce a conformational change that causes a change in activity.',
      keyPoints: [''],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Bacterial Growth',
      def:
          ' can be modeled with 4 different phases. The 1. phase is the lag phase, where the organisms adapt themselves to the new conditions. Then the exponential/log phase follows in which the bacteria is starting to reproduce through cell division. In this phase the highest growth rates are seen. The 3. phase is called the stationary phase, because the cell numbers stay constant as death rates and growth rates are equal due to a lack of nutrition or formation of inhibitory products. The last phase is Death, here the cell numbers decrease.',
      keyPoints: [''],
      image: 'assets/Images/BacGrowth.png',
      imagesub: 'The bacterial growth with its 4 phases',
    ),
    LexikonEintrag(
      title: 'Batch Processing',
      def:
          'is a specific mode of process where all the nutrients and substrate is added at the start of the process. No medium or cells/product is discharged until a chosen product concentration is reached.',
      keyPoints: [
        'Considerations',
        'Advantages:',
        '',
        '',
        '● growth rates are near the maximum',
        '',
        '● simple and robust',
        '',
        '● simple sterilization',
        '',
        '',
        'Disadvantages:',
        '',
        '',
        '● constant adaption to changing conditions',
        '',
        '● possible product inhibition',
        '',
        '● unwanted byproducts'
      ],
      image: 'assets/Images/BatchEq.PNG',
      imagesub:
          'Equation (1) describes the concentration of biomass over time, while equation (2) describes the product concentration over time.',
    ),
    LexikonEintrag(
      title: 'Bioreactor',
      def:
          'is a vessel which is usually used to grow cells under controlled conditions. Those cells produce e.g. pharmaceuticals or are themselves the product. The CSTR (Continous Stirred Tank Reactor) is the most commonly used reactor type, but there are more and there are also different modes to run the process like batch, semi-batch and continuous processing.',
      keyPoints: [
        'Requirements for a Bioreactor',
        'Medium',
        ' - optimized for the reaction conditions',
        'Sparger',
        ' - to supply the cells with oxygen if needed',
        'Agitator',
        ' - to homogenize the medium',
        'Buffers',
        ' - to control the pH in the medium',
        'Jacket',
        ' - to supply/dissipate heat',
        'Foam Control',
        ' - to prevent foaming',
        'Baffle',
        ' - to prevent vortex formations through stirring'
      ],
      image: 'assets/Images/Bioreactor_principle.png',
      imagesub: 'A simple scheme of a bioreactor',
    ),
    LexikonEintrag(
      title: 'Chromatography',
      def:
          'is a process step that is used e.g. for the purification or analysis of pharmaceuticals. A chromatography system contains a column with a stationary phase. This phase can interact with a mobile phase which can be a mixture of different substances. Due to different affinities of the substances to the stationary phase, it is possible to separate these substances. A typical chromatography can be divided in 3 steps, at first the molecules bind to ligands of the stationary phase, then the elution (gradient or step elution) follows where e.g. the pH changes and after the binding and elution steps, the chromatography has to be recovered to get to its initial state. For different cases, different columns like monolithic columns (analytical use), packed columns (analytical or preparative use) or membrane stacks (preparative use) are utilized. There are also different types of Chromatography as seen below.',
      keyPoints: [
        'Types of Chromatography',
        'SEC',
        ' - Size Exclusion Chromatography',
        'IEX',
        ' - Ion Exchange Chromatography',
        'HIC',
        ' - Hydrophobic Interaction Chromatography',
        'RP',
        ' - Reversed Phase Chromatography',
        'AC',
        ' - Affinity Chromatography'
      ],
      image: 'assets/Images/ChromaExample.PNG',
      imagesub:
          'Exemplary RP Chromatography process using a gradient elution. Source: https://www.cytivalifesciences.com/en/us/support/handbooks',
    ),
    LexikonEintrag(
      title: 'Downstream Processing',
      def:
          'or DSP describes all the process steps after the fermentation. This often starts with a solid - liquid separation through e.g. centrifugation, then different capture and purification steps follow, where the target molecule is concentrated and stabilized. In these steps impurities from the bulk or same-class and regulatory impurities are removed. Chromatography is widely used as a polishing step to remove trace contaminants to reach the desired purity. At the end of the process the formulation takes place to get a marketable product.',
      keyPoints: [
        'DSP Guidelines',
        'Remove the largest quantity first:',
        '',
        '',
        'High volumes lead to large costs',
        '',
        '',
        'Know your product:',
        '',
        '',
        'Exploit differences between the product and the impurities, e.g. size and shape or specific affinities',
        '',
        '',
        'Use different separation bases in successive steps',
        '',
        '',
        'This should be common sense',
        '',
        '',
        'Keep it simple',
        '',
        '',
        'During the process development one should consider that the process will be scaled up'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Enzyme',
      def:
          'is a protein that acts as a biocatalyst. It accelerates chemical reactions by lowering the activation energy. Enzymes are essential to control the metabolism. Enzymes are also used in the industry, a comparison of enzymes and chemical catalysts is seen below',
      keyPoints: [
        'Advantages and Disadvantages',
        'Advantages:',
        '',
        '',
        '● reaction specificity',
        '',
        '● substrate specifity',
        '',
        '● regio specificity',
        '',
        '● stereo specificity',
        '',
        '● mild reaction conditions',
        '',
        '',
        'Disadvantages:',
        '',
        '',
        '● sensible to temperatures, pH, ions...',
        '',
        '● can be expensive',
        '',
        '● can be in need of expensive cofactors'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Formulation',
      def:
          'is one of the last steps in the production of pharmaceuticals. The purified product is processed to achieve a safe, stable and in general marketable product.',
      keyPoints: [
        'What is used?',
        'Buffers',
        ' - to change solubility',
        'Glucose',
        ' - to stabilize protein conformation',
        'Surfactants',
        ' - to prevent aggregation',
        'Antioxidants',
        ' - the name says it all',
        'Lyophilisation',
        ' - to increase stability due to water removal'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'hofmeister',
      def:
          'differentiates salts by their precipitation effects in chaotropic and kosmotrophic. Chaotropic salts weaken hydrophobic interactions and can cause denaturation of proteins, while kosmotropic salts stabilize the proteins by strengthening their hydrophobic interactions. The Hofmeister - Series below ranks the salts from kosmotropic (left) to chaotropic (right).',
      keyPoints: [''],
      image: 'assets/Images/Hofmeister.PNG',
      imagesub:
          'The Hofmeister - Series. \nSource: Zhang, Yanjie, and Paul S. Cremer. "Interactions between macromolecules and ions: the Hofmeister series." Current opinion in chemical biology 10.6 (2006): 658‐663.',
    ),
    LexikonEintrag(
      title: 'HIC',
      def:
          'or HIC is a special type of chromatography, where the stationary phase consists of hydrophobic surfaces. Hydrophobic areas of a protein can interact with the HIC medium and bind. \n\nThe high surface tension of water at the air-water interface occurs due to a highly ordered structure of water molecules at the surface. A similar effect is seen around hydrophobic surfaces in water, a highly ordered shell of water molecules surrounds the hydrophobic areas. Because those highly ordered shells are thermodynamically less favourable to less ordered water molecules, hydrophobic surfaces merge to decrease the amount of ordered water molecules. \n\nThe hydrophobic interaction is stronger at high salt concentrations. Therefore, in the elution step the salt concentration is reduced, so that the hydrophobic proteins elute one after another.',
      keyPoints: [
        'Bind and Elute',
        'Binding Interactions due to:',
        '',
        '',
        '● the formation of thermodynamical favourable states',
        '',
        '',
        'Elution Strategies',
        '',
        '',
        '● lowering ionic strength'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Immobilization',
      def:
          'of enzymes or whole cells is widely used in the industry because it comes with some major advantages. When immobilized, proteins have greater thermal and operational stability and do not dissolve that much which can make purification steps more simple. Immobilized enzymes/cells can also be better recycled to reduce production costs.',
      keyPoints: [
        'Immobilization Methods',
        'Cross-Linkage',
        ' - a covalent bond between biocatalysts',
        'Covalent Bond',
        ' - a covalent bond between the biocatalyst and a solid support',
        'Entrapment',
        ' - the biocatalyst is trapped within an insoluble substance',
        'Adsorption',
        ' - the biocatalyst binds to a solid support e.g. with electro affinity to each other'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'IEX ',
      def:
          'or IEX is a special type of chromatography, where the stationary phase consists of ligands with functional groups that are positively/negatively charged and accordingly called anion/cation exchanger. Depending on the pH, proteins can have different surface net charges. Below their isoelectric point the proteins are positively charged and only bind to cation exchangers, above their isoelectric point the proteins are negatively charged and only bind to anion exchangers. Therefore, the control of the pH value is key for a successful IEX. Beside the usual Bind & Elute mode, a flow through mode can also be used, where the target molecule is flowing through the column and the contaminants bind to the ion exchangers.',
      keyPoints: [
        'Bind and Elute',
        'Binding Interactions due to:',
        '',
        '',
        '● different charges of the target molecule and the stationary phase',
        '',
        '',
        'Elution Strategies',
        '',
        '',
        '● increasing ionic strength with higher salt concentrations'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Ligand',
      def:
          'is a class of substances in biochemistry that can build a (most commonly reversible) complex with a biomolecule to achieve a specific purpose. For example, the binding of a ligand to a protein can cause a conformational change of the protein.',
      keyPoints: [''],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'MMKinetics',
      def:
          'is a model to describe the reaction kinetics of an enzyme and can be quite reliable when looked at single substrate reactions.',
      keyPoints: [
        'Assumptions',
        '',
        '● one enzyme for one substrate to form one enzyme-substrate complex',
        '',
        '● the enzyme-substrate complex concentration is constant',
        '',
        '● back reactions are negligible',
        '',
        '● substrate concentration >> enzyme concentration'
      ],
      image: 'assets/Images/MMKinetics.PNG',
      imagesub:
          'The Michaelis-Menten Euqation with v being the reaction rate, v\u2098\u2090\u2093 being the maximum reaction rate, K\u2098 being the Michaelis constant and c\u209B being the concentration of substrate.',
    ),
    LexikonEintrag(
      title: 'Osmotic Pressure',
      def:
          'is a result of osmosis. Osmosis is the process of a solvent passing a semi-permeable membrane to a solution with higher solute concentrations driven by diffusion. Because the solute can not pass the membrane the pressure increases because the solvent is flowing in only one direction until an equilibrium is reached. This pressure is called the osmotic pressure.',
      keyPoints: [''],
      image: 'assets/Images/Osmosis_diagram.png',
      imagesub:
          'Osmosis that led to osmotic pressure, which is equalized by the hydro pressure of the left part of the U-shaped tube.',
    ),
    LexikonEintrag(
      title: 'PCR',
      def:
          'or Polymerase-Chain-Reaction is a technique to multiply a DNA sample. The reaction is performed in a thermal cycler in small reaction tubes that contains:\n● a DNA sample\n● a buffer solution\n● DNA primers\n● DNA polymerase\n● nucleotides to build new DNA strands\n● Mg²\u207A',
      keyPoints: [
        'PCR Cycle',
        '1. Denaturation',
        '',
        '',
        'The chamber is heated up to 94-98 °C for 20-30 seconds to cause a denaturation of the DNA sample.\n',
        '2. Primer Annealing',
        '',
        '',
        'The camber cools down to 50-65 °C for 20-40 seconds so that the primers can anneal to the single stranded DNA.\n',
        '3. Elongation',
        '',
        '',
        'The chamber is heated to about 72 °C, depending on the used DNA polymerase. The synthesis of the new DNA strands takes place in this step.\n',
        '4. Repeat',
        '',
        '',
        'The amount of double-stranded DNA has doubled and the cycle can be repeated.'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'RPC',
      def:
          'or RPC is a special type of chromatography, where the stationary phase consists of hydrophobic surfaces. Hydrophobic areas of a protein can interact with the RPC medium and bind. This is very similar to a Hydrophobic Interaction Chromatography, but in this case the hydrophobic interactions between the stationary phase and the proteins are usually stronger. Therefore, lowering ionic strength for the elution might not be enough and an organic modifier is used for the elution step. More organic modifier can lead to a more denaturating environment compared to the HIC.',
      keyPoints: [
        'Bind and Elute',
        'Binding Interactions due to:',
        '',
        '',
        '● the formation of thermodynamical favourable states (see HIC)',
        '',
        '',
        'Elution Strategies',
        '',
        '',
        '● reverse hydrophobic interactions with non polar organic solvents'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Scale Up',
      def:
          'describes the process of increasing the scale from laboratory scale to production scale. Especially the fermentation or bioreaction encounters different problems.\n\nMore inoculum steps have to be integrated in the process before the reaction in the production reactor can be started.\n\nThe Amount of contaminating microorganisms which are allowed in a fermentation vessel is independent from the volume of the respective vessel, they are given in absolute numbers. For this reason, the sterilization is becoming more difficult with increasing volume.\n\nThere are also difficulties with agitation and aeration in bigger volumes, especially due to increasing heterogeneity. Those environmental problems are seen below.',
      keyPoints: [
        'Problematic Reaction Parameters',
        '',
        '● pH',
        '',
        '● temperature',
        '',
        '● O\u2082 transfer rate and concentrations',
        '',
        '● CO\u2082 removal rate and concentration',
        '',
        '● nutrient availability',
        '',
        '● shear stress',
        '',
        '● foaming'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'SEC',
      def:
          'or SEC is a special type of chromatography, where the column consists of a packed bad of porous spheres. Those spheres within the gel filtration medium are inert and chemical stable. The molecules in the mobile phase move with the buffer through the column, where the molecules diffuse into and out of the pores. The smaller the molecule the deeper it moves into the matrix and the longer it needs to reach the end of the column. The bigger the molecule the faster it goes through the column. ',
      keyPoints: [
        'Applications',
        'Group Separations',
        '',
        '',
        '● removing small Molecules',
        '',
        '● adjust pH and buffer',
        '',
        '',
        'Fractionating',
        '',
        '',
        '● removing dimers and aggregates',
        '',
        '',
        'Size Estimation',
        '',
        '',
        '● free but imprecise information'
      ],
      imagesub: '',
    ),
    LexikonEintrag(
      title: 'Upstream Processing',
      def:
          'or USP describes all the process steps before the fermentation. This includes vial thawing of starter cultures and several inoculum steps with increasing volumes. To increase the volume different reactor types are used, from shake flasks, wave bioreactors to small bioreactors until the cell mass is transferred to the production bioreactor, where the bioreaction takes place.',
      keyPoints: [''],
      imagesub: '',
    ),
  ];
}
