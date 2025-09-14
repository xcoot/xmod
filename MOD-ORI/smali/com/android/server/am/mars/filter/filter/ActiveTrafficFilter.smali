.class public final Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsDataConnectionConnected:Z


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 7

    .line 1
    const-string p3, "MARs:ActiveTrafficFilter"

    .line 2
    .line 3
    const-string/jumbo v0, "filter : "

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 14
    .line 15
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v2

    .line 29
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mIsDataConnectionConnected:Z

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const-string/jumbo p0, "sdhms"

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-interface {p0, p2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->isDownLoadingForUid(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, "("

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ")"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    const/16 p0, 0x8

    .line 83
    .line 84
    return p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    const-string/jumbo p1, "isDownloadingPackage exception:"

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p0, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :cond_2
    return v2
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveTrafficFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method
