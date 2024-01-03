// ignore_for_file: must_be_immutable

part of 'credit_cards_notifier.dart';

/// Represents the state of CreditCards in the application.
class CreditCardsState extends Equatable {
  CreditCardsState({
    this.searchController,
    this.classicController,
    this.nameController,
    this.cardNumberController,
    this.expirationDateController,
    this.sliderIndex = 0,
    this.creditCardsModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? classicController;

  TextEditingController? nameController;

  TextEditingController? cardNumberController;

  TextEditingController? expirationDateController;

  CreditCardsModel? creditCardsModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        classicController,
        nameController,
        cardNumberController,
        expirationDateController,
        sliderIndex,
        creditCardsModelObj,
      ];

  CreditCardsState copyWith({
    TextEditingController? searchController,
    TextEditingController? classicController,
    TextEditingController? nameController,
    TextEditingController? cardNumberController,
    TextEditingController? expirationDateController,
    int? sliderIndex,
    CreditCardsModel? creditCardsModelObj,
  }) {
    return CreditCardsState(
      searchController: searchController ?? this.searchController,
      classicController: classicController ?? this.classicController,
      nameController: nameController ?? this.nameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      expirationDateController:
          expirationDateController ?? this.expirationDateController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      creditCardsModelObj: creditCardsModelObj ?? this.creditCardsModelObj,
    );
  }
}
