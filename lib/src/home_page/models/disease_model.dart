import 'package:hive/hive.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 0)
class Disease extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String possibleCauses;

  @HiveField(2)
  late String possibleSolution;

  @HiveField(3)
  late String imagePath;

  @HiveField(4)
  late DateTime dateTime;

  @HiveField(5)
  late String status;

  @HiveField(6)
  late String cropName;

  Disease({required this.name, required this.imagePath}) {
    dateTime = DateTime.now();

    switch (name) {
      case "Pepper bell Bacterial spot":
        cropName = 'Pepper';
        possibleCauses =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        possibleSolution =
            "Spray early and often. Use copper and Mancozeb sprays.";
        status = 'Infected';
        break;

      case "Pepper bell healthy":
        cropName = 'Pepper';
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        name = 'N/A';
        status = 'healthy';
        break;

      case "Potato Early blight":
        cropName = 'Pepper';
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        status = 'Infected';
        break;

      case "Potato healthy":
        cropName = 'Potato';
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        name = 'N/A';
        status = 'Healthy';
        break;

      case "Potato Late blightt":
        cropName = 'Potato';
        possibleCauses =
            "Occurs in humid regions with temperatures ranging between 4 and 29 °C.";
        possibleSolution =
            "Eliminating cull piles and volunteer potatoes, using proper harvesting and storage practices, and applying fungicides when necessary.";
        status = 'Infected';
        break;

      case "Tomato Bacterial spot":
        cropName = 'Tomato';
        possibleCauses =
            "Xanthomonas bacteria which can be introduced into a garden on contaminated seed and transplants, which may or may not show symptoms.";
        possibleSolution =
            "Remove symptomatic plants from the field or greenhouse to prevent the spread of bacteria to healthy plants.";
        status = "Infected";
        break;

      case "Tomato Early blight":
        cropName = 'Tomato';
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        status = 'Infected';
        break;

      case "Tomato healthy":
        cropName = 'Tomato';
        possibleCauses = "Crops are okay.";
        possibleSolution = "N/A";
        status = 'Healthy';
        name = 'N/A';
        break;

      case "Tomato Late blight":
        cropName = 'Tomato';
        possibleCauses = "Caused by the water mold Phytophthora infestans.";
        possibleSolution = "Timely application of fungicide";
        status = 'Infected';
        break;

      case "Tomato Leaf Mold":
        cropName = 'Tomato';
        possibleCauses = "High relative humidity (greater than 85%).";
        possibleSolution =
            "Growing leaf mold resistant varieties, use drip irrigation to avoid watering foliage.";
        status = 'Infected';
        break;

      case "Tomato Septoria leaf spot":
        cropName = 'Tomato';
        status = 'Infected';
        possibleCauses =
            "It is a fungus and spreads by spores most rapidly in wet or humid weather. Attacks plants in the nightshade family, and can be harbored on weeds within this family.";
        possibleSolution =
            "Remove infected leaves immediately, use organic fungicide options.";
        break;

      case "Tomato Two-spotted spider mite":
        cropName = 'Tomato';
        status = 'Infected';
        possibleCauses =
            "Spider mite feeding on leaves during hot and dry conditions.";
        possibleSolution =
            "Aiming a hard stream of water at infested plants to knock spider mites off the plants. Also use of insecticidal soaps, horticultural oils.";
        break;

      case "Tomato Target Spot":
        cropName = 'Tomato';
        status = 'Infected';
        possibleCauses =
            "The fungus Corynespora cassiicola which spreads to plants.";
        possibleSolution =
            "Planting resistant varieties, keeping farms free from weeds.";
        break;

      case "Tomato mosaic virus":
        cropName = 'Tomato';
        status = 'Infected';
        possibleCauses =
            "Spread by aphids and other insects, mites, fungi, nematodes, and contact; pollen and seeds can carry the infection as well.";
        possibleSolution =
            "No cure for infected plants, remove all infected plants and destroy them.";
        break;

      case "Tomato Yellow Leaf Curl Virus":
        cropName = 'Tomato';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Wheat healthy":
        cropName = 'Wheat';
        name = 'N/A';
        status = 'Healthy';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Wheat septoria":
        cropName = 'Wheat';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Wheat stripe rust":
        cropName = 'Wheat';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Rice Leaf smut":
        cropName = 'Rice';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Rice brown spot":
        cropName = 'Rice';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Rice bacterial leaf blight":
        cropName = 'Rice';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Palm brown spots":
        cropName = 'Palm';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Palm healthy":
        cropName = 'Palm';
        status = 'Healthy';
        name = 'N/A';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Palm white scale phase1":
        cropName = 'Palm';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Palm white scale phase2":
        cropName = 'Palm';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Palm white scale phase3":
        cropName = 'Palm';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Orange Haunglongbing (Citrus greening)":
        cropName = 'Orange';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut early leaf spot":
        cropName = 'Groundnut';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut early rust":
        cropName = 'Groundnut';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut healthy":
        cropName = 'Groundnut';
        name = 'N/A';
        status = 'Healthy';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut late leaf spot":
        cropName = 'Groundnut';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut nutrition deficiency":
        cropName = 'Groundnut';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Groundnut rust":
        cropName = 'Groundnut';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Corn (maize) Cercospora leaf spot Gray leaf spot":
        cropName = 'Corn(maize)';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Corn (maize) Common rust":
        cropName = 'Corn(maize)';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Corn (maize) healthy":
        cropName = 'Corn(maize)';
        status = 'Healthy';
        name = 'N/A';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Corn (maize) Northern Leaf Blight":
        cropName = 'Corn(maize)';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cocoa anthracnose":
        cropName = 'Cocoa';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cocoa cssvd":
        cropName = 'Cocoa';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cocoa healthy":
        cropName = 'Cocoa';
        status = 'Healthy';
        name = 'N/A';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Citrus Black spot":
        cropName = 'Citrus';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Citrus canker":
        cropName = 'Citrus';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Citrus healthy":
        cropName = 'Citrus';
        status = 'Healthy';
        name = 'N/A';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cassava bacterial blight":
        cropName = 'Cassava';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cassava brown streak virus disease":
        cropName = 'Cassava';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cassava green mite":
        cropName = 'Cassava';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cassava healthy":
        cropName = 'Cassava';
        status = 'Healthy';
        name = 'N/A';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      case "Cassava mosaic virus disease":
        cropName = 'Cassava';
        status = 'Infected';
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      default:
        name = 'Healthy';
        possibleCauses = "N/A";
        possibleSolution = "N/A";

        break;
    }
  }
}
