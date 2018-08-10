resource NounMorphoVot = ParamX ** open Prelude,Predef in {

param
  --Number = Sg | Pl ;
  Case = nominative | genitive | partitive | illative | inessive | elative | allative | adessive | ablative | translative | terminative | comitative ;
  --NForm = NF Number Case ;
  NForm = NCase Number Case ;
  
oper
  Noun : Type = { s : NForm => Str };
  
------------------------------------------------
-- Start of commonNoun section
------------------------------------------------

  mkAapõ : Str -> Noun = \aapõ -> 
    case aapõ of {
      aa + "põ" => mkAapõConcrete aa ;
      _ => Predef.error "Unsuitable lemma for mkAapõ"
    } ;

  mkAapõConcrete : Str -> Noun = \aa -> 
    { s = 
      table {
        NCase singular nominative => aa + "põ" ;
        NCase plural nominative => aa + "võd" ;
        NCase singular genitive => aa + "va" ;
        NCase plural genitive => aa + "poi" ;
        NCase plural genitive => aa + "pojõ" ;
        NCase singular partitive => aa + "pa" ;
        NCase plural partitive => aa + "poi" ;
        NCase plural partitive => aa + "poitõ" ;
        NCase singular illative => aa + "paa" ;
        NCase singular illative => aa + "pasõ" ;
        NCase plural illative => aa + "poisõ" ;
        NCase singular inessive => aa + "vaz" ;
        NCase plural inessive => aa + "voiz" ;
        NCase singular elative => aa + "võssõ" ;
        NCase plural elative => aa + "poissõ" ;
        NCase singular allative => aa + "võllõ" ;
        NCase plural allative => aa + "poillõ" ;
        NCase singular adessive => aa + "võl" ;
        NCase plural adessive => aa + "poil" ;
        NCase singular ablative => aa + "võssi" ;
        NCase plural ablative => aa + "poissi" ;
        NCase singular translative => aa + "passi" ;
        NCase plural translative => aa + "poissi" ;
        NCase singular terminative => aa + "passaa" ;
        NCase plural terminative => aa + "poissaa" ;
        NCase singular comitative => aa + "vaka" ;
        NCase plural comitative => aa + "poika"
      }
    } ;


  mkPoikõ : Str -> Noun = \poikõ -> 
    case poikõ of {
      poi + "kõ" => mkPoikõConcrete poi ;
      _ => Predef.error "Unsuitable lemma for mkPoikõ"
    } ;

  mkPoikõConcrete : Str -> Noun = \poi -> 
    { s =
      table {
        NCase singular nominative => poi + "kõ" ;
        NCase plural nominative => poi + "gõd" ;
        NCase singular genitive => poi + "ga" ;
        NCase plural genitive => poi + "ki" ;
        NCase plural genitive => poi + "kije" ;
        NCase singular partitive => poi + "ka" ;
        NCase singular partitive => poi + "kaa" ;
        NCase plural partitive => poi + "ki" ;
        NCase plural partitive => poi + "kitõ" ;
        NCase singular illative => poi + "kaa" ;
        NCase singular illative => poi + "kasõ" ;
        NCase plural illative => poi + "ki" ;
        NCase plural illative => poi + "kisõ" ;
        NCase singular inessive => poi + "gõz" ;
        NCase plural inessive => poi + "kiz" ;
        NCase singular elative => poi + "gõssõ" ;
        NCase plural elative => poi + "kissõ" ;
        NCase singular allative => poi + "gõllõ" ;
        NCase plural allative => poi + "killõ" ;
        NCase singular adessive => poi + "gõl" ;
        NCase plural adessive => poi + "kil" ;
        NCase singular ablative => poi + "gõltõ" ;
        NCase plural ablative => poi + "kiltõ" ;
        NCase singular translative => poi + "gõssi" ;
        NCase plural translative => poi + "kissi" ;
        NCase singular terminative => poi + "kassaa" ;
        NCase plural terminative => poi + "kissaa" ;
        NCase singular comitative => poi + "gaka" ;
        NCase plural comitative => poi + "kika"
      }
    } ;


  mkAikõ : Str -> Noun = \aikõ -> 
    case aikõ of {
      ai + "kõ" => mkAikõConcrete ai ;
      _ => Predef.error "Unsuitable lemma for mkAikõ"
    } ;

  mkAikõConcrete : Str -> Noun = \ai -> 
    { s = 
      table {
        NCase singular nominative => ai + "kõ" ;
        NCase plural nominative => ai + "gõd" ;
        NCase singular genitive => ai + "ga" ;
        NCase plural genitive => ai + "koi" ;
        NCase plural genitive => ai + "kojõ" ;
        NCase singular partitive => ai + "ka" ;
        NCase singular partitive => ai + "kaa" ;
        NCase plural partitive => ai + "koi" ;
        NCase plural partitive => ai + "koitõ" ;
        NCase singular illative => ai + "ka" ;
        NCase singular illative => ai + "kasõ" ;
        NCase plural illative => ai + "koisõ" ;
        NCase singular inessive => ai + "gõz" ;
        NCase plural inessive => ai + "koiz" ;
        NCase singular elative => ai + "gõssõ" ;
        NCase plural elative => ai + "koissõ" ;
        NCase singular allative => ai + "gõllõ" ;
        NCase plural allative => ai + "koillõ" ;
        NCase singular adessive => ai + "gõl" ;
        NCase plural adessive => ai + "koil" ;
        NCase singular ablative => ai + "gõltõ" ;
        NCase plural ablative => ai + "koiltõ" ;
        NCase singular translative => ai + "gõssi" ;
        NCase plural translative => ai + "koissi" ;
        NCase singular terminative => ai + "kassaa" ;
        NCase plural terminative => ai + "koissaa" ;
        NCase singular comitative => ai + "gaka" ;
        NCase plural comitative => ai + "koika"
      }
    } ;


  mkLentüz : Str -> Noun = \lentüz -> 
    case lentüz of {
      lentü + "z" => mkLentüzConcrete lentü ;
      _ => Predef.error "Unsuitable lemma for mkLentüz"
    } ;

  mkLentüzConcrete : Str -> Noun = \lentü -> 
    { s = 
      table {
        NCase singular nominative => lentü + "z" ;
        NCase plural nominative => lentü + "sed" ;
        NCase singular genitive => lentü + "se" ;
        NCase plural genitive => lentü + "si" ;
        NCase singular partitive => lentü + "sse" ;
        NCase plural partitive => lentü + "ssi" ;
        NCase singular illative => lentü + "sesse" ;
        NCase plural illative => lentü + "sisse" ;
        NCase singular inessive => lentü + "sez" ;
        NCase plural inessive => lentü + "siz" ;
        NCase singular elative => lentü + "sse" ;
        NCase plural elative => lentü + "sissõ" ;
        NCase singular allative => lentü + " gõllõ" ;
        NCase plural allative => lentü + " koillõ" ;
        NCase singular adessive => lentü + " gõl" ;
        NCase plural adessive => lentü + " koil" ;
        NCase singular ablative => lentü + " gõltõ" ;
        NCase plural ablative => lentü + " koiltõ" ;
        NCase singular translative => lentü + " gõssi" ;
        NCase plural translative => lentü + " koissi" ;
        NCase singular terminative => lentü + " kassaa" ;
        NCase plural terminative => lentü + " koissaa" ;
        NCase singular comitative => lentü + " gaka" ;
        NCase plural comitative => lentü + " koika"
      }
    } ;


  mkAmmõz : Str -> Noun = \ammõz -> 
    case ammõz of {
      am + "mõz" => mkAmmõzConcrete am ;
      _ => Predef.error "Unsuitable lemma for mkAmmõz"
    } ;

  mkAmmõzConcrete : Str -> Noun = \am -> 
    { s = 
      table {
        NCase singular nominative => am + "mõz" ;
        NCase plural nominative => am + "pad" ;
        NCase singular genitive => am + "pa" ;
        NCase plural genitive => am + "paijõ" ;
        NCase singular partitive => am + "massõ" ;
        NCase plural partitive => am + "paitõ" ;
        NCase singular illative => am + "pasõ" ;
        NCase plural illative => am + "paisõ" ;
        NCase singular inessive => am + "paz" ;
        NCase plural inessive => am + "paiz" ;
        NCase singular elative => am + "passõ" ;
        NCase plural elative => am + "paissõ" ;
        NCase singular allative => am + "pallõ" ;
        NCase plural allative => am + "paillõ" ;
        NCase singular adessive => am + "pal" ;
        NCase plural adessive => am + "pail" ;
        NCase singular ablative => am + "paltõ" ;
        NCase plural ablative => am + "pailtõ" ;
        NCase singular translative => am + "passi" ;
        NCase plural translative => am + "paissi" ;
        NCase singular terminative => am + "passaa" ;
        NCase plural terminative => am + "paissaa" ;
        NCase singular comitative => am + "paka" ;
        NCase plural comitative => am + "paika"
      }
    } ;


  mkTüttö : Str -> Noun = \tüttö -> 
    case tüttö of {
      tüt + "t" + ö@(-(_+"t"+_)) => mkTüttöConcrete tüt ö ;
      _ => Predef.error "Unsuitable lemma for mkTüttö"
    } ;

  mkTüttöConcrete : Str -> Str -> Noun = \tüt,ö -> 
    { s =
      table {
        NCase singular nominative => tüt + "t" + ö ;
        NCase plural nominative => tüt + ö + "d" ;
        NCase singular genitive => tüt + ö ;
        NCase plural genitive => tüt + "t" + ö + "i" ;
        NCase plural genitive => tüt + "t" + ö + "je" ;
        NCase singular partitive => tüt + "t" + ö + "ä" ;
        NCase plural partitive => tüt + "t" + ö + "i" ;
        NCase plural partitive => tüt + "t" + ö + "ite" ;
        NCase singular illative => tüt + "t" + ö + "se" ;
        NCase plural illative => tüt + "t" + ö + "ise" ;
        NCase singular inessive => tüt + "t" + ö + "z" ;
        NCase plural inessive => tüt + "t" + ö + "iz" ;
        NCase singular elative => tüt + ö + "sse" ;
        NCase plural elative => tüt + "t" + ö + "isse" ;
        NCase singular allative => tüt + ö + "lle" ;
        NCase plural allative => tüt + "t" + ö + "ille" ;
        NCase singular adessive => tüt + ö + "l" ;
        NCase plural adessive => tüt + "t" + ö + "il" ;
        NCase singular ablative => tüt + ö + "lte" ;
        NCase plural ablative => tüt + "t" + ö + "ilte" ;
        NCase singular translative => tüt + ö + "ssi" ;
        NCase plural translative => tüt + "t" + ö + "issi" ;
        NCase singular terminative => tüt + "t" + ö + "ssaa" ;
        NCase plural terminative => tüt + "t" + ö + "issaa" ;
        NCase singular comitative => tüt + ö + "ka" ;
        NCase plural comitative => tüt + "t" + ö + "ika"
      }
    } ;


}