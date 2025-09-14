.class public abstract Lcom/android/server/enterprise/plm/context/ProcessContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public final needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
    .locals 5

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 4
    iget-object v0, v0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 6
    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 8
    const-string/jumbo v1, "user"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/UserManager;

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v4, "isUserUnlocked : "

    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    const-string v4, "SystemStateTracker"

    .line 47
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v4, "user unlocked : "

    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const-string v4, "ProcessContext"

    .line 67
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z

    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_1

    .line 78
    move v1, v2

    .line 79
    :cond_1
    const-string/jumbo p0, "keep alive "

    .line 82
    invoke-static {p0, v4, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return v1
.end method

.method public abstract needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
.end method
