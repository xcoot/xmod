.class public final Lcom/samsung/android/knox/analytics/util/B2CFeatures;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_B2C_ACTIVATION:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

.field public static final EXTRA_B2C_ACTIVATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

.field public static final EXTRA_B2C_FEATURE:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

.field public static final EXTRA_B2C_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] B2CFeatures"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addOrRemoveB2CFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "addOrRemoveB2CFeature() - package "

    .line 4
    .line 5
    const-string v2, " feature "

    .line 6
    .line 7
    const-string v3, " shouldAdd? "

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "packageName"

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    new-instance p3, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "feature_name"

    .line 39
    .line 40
    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    if-nez p3, :cond_1

    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeatureByPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$B2CFeatures;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    .line 65
    filled-new-array {p1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p3, v1, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sget-object p1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    .line 80
    const-string p3, "feature"

    .line 81
    .line 82
    filled-new-array {p2}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p3, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method public static applyWhitelistForB2CFeatures(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "applyWhitelistForB2CFeatures()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "KNOX_ANALYTICS"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v2, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "*"

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    .line 86
    .line 87
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static getB2CActivationStatus(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getB2CActivationStatus()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "getB2CActivationStatus() - status "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return p0
.end method

.method public static removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "removeB2CFeaturesFromWhitelist()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturesList(Landroid/content/Context;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "feature"

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "KNOX_ANALYTICS"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v3, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    .line 50
    const-string v1, "*"

    .line 51
    .line 52
    filled-new-array {v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    sget-object v0, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "Failed to delete from FeaturesBlacklist"

    .line 64
    .line 65
    invoke-static {v0, v1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
