// To parse this JSON data, do
//
//     final coinsCurrentDataResponse = coinsCurrentDataResponseFromJson(jsonString);

// Dart imports:
import 'dart:convert';

CoinsCurrentDataResponse coinsCurrentDataResponseFromJson(String str) =>
    CoinsCurrentDataResponse.fromJson(json.decode(str));

String coinsCurrentDataResponseToJson(CoinsCurrentDataResponse data) =>
    json.encode(data.toJson());

class CoinsCurrentDataResponse {
  CoinsCurrentDataResponse({
    this.id,
    this.symbol,
    this.name,
    this.assetPlatformId,
    this.platforms,
    this.blockTimeInMinutes,
    this.hashingAlgorithm,
    this.categories,
    this.publicNotice,
    this.additionalNotices,
    this.localization,
    this.description,
    this.links,
    this.image,
    this.countryOrigin,
    this.genesisDate,
    this.contractAddress,
    this.sentimentVotesUpPercentage,
    this.sentimentVotesDownPercentage,
    this.marketCapRank,
    this.coingeckoRank,
    this.coingeckoScore,
    this.developerScore,
    this.communityScore,
    this.liquidityScore,
    this.publicInterestScore,
    this.marketData,
    this.communityData,
    this.developerData,
    this.publicInterestStats,
    this.statusUpdates,
    this.lastUpdated,
    this.tickers,
  });

  factory CoinsCurrentDataResponse.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentDataResponse(
        id: json['id'],
        symbol: json['symbol'],
        name: json['name'],
        assetPlatformId: json['asset_platform_id'],
        platforms: Platforms.fromJson(json['platforms']),
        blockTimeInMinutes: json['block_time_in_minutes'],
        hashingAlgorithm: json['hashing_algorithm'],
        categories: List<dynamic>.from(json['categories'].map((x) => x)),
        publicNotice: json['public_notice'],
        additionalNotices:
            List<dynamic>.from(json['additional_notices'].map((x) => x)),
        localization: CoinsCurrentTion.fromJson(json['localization']),
        description: CoinsCurrentTion.fromJson(json['description']),
        links: CoinsCurrentLinks.fromJson(json['links']),
        image: CoinsCurrentImage.fromJson(json['image']),
        countryOrigin: json['country_origin'],
        genesisDate: json['genesis_date'],
        contractAddress: json['contract_address'],
        sentimentVotesUpPercentage:
            json['sentiment_votes_up_percentage'].toDouble(),
        sentimentVotesDownPercentage:
            json['sentiment_votes_down_percentage'].toDouble(),
        marketCapRank: json['market_cap_rank'],
        coingeckoRank: json['coingecko_rank'],
        coingeckoScore: json['coingecko_score'].toDouble(),
        developerScore: json['developer_score'].toDouble(),
        communityScore: json['community_score'].toDouble(),
        liquidityScore: json['liquidity_score'].toDouble(),
        publicInterestScore: json['public_interest_score'].toDouble(),
        marketData: CoinsCurrentMarketData.fromJson(json['market_data']),
        communityData:
            CoinsCurrentCommunityData.fromJson(json['community_data']),
        developerData:
            CoinsCurrentDeveloperData.fromJson(json['developer_data']),
        publicInterestStats: CoinsCurrentPublicInterestStats.fromJson(
            json['public_interest_stats']),
        statusUpdates: List<dynamic>.from(json['status_updates'].map((x) => x)),
        lastUpdated: DateTime.parse(json['last_updated']),
        tickers: List<CoinsCurrentTicker>.from(
            json['tickers'].map((x) => CoinsCurrentTicker.fromJson(x))),
      );

  String? id;
  String? symbol;
  String? name;
  String? assetPlatformId;
  Platforms? platforms;
  int? blockTimeInMinutes;
  dynamic hashingAlgorithm;
  List<dynamic>? categories;
  dynamic publicNotice;
  List<dynamic>? additionalNotices;
  CoinsCurrentTion? localization;
  CoinsCurrentTion? description;
  CoinsCurrentLinks? links;
  CoinsCurrentImage? image;
  String? countryOrigin;
  dynamic genesisDate;
  String? contractAddress;
  double? sentimentVotesUpPercentage;
  double? sentimentVotesDownPercentage;
  dynamic marketCapRank;
  int? coingeckoRank;
  double? coingeckoScore;
  double? developerScore;
  double? communityScore;
  double? liquidityScore;
  double? publicInterestScore;
  CoinsCurrentMarketData? marketData;
  CoinsCurrentCommunityData? communityData;
  CoinsCurrentDeveloperData? developerData;
  CoinsCurrentPublicInterestStats? publicInterestStats;
  List<dynamic>? statusUpdates;
  DateTime? lastUpdated;
  List<CoinsCurrentTicker>? tickers;

