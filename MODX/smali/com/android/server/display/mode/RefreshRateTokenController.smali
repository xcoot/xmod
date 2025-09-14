.class public final Lcom/android/server/display/mode/RefreshRateTokenController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

.field public final mRefreshRateTokens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    .line 13
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 15
    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Lcom/samsung/android/core/SystemHistory;

    .line 19
    const/16 v0, 0xf

    .line 21
    const-string v1, "RefreshRateTokenController"

    .line 23
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V
    .locals 3

    .line 1
    const-string v0, "Adding refreshRateToken="

    .line 3
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateTokenController;)V

    .line 16
    iput-object p2, p1, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 18
    iput-object v2, p1, Lcom/android/server/display/mode/RefreshRateToken;->mRemoveConsumer:Ljava/util/function/Consumer;

    .line 20
    iget-object p2, p2, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p2, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_1
    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 32
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    throw p1

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    .line 39
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 41
    if-eqz p2, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ", caller="

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/4 p1, 0x5

    .line 59
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method
