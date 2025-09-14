.class public final synthetic Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/RefreshRateTokenController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateTokenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 3
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 5
    const-string v0, "Removing refreshRateToken="

    .line 7
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokens:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateToken;->accept()V

    .line 18
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    .line 20
    if-eqz v2, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateTokenController;->mRefreshRateTokenHistory:Lcom/samsung/android/core/SystemHistory;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    const-string p1, ", caller="

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/4 p1, 0x5

    .line 38
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
