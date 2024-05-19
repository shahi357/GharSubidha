part of 'booking_cubit.dart';

sealed class BookingState extends Equatable {
  const BookingState();

  @override
  List<Object> get props => [];
}

final class BookingInitial extends BookingState {}
final class BookingLoading extends BookingState{}

final class BookingSuccess extends BookingState {
  final List<Bookings> bookingList;
  const BookingSuccess(this.bookingList);
  @override
  List<Object> get props => [bookingList];
}
