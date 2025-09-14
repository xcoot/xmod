.class public final Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGoogleAppsList:Landroid/util/ArrayMap;

.field public final mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

.field public final mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

.field public final mLockGoogleAppsList:Ljava/lang/Object;

.field public mNetworkLimited:Z

.field public mNetworkService:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 21
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 25
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    move-result-object p2

    .line 29
    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V

    .line 32
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 34
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 40
    return-void
.end method


# virtual methods
.method public final setGoogleAppsNetworkAllow(Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "setGoogleAppsNetworkAllowallow = "

    .line 4
    const-string v1, "IntelligentBatterySaverGoogleAppPolicy"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    .line 11
    iget v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->mPolicyControlSwitch:I

    .line 13
    and-int/lit8 v0, v0, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string/jumbo p0, "failed to get NetworkManagementService instance"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 31
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-ge v2, v0, :cond_3

    .line 38
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 52
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Integer;

    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v4

    .line 62
    const/4 v5, -0x1

    .line 63
    if-eq v3, v5, :cond_2

    .line 65
    and-int/lit8 v4, v4, 0x1

    .line 67
    if-eqz v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 71
    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 74
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 76
    invoke-interface {v4, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :catch_1
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_0

    .line 87
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    const-string v0, "IllegalStateException:"

    .line 91
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    goto :goto_4

    .line 105
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "RemoteException:"

    .line 109
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    :goto_4
    return-void
.end method
