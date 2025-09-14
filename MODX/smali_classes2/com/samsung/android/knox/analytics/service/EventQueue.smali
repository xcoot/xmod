.class public final Lcom/samsung/android/knox/analytics/service/EventQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final API_USAGE_FEATURE_NAME:Ljava/lang/String; = "API_USAGE"

.field public static final API_USAGE_GET_KEY:Ljava/lang/String; = "isGetterApi"

.field public static final EVENT_QUEUE_ANALYTICS_DATA_KEY:Ljava/lang/String; = "KnoxAnalyticsData"

.field public static final EVENT_QUEUE_MSG_CLEANED_LOG_API:I = 0x3

.field public static final EVENT_QUEUE_MSG_KA_DEACTIVATION:I = 0x2

.field public static final EVENT_QUEUE_MSG_LOG_API:I = 0x1

.field public static final HT_NAME:Ljava/lang/String; = "EventQueue"

.field public static final LOG_WAIT_TIME:I = 0x493e0

.field public static final MAX_CACHED_EVENTS:I = 0x64

.field public static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field public static final PACKAGE_NAME_KEY:Ljava/lang/String; = "pN"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] EventQueue"

.field public static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "uT"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeactivationLock:Ljava/lang/Object;

.field public mEventsCache:Ljava/util/List;

.field public mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

.field public mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

.field public mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsStarted:Z

.field public mMessageDelayHandler:Landroid/os/Handler;

.field public mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field public mVersioningCompleted:Z

.field public final mVersioningCompletedLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$1;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "constructor()"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    .line 49
    .line 50
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final addBulkEvents()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "addBulkEvents()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    add-long/2addr v1, v3

    .line 17
    new-instance v3, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {v1, v2, v4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->formatBulkEvents(JLjava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string v5, "eventsList"

    .line 31
    .line 32
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-static {v4, v1, v2, v3, v5}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addBulkEvents(Landroid/content/Context;JLandroid/os/Bundle;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const-wide/16 v3, -0x1

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const-string p0, "addBulkEvents(): error adding events, aborting."

    .line 49
    .line 50
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V

    return-void
.end method

.method public final addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V
    .locals 4

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "addEvent(): feature blacklisted, discarding event."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    .line 7
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONString(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object p3

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    iget-wide v0, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-static {p0, v0, v1, p3, p2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addEvent(Landroid/content/Context;JLjava/lang/String;I)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_2

    .line 9
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "addEvent(): error adding event, aborting."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final cancelMessageHandler()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkEventFeatureBlacklisted()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "Features Blacklist Observer is null, can\'t check!"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string p0, "Features Blacklist is null, can\'t check!"

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getEvent()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->isBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_3
    return v1
.end method

.method public final checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkEventFeatureWhitelisted()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const-string p0, "Features Whitelist Observer is null, can\'t check!"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string p0, "Features Whitelist is null, can\'t check!"

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    sget-object p1, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    .line 60
    .line 61
    if-ne p0, p1, :cond_3

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_3
    return v1
.end method

.method public final checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkFillPackageName()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "ReservedKey_Pid_PackageNameFlag"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v3, -0x1

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    const-string p0, "checkFillPackageName() - invalid pid."

    .line 40
    .line 41
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->getAppNameByPID(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string/jumbo v0, "pN"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public final checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkFillUserType()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "ReservedKey_UserId_UserTypeFlag"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v3, -0x1

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p1, "checkFillUserType() - invalid userId "

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserType(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-ne p0, v3, :cond_2

    .line 69
    .line 70
    const-string p0, "checkFillUserType() - Couldn\'t get userType"

    .line 71
    .line 72
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string/jumbo v0, "uT"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "enqueueEvent(): feature blacklisted, discarding event."

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v0, 0x64

    .line 39
    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->restartMessageHandler()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "getAppNameByPID("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ")"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v1, "activity"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/app/ActivityManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const-string p0, "getAppNameByPID(): nill processInfoList"

    .line 43
    .line 44
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 67
    .line 68
    if-ne v2, p1, :cond_1

    .line 69
    .line 70
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "getAppNameByPID(): not found"

    .line 76
    .line 77
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public final isStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final notifyVersioningCompleted()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyVersioningCompleted()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "KnoxAnalyticsData"

    .line 18
    .line 19
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final restartMessageHandler()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->cancelMessageHandler()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$2;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$2;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v2, 0x493e0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final declared-synchronized saveCachedLogs()V
    .locals 3

    .line 1
    const-string/jumbo v0, "saveCachedLogs(): Number of events: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->cancelMessageHandler()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-le v0, v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addBulkEvents()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit p0

    .line 76
    throw v0
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v2, "start()"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/os/HandlerThread;

    .line 17
    .line 18
    const-string v2, "EventQueue"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    new-instance v1, Landroid/os/Handler;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    .line 64
    .line 65
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->start()V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->start()V

    .line 95
    .line 96
    .line 97
    :cond_4
    const/4 v1, 0x1

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v2, "stop()"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final waitVersioningCompleted()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "waitVersioningCompleted(): waiting"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 17
    .line 18
    const-wide/16 v3, 0x2710

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v1, "waitVersioningCompleted(): Interrupted exception"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string/jumbo v0, "waitVersioningCompleted(): done"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
