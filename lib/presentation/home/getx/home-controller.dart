import 'package:assignment/config/utils/constants/export.dart';
import 'package:assignment/domain/entity/product-entity.dart';

class HomeController extends GetxController {
  RxInt index = 2.obs;
  RxList<ProductEntity> productEntities = <ProductEntity>[
    ProductEntity(
        title: 'Hermes rivera',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '125.5',
        rateV: '4.5',
        image: AssetsPaths.SHO),
    ProductEntity(
        title: 'Irene-kredenets',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '300.5',
        rateV: '4.5',
        image: AssetsPaths.SHO2),
    ProductEntity(
        title: 'Dwi-agus',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '133.5',
        rateV: '4.5',
        image: AssetsPaths.SHO3),
    ProductEntity(
        title: 'Thomas serer',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '90.5',
        rateV: '4.5',
        image: AssetsPaths.SHO4),
    ProductEntity(
        title: 'Irene-kredenets',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '300.5',
        rateV: '4.5',
        image: AssetsPaths.SHO2),
    ProductEntity(
        title: 'Thomas serer',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '90.5',
        rateV: '4.5',
        image: AssetsPaths.SHO4),
    ProductEntity(
        title: 'Hermes rivera',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '125.5',
        rateV: '4.5',
        image: AssetsPaths.SHO),
    ProductEntity(
        title: 'Thomas serer',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '90.5',
        rateV: '4.5',
        image: AssetsPaths.SHO4),
    ProductEntity(
        title: 'Dwi-agus',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '133.5',
        rateV: '4.5',
        image: AssetsPaths.SHO3),
    ProductEntity(
        title: 'Thomas serer',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '90.5',
        rateV: '4.5',
        image: AssetsPaths.SHO4),
    ProductEntity(
        title: 'Dwi-agus',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '133.5',
        rateV: '4.5',
        image: AssetsPaths.SHO3),
    ProductEntity(
        title: 'Thomas serer',
        description: 'Human foot can adapt to varied…..',
        rate: 1,
        price: '90.5',
        rateV: '4.5',
        image: AssetsPaths.SHO4),
  ].obs;
}
