class Utils {
  static String getDayString(day) {
    switch (day) {
      case "Dom":
        return "Sunday";
        break;
      case "Seg":
        return "Monday";
        break;
      case "Ter":
        return "Tuesday";
        break;
      case "Qua":
        return "Wednesday";
        break;
      case "Qui":
        return "Thursday";
        break;
      case "Sex":
        return "Friday";
        break;
      case "Sab":
        return "Saturday";
        break;

      default:
    }
  }

  static String getDataFormated() {
    var dataToday = DateTime.now();
    var monthString;
    switch (dataToday.month) {
      case 1:
        monthString = "Jan";
        break;
      case 2:
        monthString = "Feb";
        break;
      case 3:
        monthString = "Mar";
        break;
      case 4:
        monthString = "Apr";
        break;
      case 5:
        monthString = "May";
        break;
      case 6:
        monthString = "Jun";
        break;
      case 7:
        monthString = "Jul";
        break;
      case 8:
        monthString = "Aug";
        break;
      case 9:
        monthString = "Sep";
        break;
      case 10:
        monthString = "Oct";
        break;
      case 11:
        monthString = "Nov";
        break;
      case 12:
        monthString = "Dec";
        break;
      default:
    }
    return "${monthString},${dataToday.day}";
  }

  static dynamic getImage(codeDay) {
    Map data = Map();
    switch (codeDay) {
      case "storm":
        data["image"] = "assets/nublado_chuva_forte.png";
        data["secondColor"] = "#6A5ACD";
        data["color"] = "#836FFF";
        break;
      case "rain":
        data["image"] = "assets/nublado_chuva_forte.png";
        data["secondColor"] = "#6A5ACD";
        data["color"] = "#836FFF";
        break;
      case "snow":
        data["image"] = "assets/neve.png";
        data["secondColor"] = "#4682B4";
        data["color"] = "#ADD8E6";
        break;
      case "hail":
        data["image"] = "assets/neve.png";
        data["secondColor"] = "#4682B4";
        data["color"] = "#ADD8E6";
        break;
      case "fog":
        data["image"] = "assets/nublado.png";
        data["color"] = "#134cb5";
        data["secondColor"] = "#0b3887";
        break;
      case "cloudly_day":
        data["image"] = "assets/nublado.png";
        data["color"] = "#134cb5";
        data["secondColor"] = "#0b3887";
        break;
      case "cloud":
        data["image"] = "assets/nublado.png";
        data["color"] = "#134cb5";
        data["secondColor"] = "#0b3887";
        break;
      case "clear_day":
        data["image"] = "assets/sol_nuvem_sol.png";
        data["secondColor"] = "#00BFFF";
        data["color"] = "#87CEFA";
        break;
      case "none_day":
        data["image"] = "assets/sol_nuvem_sol.png";
        data["secondColor"] = "#00BFFF";
        data["color"] = "#87CEFAD";
        break;
      case "clear_night":
        data["image"] = "assets/lua_minguante.png";
        data["secondColor"] = "#000000";
        data["color"] = "#4F4F4F";
        break;
      case "cloudly_night":
        data["image"] = "assets/lua_minguante.png";
        data["secondColor"] = "#000000";
        data["color"] = "#4F4F4F";
        break;
      case "none_night":
        data["image"] = "assets/lua_minguante.png";
        data["secondColor"] = "#000000";
        data["color"] = "#4F4F4F";
        break;

      default:
    }
    return data;
  }

  static dynamic getListCities() {
    List listCities = [];
    String city1 = "Maceio,AL";
    String city2 = "Salvador,BA";
    String city3 = "Fortaleza,CE";
    String city4 = "Recife,PE";
    String city5 = "Teresina,PI";
    String city6 = "BoaVista,RR";
    String city7 = "Curitiba,PR";
    String city8 = "CampoGrande,MS";
    String city9 = "BeloHorizonte,MG";
    String city10 = "Natal,RN";
    String city11 = "PortoAlegre,RS";
    String city12 = "RioBranco,AC";
    String city13 = "Macapa,AP";
    String city14 = "Manaus,AM";
    String city15 = "Vitoria,ES";
    String city16 = "Goiânia,GO";
    String city17 = "SaoLuis,MA";
    String city18 = "Cuiaba,MT";

    String city20 = "Belem,PA";
    String city21 = "JoãoPessoa,PB";
    String city22 = "RiodeJaneiro,RJ";
    String city23 = "PortoVelho,RO";
    String city24 = "Florianpolis,SC";
    String city25 = "SÃoPaulo,SP";
    String city26 = "Aracaju,SE";
    String city27 = "Palmas,TO";

    listCities.add(city1);
    listCities.add(city2);
    listCities.add(city3);
    listCities.add(city4);
    listCities.add(city5);
    listCities.add(city6);
    listCities.add(city7);
    listCities.add(city8);
    listCities.add(city9);
    listCities.add(city10);
    listCities.add(city11);

    listCities.add(city12);
    listCities.add(city13);
    listCities.add(city14);
    listCities.add(city15);
    listCities.add(city16);
    listCities.add(city17);
    listCities.add(city18);
    listCities.add(city20);

    listCities.add(city21);
    listCities.add(city22);
    listCities.add(city23);
    listCities.add(city24);
    listCities.add(city25);
    listCities.add(city26);

    listCities.add(city27);

    return listCities;
  }
}