  Map<String, dynamic> toJson() => {
        'id': id,
        'symbol': symbol,
        'name': name,
        'asset_platform_id': assetPlatformId,
        'platforms': platforms!.toJson(),
        'block_time_in_minutes': blockTimeInMinutes,
        'hashing_algorithm': hashingAlgorithm,
        'categories': List<dynamic>.from(categories!.map((x) => x)),
        'public_notice': publicNotice,
        'additional_notices':
            List<dynamic>.from(additionalNotices!.map((x) => x)),
        'localization': localization!.toJson(),
        'description': description!.toJson(),
        'links': links!.toJson(),
        'image': image!.toJson(),
        'country_origin': countryOrigin,
        'genesis_date': genesisDate,
        'contract_address': contractAddress,
        'sentiment_votes_up_percentage': sentimentVotesUpPercentage,
        'sentiment_votes_down_percentage': sentimentVotesDownPercentage,
        'market_cap_rank': marketCapRank,
        'coingecko_rank': coingeckoRank,
        'coingecko_score': coingeckoScore,
        'developer_score': developerScore,
        'community_score': communityScore,
        'liquidity_score': liquidityScore,
        'public_interest_score': publicInterestScore,
        'market_data': marketData!.toJson(),
        'community_data': communityData!.toJson(),
        'developer_data': developerData!.toJson(),
        'public_interest_stats': publicInterestStats!.toJson(),
        'status_updates': List<dynamic>.from(statusUpdates!.map((x) => x)),
        'last_updated': lastUpdated!.toIso8601String(),
        'tickers': List<dynamic>.from(tickers!.map((x) => x.toJson())),
      };
}

class CoinsCurrentCommunityData {
  CoinsCurrentCommunityData({
    this.facebookLikes,
    this.twitterFollowers,
    this.redditAveragePosts48H,
    this.redditAverageComments48H,
    this.redditSubscribers,
    this.redditAccountsActive48H,
    this.telegramChannelUserCount,
  });

  factory CoinsCurrentCommunityData.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentCommunityData(
        facebookLikes: json['facebook_likes'],
        twitterFollowers: json['twitter_followers'],
        redditAveragePosts48H: json['reddit_average_posts_48h'].toDouble(),
        redditAverageComments48H:
            json['reddit_average_comments_48h'].toDouble(),
        redditSubscribers: json['reddit_subscribers'],
        redditAccountsActive48H: json['reddit_accounts_active_48h'],
        telegramChannelUserCount: json['telegram_channel_user_count'],
      );

  dynamic facebookLikes;
  int? twitterFollowers;
  double? redditAveragePosts48H;
  double? redditAverageComments48H;
  int? redditSubscribers;
  int? redditAccountsActive48H;
  int? telegramChannelUserCount;

  Map<String, dynamic> toJson() => {
        'facebook_likes': facebookLikes,
        'twitter_followers': twitterFollowers,
        'reddit_average_posts_48h': redditAveragePosts48H,
        'reddit_average_comments_48h': redditAverageComments48H,
        'reddit_subscribers': redditSubscribers,
        'reddit_accounts_active_48h': redditAccountsActive48H,
        'telegram_channel_user_count': telegramChannelUserCount,
      };
}

class CoinsCurrentTion {
  CoinsCurrentTion({
    this.en,
    this.de,
    this.es,
    this.fr,
    this.it,
    this.pl,
    this.ro,
    this.hu,
    this.nl,
    this.pt,
    this.sv,
    this.vi,
    this.tr,
    this.ru,
    this.ja,
    this.zh,
    this.zhTw,
    this.ko,
    this.ar,
    this.th,
    this.id,
  });

