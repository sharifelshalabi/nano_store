class GeneralParameters {
  String? keyword;
  int? skipCount;
  int? maxResultCount = 0;

  GeneralParameters(
      {this.keyword = '', this.skipCount = 0, this.maxResultCount = 0});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Keyword'] = keyword;
    data['SkipCount'] = skipCount;
    data['MaxResultCount'] = maxResultCount;
    return data;
  }
}
