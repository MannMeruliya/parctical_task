import 'dart:convert';

List<Model> modelFromJson(String str) =>
    List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  int? gdp;
  double? sexRatio;
  int? surfaceArea;
  double? lifeExpectancyMale;
  double? unemployment;
  int? imports;
  double? homicideRate;
  Currency? currency;
  String? iso2;
  double? employmentServices;
  double? employmentIndustry;
  double? urbanPopulationGrowth;
  double? secondarySchoolEnrollmentFemale;
  double? employmentAgriculture;
  String? capital;
  double? co2Emissions;
  double? forestedArea;
  int? tourists;
  int? exports;
  double? lifeExpectancyFemale;
  double? postSecondaryEnrollmentFemale;
  double? postSecondaryEnrollmentMale;
  double? primarySchoolEnrollmentFemale;
  double? infantMortality;
  double? gdpGrowth;
  int? threatenedSpecies;
  int? population;
  double? urbanPopulation;
  double? secondarySchoolEnrollmentMale;
  String? name;
  double? popGrowth;
  String? region;
  double? popDensity;
  double? internetUsers;
  double? gdpPerCapita;
  double? fertility;
  double? refugees;
  double? primarySchoolEnrollmentMale;

  Model({
    this.gdp,
    this.sexRatio,
    this.surfaceArea,
    this.lifeExpectancyMale,
    this.unemployment,
    this.imports,
    this.homicideRate,
    this.currency,
    this.iso2,
    this.employmentServices,
    this.employmentIndustry,
    this.urbanPopulationGrowth,
    this.secondarySchoolEnrollmentFemale,
    this.employmentAgriculture,
    this.capital,
    this.co2Emissions,
    this.forestedArea,
    this.tourists,
    this.exports,
    this.lifeExpectancyFemale,
    this.postSecondaryEnrollmentFemale,
    this.postSecondaryEnrollmentMale,
    this.primarySchoolEnrollmentFemale,
    this.infantMortality,
    this.gdpGrowth,
    this.threatenedSpecies,
    this.population,
    this.urbanPopulation,
    this.secondarySchoolEnrollmentMale,
    this.name,
    this.popGrowth,
    this.region,
    this.popDensity,
    this.internetUsers,
    this.gdpPerCapita,
    this.fertility,
    this.refugees,
    this.primarySchoolEnrollmentMale,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        gdp: json["gdp"],
        sexRatio: json["sex_ratio"]?.toDouble(),
        surfaceArea: json["surface_area"],
        lifeExpectancyMale: json["life_expectancy_male"]?.toDouble(),
        unemployment: json["unemployment"]?.toDouble(),
        imports: json["imports"],
        homicideRate: json["homicide_rate"]?.toDouble(),
        currency: json["currency"] == null
            ? null
            : Currency.fromJson(json["currency"]),
        iso2: json["iso2"],
        employmentServices: json["employment_services"]?.toDouble(),
        employmentIndustry: json["employment_industry"]?.toDouble(),
        urbanPopulationGrowth: json["urban_population_growth"]?.toDouble(),
        secondarySchoolEnrollmentFemale:
            json["secondary_school_enrollment_female"]?.toDouble(),
        employmentAgriculture: json["employment_agriculture"]?.toDouble(),
        capital: json["capital"],
        co2Emissions: json["co2_emissions"]?.toDouble(),
        forestedArea: json["forested_area"]?.toDouble(),
        tourists: json["tourists"],
        exports: json["exports"],
        lifeExpectancyFemale: json["life_expectancy_female"]?.toDouble(),
        postSecondaryEnrollmentFemale:
            json["post_secondary_enrollment_female"]?.toDouble(),
        postSecondaryEnrollmentMale:
            json["post_secondary_enrollment_male"]?.toDouble(),
        primarySchoolEnrollmentFemale:
            json["primary_school_enrollment_female"]?.toDouble(),
        infantMortality: json["infant_mortality"]?.toDouble(),
        gdpGrowth: json["gdp_growth"]?.toDouble(),
        threatenedSpecies: json["threatened_species"],
        population: json["population"],
        urbanPopulation: json["urban_population"]?.toDouble(),
        secondarySchoolEnrollmentMale:
            json["secondary_school_enrollment_male"]?.toDouble(),
        name: json["name"],
        popGrowth: json["pop_growth"]?.toDouble(),
        region: json["region"],
        popDensity: json["pop_density"]?.toDouble(),
        internetUsers: json["internet_users"]?.toDouble(),
        gdpPerCapita: json["gdp_per_capita"]?.toDouble(),
        fertility: json["fertility"]?.toDouble(),
        refugees: json["refugees"]?.toDouble(),
        primarySchoolEnrollmentMale:
            json["primary_school_enrollment_male"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "gdp": gdp,
        "sex_ratio": sexRatio,
        "surface_area": surfaceArea,
        "life_expectancy_male": lifeExpectancyMale,
        "unemployment": unemployment,
        "imports": imports,
        "homicide_rate": homicideRate,
        "currency": currency?.toJson(),
        "iso2": iso2,
        "employment_services": employmentServices,
        "employment_industry": employmentIndustry,
        "urban_population_growth": urbanPopulationGrowth,
        "secondary_school_enrollment_female": secondarySchoolEnrollmentFemale,
        "employment_agriculture": employmentAgriculture,
        "capital": capital,
        "co2_emissions": co2Emissions,
        "forested_area": forestedArea,
        "tourists": tourists,
        "exports": exports,
        "life_expectancy_female": lifeExpectancyFemale,
        "post_secondary_enrollment_female": postSecondaryEnrollmentFemale,
        "post_secondary_enrollment_male": postSecondaryEnrollmentMale,
        "primary_school_enrollment_female": primarySchoolEnrollmentFemale,
        "infant_mortality": infantMortality,
        "gdp_growth": gdpGrowth,
        "threatened_species": threatenedSpecies,
        "population": population,
        "urban_population": urbanPopulation,
        "secondary_school_enrollment_male": secondarySchoolEnrollmentMale,
        "name": name,
        "pop_growth": popGrowth,
        "region": region,
        "pop_density": popDensity,
        "internet_users": internetUsers,
        "gdp_per_capita": gdpPerCapita,
        "fertility": fertility,
        "refugees": refugees,
        "primary_school_enrollment_male": primarySchoolEnrollmentMale,
      };
}

class Currency {
  String? code;
  String? name;

  Currency({
    this.code,
    this.name,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
