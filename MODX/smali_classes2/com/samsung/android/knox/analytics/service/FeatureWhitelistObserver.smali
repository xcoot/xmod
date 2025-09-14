.class public final Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HT_NAME:Ljava/lang/String; = "FeatureWhitelistObserver"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] FeatureWhitelistObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

.field public mFeaturesWhitelistCache:Ljava/util/List;

.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getFeatureWhitelist()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final start()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "start()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/HandlerThread;

    .line 10
    .line 11
    const-string v1, "FeatureWhitelistObserver"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;Landroid/os/Handler;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesWhitelist;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "stop()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeatureWhitelistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver$FeatureWhitelistContentObserver;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 35
    .line 36
    return-void
.end method
