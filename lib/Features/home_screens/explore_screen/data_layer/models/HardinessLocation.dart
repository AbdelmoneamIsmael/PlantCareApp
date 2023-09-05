class HardinessLocation {
  HardinessLocation({
      this.fullUrl, 
      this.fullIframe,});

  HardinessLocation.fromJson(dynamic json) {
    fullUrl = json['full_url'];
    fullIframe = json['full_iframe'];
  }
  String? fullUrl;
  String? fullIframe;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['full_url'] = fullUrl;
    map['full_iframe'] = fullIframe;
    return map;
  }

}