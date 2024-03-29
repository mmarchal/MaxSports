// Mocks generated by Mockito 5.3.0 from annotations
// in max_sports/test/data/blocs/poids_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:max_sports/data/backend_api.dart' as _i2;
import 'package:max_sports/data/entities/api_response.dart' as _i3;
import 'package:max_sports/data/entities/weight.dart' as _i6;
import 'package:max_sports/data/entities/recap.dart' as _i7;
import 'package:max_sports/data/repositories/weight_repository.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBackendApi_0 extends _i1.SmartFake implements _i2.BackendApi {
  _FakeBackendApi_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAPIResponse_1<T> extends _i1.SmartFake
    implements _i3.APIResponse<T> {
  _FakeAPIResponse_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [PoidsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPoidsRepository extends _i1.Mock implements _i4.WeightRepository {
  MockPoidsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BackendApi get api => (super.noSuchMethod(Invocation.getter(#api),
          returnValue: _FakeBackendApi_0(this, Invocation.getter(#api)))
      as _i2.BackendApi);
  @override
  _i5.Future<_i3.APIResponse<List<_i6.Weight>>> getWeight() =>
      (super.noSuchMethod(Invocation.method(#getPoids, []),
              returnValue: _i5.Future<_i3.APIResponse<List<_i6.Weight>>>.value(
                  _FakeAPIResponse_1<List<_i6.Weight>>(
                      this, Invocation.method(#getPoids, []))))
          as _i5.Future<_i3.APIResponse<List<_i6.Weight>>>);
  @override
  _i5.Future<_i3.APIResponse<_i6.Weight?>> postWeight(_i6.Weight? poids) =>
      (super.noSuchMethod(Invocation.method(#postPoids, [poids]),
              returnValue: _i5.Future<_i3.APIResponse<_i6.Weight?>>.value(
                  _FakeAPIResponse_1<_i6.Weight?>(
                      this, Invocation.method(#postPoids, [poids]))))
          as _i5.Future<_i3.APIResponse<_i6.Weight?>>);
  @override
  _i5.Future<_i3.APIResponse<_i6.Weight?>> getLastWeight() =>
      (super.noSuchMethod(Invocation.method(#getLastWeight, []),
              returnValue: _i5.Future<_i3.APIResponse<_i6.Weight?>>.value(
                  _FakeAPIResponse_1<_i6.Weight?>(
                      this, Invocation.method(#getLastWeight, []))))
          as _i5.Future<_i3.APIResponse<_i6.Weight?>>);
  @override
  _i5.Future<_i3.APIResponse<_i7.Recap?>> getLastTwoWeight() =>
      (super.noSuchMethod(Invocation.method(#getLastTwoWeight, []),
              returnValue: _i5.Future<_i3.APIResponse<_i7.Recap?>>.value(
                  _FakeAPIResponse_1<_i7.Recap?>(
                      this, Invocation.method(#getLastTwoWeight, []))))
          as _i5.Future<_i3.APIResponse<_i7.Recap?>>);
}