  factory CoinsCurrentTion.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentTion(
        en: json['en'],
        de: json['de'],
        es: json['es'],
        fr: json['fr'],
        it: json['it'],
        pl: json['pl'],
        ro: json['ro'],
        hu: json['hu'],
        nl: json['nl'],
        pt: json['pt'],
        sv: json['sv'],
        vi: json['vi'],
        tr: json['tr'],
        ru: json['ru'],
        ja: json['ja'],
        zh: json['zh'],
        zhTw: json['zh-tw'],
        ko: json['ko'],
        ar: json['ar'],
        th: json['th'],
        id: json['id'],
      );

  String? en;
  String? de;
  String? es;
  String? fr;
  String? it;
  String? pl;
  String? ro;
  String? hu;
  String? nl;
  String? pt;
  String? sv;
  String? vi;
  String? tr;
  String? ru;
  String? ja;
  String? zh;
  String? zhTw;
  String? ko;
  String? ar;
  String? th;
  String? id;

  Map<String, dynamic> toJson() => {
        'en': en,
        'de': de,
        'es': es,
        'fr': fr,
        'it': it,
        'pl': pl,
        'ro': ro,
        'hu': hu,
        'nl': nl,
        'pt': pt,
        'sv': sv,
        'vi': vi,
        'tr': tr,
        'ru': ru,
        'ja': ja,
        'zh': zh,
        'zh-tw': zhTw,
        'ko': ko,
        'ar': ar,
        'th': th,
        'id': id,
      };
}

class CoinsCurrentDeveloperData {
  CoinsCurrentDeveloperData({
    this.forks,
    this.stars,
    this.subscribers,
    this.totalIssues,
    this.closedIssues,
    this.pullRequestsMerged,
    this.pullRequestContributors,
    this.codeAdditionsDeletions4Weeks,
    this.commitCount4Weeks,
    this.last4WeeksCommitActivitySeries,
  });

  factory CoinsCurrentDeveloperData.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentDeveloperData(
        forks: json['forks'],
        stars: json['stars'],
        subscribers: json['subscribers'],
        totalIssues: json['total_issues'],
        closedIssues: json['closed_issues'],
        pullRequestsMerged: json['pull_requests_merged'],
        pullRequestContributors: json['pull_request_contributors'],
        codeAdditionsDeletions4Weeks:
            CoinsCurrentCodeAdditionsDeletions4Weeks.fromJson(
                json['code_additions_deletions_4_weeks']),
        commitCount4Weeks: json['commit_count_4_weeks'],
        last4WeeksCommitActivitySeries: List<dynamic>.from(
            json['last_4_weeks_commit_activity_series'].map((x) => x)),
      );

  int? forks;
  int? stars;
  int? subscribers;
  int? totalIssues;
  int? closedIssues;
  int? pullRequestsMerged;
  int? pullRequestContributors;
  CoinsCurrentCodeAdditionsDeletions4Weeks? codeAdditionsDeletions4Weeks;
  int? commitCount4Weeks;
  List<dynamic>? last4WeeksCommitActivitySeries;

  Map<String, dynamic> toJson() => {
        'forks': forks,
        'stars': stars,
        'subscribers': subscribers,
        'total_issues': totalIssues,
        'closed_issues': closedIssues,
        'pull_requests_merged': pullRequestsMerged,
        'pull_request_contributors': pullRequestContributors,
        'code_additions_deletions_4_weeks':
            codeAdditionsDeletions4Weeks!.toJson(),
        'commit_count_4_weeks': commitCount4Weeks,
        'last_4_weeks_commit_activity_series':
            List<dynamic>.from(last4WeeksCommitActivitySeries!.map((x) => x)),
      };
}

class CoinsCurrentCodeAdditionsDeletions4Weeks {
  CoinsCurrentCodeAdditionsDeletions4Weeks({
    this.additions,
    this.deletions,
  });

  factory CoinsCurrentCodeAdditionsDeletions4Weeks.fromJson(
          Map<String, dynamic> json) =>
      CoinsCurrentCodeAdditionsDeletions4Weeks(
        additions: json['additions'],
        deletions: json['deletions'],
      );

  dynamic additions;
  dynamic deletions;

  Map<String, dynamic> toJson() => {
        'additions': additions,
        'deletions': deletions,
      };
}

class CoinsCurrentImage {
  CoinsCurrentImage({
    this.thumb,
    this.small,
    this.large,
  });

  factory CoinsCurrentImage.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentImage(
        thumb: json['thumb'],
        small: json['small'],
        large: json['large'],
      );

  String? thumb;
  String? small;
  String? large;

