.class public final Lcom/android/server/enterprise/plm/context/PeripheralContext;
.super Lcom/android/server/enterprise/plm/context/ProcessContext;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "PeripheralService"

    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.peripheral.framework"

    .line 4
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.peripheral.framework.core.PeripheralService"

    .line 4
    return-object p0
.end method

.method public final needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isKlmActivated()Z

    .line 6
    move-result p0

    .line 7
    iget-object p1, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 9
    iget-boolean p1, p1, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "isEdmServiceReady : "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SystemStateTracker"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "klm activated : "

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", edm service ready : "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v1, "PeripheralContext"

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez p0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p0, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 67
    :goto_1
    const-string/jumbo p1, "keep alive "

    .line 70
    invoke-static {p1, v1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return p0
.end method
