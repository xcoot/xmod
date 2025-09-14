.class public final Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string p2, "FeatureBlacklistContentObserver()"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->updateFeatureBlacklistCache()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "FeatureBlacklist.onChange("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, ")"

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->updateFeatureBlacklistCache()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final updateFeatureBlacklistCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getFeaturesBlacklist(Landroid/content/Context;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    sget-object p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "FeatureBlacklist.updateFeatureBlacklistCache(): blacklist is null!"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