  Map<String, dynamic> toJson() => {
        'thumb': thumb,
        'small': small,
        'large': large,
      };
}

class CoinsCurrentLinks {
  CoinsCurrentLinks({
    this.homepage,
    this.blockchainSite,
    this.officialForumUrl,
    this.chatUrl,
    this.announcementUrl,
    this.twitterScreenName,
    this.facebookUsername,
    this.bitcointalkThreadIdentifier,
    this.telegramChannelIdentifier,
    this.subredditUrl,
    this.reposUrl,
  });

  factory CoinsCurrentLinks.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentLinks(
        homepage: List<String>.from(json['homepage'].map((x) => x)),
        blockchainSite:
            List<String>.from(json['blockchain_site'].map((x) => x)),
        officialForumUrl:
            List<String>.from(json['official_forum_url'].map((x) => x)),
        chatUrl: List<String>.from(json['chat_url'].map((x) => x)),
        announcementUrl:
            List<String>.from(json['announcement_url'].map((x) => x)),
        twitterScreenName: json['twitter_screen_name'],
        facebookUsername: json['facebook_username'],
        bitcointalkThreadIdentifier: json['bitcointalk_thread_identifier'],
        telegramChannelIdentifier: json['telegram_channel_identifier'],
        subredditUrl: json['subreddit_url'],
        reposUrl: CoinsCurrentLinksReposUrl.fromJson(json['repos_url']),
      );

  List<String>? homepage;
  List<String>? blockchainSite;
  List<String>? officialForumUrl;
  List<String>? chatUrl;
  List<String>? announcementUrl;
  String? twitterScreenName;
  String? facebookUsername;
  dynamic bitcointalkThreadIdentifier;
  String? telegramChannelIdentifier;
  String? subredditUrl;
  CoinsCurrentLinksReposUrl? reposUrl;

  Map<String, dynamic> toJson() => {
        'homepage': List<dynamic>.from(homepage!.map((x) => x)),
        'blockchain_site': List<dynamic>.from(blockchainSite!.map((x) => x)),
        'official_forum_url':
            List<dynamic>.from(officialForumUrl!.map((x) => x)),
        'chat_url': List<dynamic>.from(chatUrl!.map((x) => x)),
        'announcement_url': List<dynamic>.from(announcementUrl!.map((x) => x)),
        'twitter_screen_name': twitterScreenName,
        'facebook_username': facebookUsername,
        'bitcointalk_thread_identifier': bitcointalkThreadIdentifier,
        'telegram_channel_identifier': telegramChannelIdentifier,
        'subreddit_url': subredditUrl,
        'repos_url': reposUrl!.toJson(),
      };
}

class CoinsCurrentLinksReposUrl {
  CoinsCurrentLinksReposUrl({
    this.github,
    this.bitbucket,
  });

  factory CoinsCurrentLinksReposUrl.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentLinksReposUrl(
        github: List<String>.from(json['github'].map((x) => x)),
        bitbucket: List<dynamic>.from(json['bitbucket'].map((x) => x)),
      );

  List<String>? github;
  List<dynamic>? bitbucket;

  Map<String, dynamic> toJson() => {
        'github': List<dynamic>.from(github!.map((x) => x)),
        'bitbucket': List<dynamic>.from(bitbucket!.map((x) => x)),
      };
}

class CoinsCurrentMarketData {
  CoinsCurrentMarketData({
    this.currentPrice,
    this.totalValueLocked,
    this.mcapToTvlRatio,
    this.fdvToTvlRatio,
    this.roi,
    this.ath,
    this.athChangePercentage,
    this.athDate,
    this.atl,
    this.atlChangePercentage,
    this.atlDate,
    this.marketCap,
    this.marketCapRank,
    this.fullyDilutedValuation,
    this.totalVolume,
    this.high24H,
    this.low24H,
    this.priceChange24H,
    this.priceChangePercentage24H,
    this.priceChangePercentage7D,
    this.priceChangePercentage14D,
    this.priceChangePercentage30D,
    this.priceChangePercentage60D,
    this.priceChangePercentage200D,
    this.priceChangePercentage1Y,
    this.marketCapChange24H,
    this.marketCapChangePercentage24H,
    this.priceChange24HInCurrency,
    this.priceChangePercentage1HInCurrency,
    this.priceChangePercentage24HInCurrency,
    this.priceChangePercentage7DInCurrency,
    this.priceChangePercentage14DInCurrency,
    this.priceChangePercentage30DInCurrency,
    this.priceChangePercentage60DInCurrency,
    this.priceChangePercentage200DInCurrency,
    this.priceChangePercentage1YInCurrency,
    this.marketCapChange24HInCurrency,
    this.marketCapChangePercentage24HInCurrency,
    this.totalSupply,
    this.maxSupply,
    this.circulatingSupply,
    this.lastUpdated,
  });

