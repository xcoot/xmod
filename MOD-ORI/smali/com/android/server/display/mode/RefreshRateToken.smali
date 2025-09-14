.class public abstract Lcom/android/server/display/mode/RefreshRateToken;
.super Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

.field public mRemoveConsumer:Ljava/util/function/Consumer;


# virtual methods
.method public abstract accept()V
.end method

.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mRemoveConsumer:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mRemoveConsumer:Ljava/util/function/Consumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{ RefreshRateToken[->"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", acquire at "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string/jumbo p0, "}"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
