.class public final Lcom/android/server/NetworkScoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/NetworkScoreService;

    .line 6
    new-instance v1, Lcom/android/server/NetworkScorerAppManager;

    .line 8
    new-instance v2, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {v1, p1, v2}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V

    .line 16
    new-instance v2, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda2;

    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    .line 28
    iput-object v0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    .line 30
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 3
    const-string v1, "NetworkScoreService"

    .line 5
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-boolean p1, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const-string/jumbo p1, "systemReady"

    .line 19
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    const-string/jumbo p1, "network_recommendations_package"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 31
    iget-object v1, v0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->mUriEventMap:Ljava/util/Map;

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 38
    check-cast v1, Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, v0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    const-string/jumbo p1, "network_recommendations_enabled"

    .line 56
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 62
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->mUriEventMap:Ljava/util/Map;

    .line 64
    const/4 v1, 0x2

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    check-cast v0, Landroid/util/ArrayMap;

    .line 71
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/16 v0, 0x3e8

    .line 86
    if-ne p1, v0, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-boolean p0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 93
    if-eqz p0, :cond_2

    .line 95
    const-string/jumbo p0, "systemRunning"

    .line 98
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "NetworkScoreService"

    .line 3
    const-string v1, "Registering network_score"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string/jumbo v0, "network_score"

    .line 11
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    return-void
.end method
