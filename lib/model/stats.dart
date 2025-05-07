class Stats {
  final num totalDownload;
  final num totalUpload;
  final num lastHandshake;
  final num rxBytes;
  final num txBytes;

  /// Constructor of the [Stats] class that receives [totalDownload] where total downloaded data is stored,
  /// [totalUpload] where uploaded data is stored.
  Stats({required this.totalDownload, required this.totalUpload, required this.lastHandshake, required this.rxBytes, required this.txBytes});

  /// Method [toJson] to convert the class to JSON.
  Map<String, dynamic> toJson() => {'totalDownload': totalDownload, 'totalUpload': totalUpload, 'lastHanshake': lastHandshake , 'rxBytes': rxBytes, 'txBytes': txBytes};

  /// Method [Stats.fromJson] to convert the JSON to class.
  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(totalDownload: json['totalDownload'] as num, totalUpload: json['totalUpload'] as num, lastHandshake: json['lastHandshake'] as num, rxBytes: json['rxBytes'] as num, txBytes: json['txBytes'] as num);
  }
}
