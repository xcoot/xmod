.class public abstract Lcom/android/server/net/watchlist/PrivacyUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v0, :cond_2

    .line 13
    .line 14
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p1, v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    :goto_1
    iget-object v6, p3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-interface {v5, v6}, Landroid/privacy/DifferentialPrivacyEncoder;->encodeBoolean(Z)[B

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aget-byte v5, v5, v2

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    and-int/2addr v5, v6

    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move v6, v2

    .line 49
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v1
.end method

.method public static createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 9

    .line 1
    new-instance v8, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 2
    .line 3
    const-string/jumbo v0, "watchlist_encoder:"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    .line 24
    .line 25
    .line 26
    invoke-static {v8}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 9

    .line 1
    new-instance v8, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    .line 2
    .line 3
    const-string/jumbo v0, "watchlist_encoder:"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    move-object v0, v8

    .line 23
    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    .line 24
    .line 25
    .line 26
    invoke-static {v8, p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
