.class public Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mAppData:Landroid/net/NetworkScorerAppData;

.field public volatile mBound:Z

.field public volatile mConnected:Z

.field public volatile mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;


# direct methods
.method public constructor <init>(Landroid/net/NetworkScorerAppData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 9
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 11
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 7
    const-string v1, "android.net.action.RECOMMEND_NETWORKS"

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    const v1, 0x4000001

    .line 24
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 29
    move-result v1

    .line 30
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 32
    iget-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 34
    const-string v2, "NetworkScoreService"

    .line 36
    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "Bind call failed for "

    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-boolean p0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 61
    if-eqz p0, :cond_1

    .line 63
    const-string p0, "ScoringServiceConnection bound."

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public getAppData()Landroid/net/NetworkScorerAppData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 3
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mAppData:Landroid/net/NetworkScorerAppData;

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 3
    return-object p0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "ScoringServiceConnection: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "NetworkScoreService"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 31
    invoke-static {p2}, Landroid/net/INetworkRecommendationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkRecommendationProvider;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 37
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "ScoringServiceConnection, disconnected: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const-string v0, "NetworkScoreService"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 34
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "NetworkScoreService"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mBound:Z

    .line 10
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 13
    sget-boolean p1, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const-string p1, "ScoringServiceConnection unbound."

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    const-string v2, "Unbind failed."

    .line 26
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mConnected:Z

    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->mRecommendationProvider:Landroid/net/INetworkRecommendationProvider;

    .line 34
    return-void
.end method