  factory CoinsCurrentMarketData.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentMarketData(
        currentPrice: Map.from(json['current_price'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        totalValueLocked: json['total_value_locked'],
        mcapToTvlRatio: json['mcap_to_tvl_ratio'],
        fdvToTvlRatio: json['fdv_to_tvl_ratio'],
        roi: json['roi'],
        ath: Map.from(json['ath'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        athChangePercentage: Map.from(json['ath_change_percentage'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        athDate: Map.from(json['ath_date'])
            .map((k, v) => MapEntry<String, DateTime>(k, DateTime.parse(v))),
        atl: Map.from(json['atl'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        atlChangePercentage: Map.from(json['atl_change_percentage'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        atlDate: Map.from(json['atl_date'])
            .map((k, v) => MapEntry<String, DateTime>(k, DateTime.parse(v))),
        marketCap: Map.from(json['market_cap'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        marketCapRank: json['market_cap_rank'],
        fullyDilutedValuation:
            CoinsCurrentMarketFullyDilutedValuation.fromJson(),
        totalVolume: Map.from(json['total_volume'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        high24H: Map.from(json['high_24h'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        low24H: Map.from(json['low_24h'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChange24H: json['price_change_24h'].toDouble(),
        priceChangePercentage24H:
            json['price_change_percentage_24h'].toDouble(),
        priceChangePercentage7D: json['price_change_percentage_7d'].toDouble(),
        priceChangePercentage14D:
            json['price_change_percentage_14d'].toDouble(),
        priceChangePercentage30D:
            json['price_change_percentage_30d'].toDouble(),
        priceChangePercentage60D:
            json['price_change_percentage_60d'].toDouble(),
        priceChangePercentage200D:
            json['price_change_percentage_200d'].toDouble(),
        priceChangePercentage1Y: json['price_change_percentage_1y'].toDouble(),
        marketCapChange24H: json['market_cap_change_24h'].toDouble(),
        marketCapChangePercentage24H:
            json['market_cap_change_percentage_24h'] == null
                ? null
                : json['market_cap_change_percentage_24h'].toDouble(),
        priceChange24HInCurrency: Map.from(json['price_change_24h_in_currency'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage1HInCurrency:
            Map.from(json['price_change_percentage_1h_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage24HInCurrency:
            Map.from(json['price_change_percentage_24h_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage7DInCurrency:
            Map.from(json['price_change_percentage_7d_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage14DInCurrency:
            Map.from(json['price_change_percentage_14d_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage30DInCurrency:
            Map.from(json['price_change_percentage_30d_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage60DInCurrency:
            Map.from(json['price_change_percentage_60d_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage200DInCurrency:
            Map.from(json['price_change_percentage_200d_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        priceChangePercentage1YInCurrency:
            Map.from(json['price_change_percentage_1y_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        marketCapChange24HInCurrency:
            Map.from(json['market_cap_change_24h_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        marketCapChangePercentage24HInCurrency:
            Map.from(json['market_cap_change_percentage_24h_in_currency'])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        totalSupply: json['total_supply'] == null
            ? null
            : json['total_supply'].toDouble(),
        maxSupply: json['max_supply'],
        circulatingSupply: json['circulating_supply'] == null
            ? null
            : json['circulating_supply'].toDouble(),
        lastUpdated: DateTime.parse(json['last_updated']),
      );

  Map<String, double>? currentPrice;
  dynamic totalValueLocked;
  dynamic mcapToTvlRatio;
  dynamic fdvToTvlRatio;
  dynamic roi;
  Map<String, double>? ath;
  Map<String, double>? athChangePercentage;
  Map<String, DateTime>? athDate;
  Map<String, double>? atl;
  Map<String, double>? atlChangePercentage;
  Map<String, DateTime>? atlDate;
  Map<String, double>? marketCap;
  dynamic marketCapRank;
  CoinsCurrentMarketFullyDilutedValuation? fullyDilutedValuation;
  Map<String, double>? totalVolume;
  Map<String, double>? high24H;
  Map<String, double>? low24H;
  double? priceChange24H;
  double? priceChangePercentage24H;
  double? priceChangePercentage7D;
  double? priceChangePercentage14D;
  double? priceChangePercentage30D;
  double? priceChangePercentage60D;
  double? priceChangePercentage200D;
  double? priceChangePercentage1Y;
  double? marketCapChange24H;
  double? marketCapChangePercentage24H;
  Map<String, double>? priceChange24HInCurrency;
  Map<String, double>? priceChangePercentage1HInCurrency;
  Map<String, double>? priceChangePercentage24HInCurrency;
  Map<String, double>? priceChangePercentage7DInCurrency;
  Map<String, double>? priceChangePercentage14DInCurrency;
  Map<String, double>? priceChangePercentage30DInCurrency;
  Map<String, double>? priceChangePercentage60DInCurrency;
  Map<String, double>? priceChangePercentage200DInCurrency;
  Map<String, double>? priceChangePercentage1YInCurrency;
  Map<String, double>? marketCapChange24HInCurrency;
  Map<String, double>? marketCapChangePercentage24HInCurrency;
  double? totalSupply;
  dynamic maxSupply;
  double? circulatingSupply;
  DateTime? lastUpdated;

  Map<String, dynamic> toJson() => {
        'current_price': Map.from(currentPrice!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'total_value_locked': totalValueLocked,
        'mcap_to_tvl_ratio': mcapToTvlRatio,
        'fdv_to_tvl_ratio': fdvToTvlRatio,
        'roi': roi,
        'ath': Map.from(ath!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        'ath_change_percentage': Map.from(athChangePercentage!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'ath_date': Map.from(athDate!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toIso8601String())),
        'atl': Map.from(atl!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        'atl_change_percentage': Map.from(atlChangePercentage!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'atl_date': Map.from(atlDate!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toIso8601String())),
        'market_cap':
            Map.from(marketCap!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        'market_cap_rank': marketCapRank,
        'fully_diluted_valuation': fullyDilutedValuation!.toJson(),
        'total_volume': Map.from(totalVolume!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'high_24h':
            Map.from(high24H!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        'low_24h':
            Map.from(low24H!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_24h': priceChange24H,
        'price_change_percentage_24h': priceChangePercentage24H,
        'price_change_percentage_7d': priceChangePercentage7D,
        'price_change_percentage_14d': priceChangePercentage14D,
        'price_change_percentage_30d': priceChangePercentage30D,
        'price_change_percentage_60d': priceChangePercentage60D,
        'price_change_percentage_200d': priceChangePercentage200D,
        'price_change_percentage_1y': priceChangePercentage1Y,
        'market_cap_change_24h': marketCapChange24H,
        'market_cap_change_percentage_24h': marketCapChangePercentage24H,
        'price_change_24h_in_currency': Map.from(priceChange24HInCurrency!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_1h_in_currency':
            Map.from(priceChangePercentage1HInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_24h_in_currency':
            Map.from(priceChangePercentage24HInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_7d_in_currency':
            Map.from(priceChangePercentage7DInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_14d_in_currency':
            Map.from(priceChangePercentage14DInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_30d_in_currency':
            Map.from(priceChangePercentage30DInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_60d_in_currency':
            Map.from(priceChangePercentage60DInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_200d_in_currency':
            Map.from(priceChangePercentage200DInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'price_change_percentage_1y_in_currency':
            Map.from(priceChangePercentage1YInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'market_cap_change_24h_in_currency':
            Map.from(marketCapChange24HInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'market_cap_change_percentage_24h_in_currency':
            Map.from(marketCapChangePercentage24HInCurrency!)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'total_supply': totalSupply,
        'max_supply': maxSupply,
        'circulating_supply': circulatingSupply,
        'last_updated': lastUpdated!.toIso8601String(),
      };
}

class CoinsCurrentMarketFullyDilutedValuation {
  CoinsCurrentMarketFullyDilutedValuation();

  factory CoinsCurrentMarketFullyDilutedValuation.fromJson() =>
      CoinsCurrentMarketFullyDilutedValuation();

  Map<String, dynamic> toJson() => {};
}

class Platforms {
  Platforms({
    this.ethereum,
  });

  factory Platforms.fromJson(Map<String, dynamic> json) => Platforms(
        ethereum: json['ethereum'],
      );

  String? ethereum;

  Map<String, dynamic> toJson() => {
        'ethereum': ethereum,
      };
}

class CoinsCurrentPublicInterestStats {
  CoinsCurrentPublicInterestStats({
    this.alexaRank,
    this.bingMatches,
  });

  factory CoinsCurrentPublicInterestStats.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentPublicInterestStats(
        alexaRank: json['alexa_rank'],
        bingMatches: json['bing_matches'],
      );

  int? alexaRank;
  dynamic bingMatches;

  Map<String, dynamic> toJson() => {
        'alexa_rank': alexaRank,
        'bing_matches': bingMatches,
      };
}

class CoinsCurrentTicker {
  CoinsCurrentTicker({
    this.base,
    this.target,
    this.market,
    this.last,
    this.volume,
    this.convertedLast,
    this.convertedVolume,
    this.trustScore,
    this.bidAskSpreadPercentage,
    this.timestamp,
    this.lastTradedAt,
    this.lastFetchAt,
    this.isAnomaly,
    this.isStale,
    this.tradeUrl,
    this.tokenInfoUrl,
    this.coinId,
    this.targetCoinId,
  });

  factory CoinsCurrentTicker.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentTicker(
        base: json['base'],
        target: json['target'],
        market: CoinsCurrentTickerMarket.fromJson(json['market']),
        last: json['last'] == null ? null : json['last'].toDouble(),
        volume: json['volume'] == null ? null : json['volume'].toDouble(),
        convertedLast: Map.from(json['converted_last'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        convertedVolume: Map.from(json['converted_volume'])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        trustScore: json['trust_score'],
        bidAskSpreadPercentage: json['bid_ask_spread_percentage'].toDouble(),
        timestamp: DateTime.parse(json['timestamp']),
        lastTradedAt: DateTime.parse(json['last_traded_at']),
        lastFetchAt: DateTime.parse(json['last_fetch_at']),
        isAnomaly: json['is_anomaly'],
        isStale: json['is_stale'],
        tradeUrl: json['trade_url'],
        tokenInfoUrl: json['token_info_url'],
        coinId: json['coin_id'],
        targetCoinId: json['target_coin_id'],
      );

  String? base;
  String? target;
  CoinsCurrentTickerMarket? market;
  double? last;
  double? volume;
  Map<String, double>? convertedLast;
  Map<String, double>? convertedVolume;
  String? trustScore;
  double? bidAskSpreadPercentage;
  DateTime? timestamp;
  DateTime? lastTradedAt;
  DateTime? lastFetchAt;
  bool? isAnomaly;
  bool? isStale;
  String? tradeUrl;
  String? tokenInfoUrl;
  String? coinId;
  String? targetCoinId;

  Map<String, dynamic> toJson() => {
        'base': base,
        'target': target,
        'market': market!.toJson(),
        'last': last,
        'volume': volume,
        'converted_last': Map.from(convertedLast!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'converted_volume': Map.from(convertedVolume!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        'trust_score': trustScore,
        'bid_ask_spread_percentage': bidAskSpreadPercentage,
        'timestamp': timestamp!.toIso8601String(),
        'last_traded_at': lastTradedAt!.toIso8601String(),
        'last_fetch_at': lastFetchAt!.toIso8601String(),
        'is_anomaly': isAnomaly,
        'is_stale': isStale,
        'trade_url': tradeUrl,
        'token_info_url': tokenInfoUrl,
        'coin_id': coinId,
        'target_coin_id': targetCoinId,
      };
}

class CoinsCurrentTickerMarket {
  CoinsCurrentTickerMarket({
    this.name,
    this.identifier,
    this.hasTradingIncentive,
  });

  factory CoinsCurrentTickerMarket.fromJson(Map<String, dynamic> json) =>
      CoinsCurrentTickerMarket(
        name: json['name'],
        identifier: json['identifier'],
        hasTradingIncentive: json['has_trading_incentive'],
      );

  String? name;
  String? identifier;
  bool? hasTradingIncentive;

  Map<String, dynamic> toJson() => {
        'name': name,
        'identifier': identifier,
        'has_trading_incentive': hasTradingIncentive,
      };
}
