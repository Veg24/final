class ShippingFormModel {
  final String resi;
  final String regOnline;
  final SenderModel sender;
  final ReceiverModel receiver;
  final String from;
  final String propTujuan;

  ShippingFormModel({
    required this.resi,
    required this.regOnline,
    required this.sender,
    required this.receiver,
    required this.from,
    required this.propTujuan,
  });

  Map<String, dynamic> toJson() => {
    'resi': resi,
    'regOnline': regOnline,
    'sender': sender.toJson(),
    'receiver': receiver.toJson(),
    'from': from,
    'propTujuan': propTujuan,
  };
} 