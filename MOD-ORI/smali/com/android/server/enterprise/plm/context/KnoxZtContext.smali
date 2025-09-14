.class public final Lcom/android/server/enterprise/plm/context/KnoxZtContext;
.super Lcom/android/server/enterprise/plm/context/ProcessContext;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "KnoxZtService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.knox.zt.framework"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.knox.zt.framework.core.KnoxZtService"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final needToKeepProcessAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v0, "device_policy"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget-object v1, p1, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->isKlmActivated()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const-string/jumbo v1, "is device managed: "

    .line 39
    .line 40
    .line 41
    const-string v2, ", is device organization owned with managed profile: "

    .line 42
    .line 43
    const-string v3, ", is klm activated: "

    .line 44
    .line 45
    invoke-static {v1, p0, v2, v0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "KnoxZtContext"

    .line 50
    .line 51
    invoke-static {v2, v1, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 52
    .line 53
    .line 54
    if-nez p0, :cond_1

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 64
    :goto_1
    const-string/jumbo p1, "keep alive "

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    return p0
.end method
