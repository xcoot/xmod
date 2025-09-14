.class public abstract Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/ambientcontext/IAmbientContextObserver;->onRegistrationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Failed to call IAmbientContextObserver.onRegistrationComplete: "

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "AmbientContextManagerPerUserService"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public static sendStatusCallback(ILandroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setUpServiceIfNeeded()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AmbientContextManagerPerUserService"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    array-length v4, v0

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    if-eq v4, v2, :cond_1

    .line 33
    .line 34
    const-string/jumbo p0, "updateServiceInfoListLocked returned unknown service types."

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_1
    aget-object v0, v0, v2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setComponentName(Landroid/content/ComponentName;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    aget-object v0, v0, v3

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setComponentName(Landroid/content/ComponentName;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    const-string/jumbo p0, "updateServiceInfoListLocked returned incorrect componentNames"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    return v3

    .line 67
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    invoke-interface {v0, v4, v5, v6, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    if-eqz p0, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v2, v3

    .line 87
    :goto_2
    return v2

    .line 88
    :catch_0
    const-string p0, "RemoteException while setting up service"

    .line 89
    .line 90
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return v3
.end method


# virtual methods
.method public abstract clearRemoteService()V
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    const-string v2, "  "

    .line 19
    .line 20
    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0, v1}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public abstract ensureRemoteServiceInitiated()V
.end method

.method public abstract getAmbientContextEventArrayExtraKeyConfig()I
.end method

.method public abstract getAmbientContextPackageNameExtraKeyConfig()I
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getConsentComponentConfig()I
.end method

.method public abstract getProtectedBindPermission()Ljava/lang/String;
.end method

.method public abstract getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
.end method

.method public abstract getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 1
    const-string v0, "Service "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "newServiceInfoLocked with component name: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AmbientContextManagerPerUserService"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getProtectedBindPermission()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getProtectedBindPermission()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " requires "

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p0, " permission. Found "

    .line 108
    .line 109
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p0, " permission"

    .line 116
    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_0
    return-object v1

    .line 129
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 130
    .line 131
    const-string v0, "Could not get service for "

    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_3
    :goto_1
    const-string/jumbo p0, "service name does not match this per user, returning..."

    .line 142
    .line 143
    .line 144
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    return-object p0
.end method

.method public final onQueryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 4

    .line 1
    const-string v0, "AmbientContextManagerPerUserService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Query event status of "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " for "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string p0, "AmbientContextManagerPerUserService"

    .line 42
    .line 43
    const-string p1, "Detection service is not available at this moment."

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    invoke-static {p0, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-direct {v2, p0, p3, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Landroid/os/RemoteCallback;

    .line 70
    .line 71
    new-instance p3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-direct {p3, v3, v2}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, p1, p2, p0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

.method public final onRegisterObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string p0, "AmbientContextManagerPerUserService"

    .line 11
    .line 12
    const-string p1, "Detection service is not available at this moment."

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    invoke-static {p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 29
    .line 30
    check-cast v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 33
    .line 34
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/android/server/ambientcontext/AmbientContextManagerService;->newClientAdded(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public abstract setComponentName(Landroid/content/ComponentName;)V
.end method

.method public final startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 5

    .line 1
    const-string v0, "AmbientContextManagerPerUserService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Requested detection of "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->setUpServiceIfNeeded()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Landroid/os/RemoteCallback;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, v4, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-direct {v3, p0, p3, v4}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Landroid/os/RemoteCallback;

    .line 58
    .line 59
    new-instance p3, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    invoke-direct {p3, v4, v3}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p1, p2, v2, p0}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const-string p0, "AmbientContextManagerPerUserService"

    .line 75
    .line 76
    const-string p1, "No valid component found for AmbientContextDetectionService"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x2

    .line 82
    invoke-static {p3, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->completeRegistration(Landroid/app/ambientcontext/IAmbientContextObserver;I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public stopDetection(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "AmbientContextManagerPerUserService"

    .line 2
    .line 3
    const-string v1, "Stop detection for "

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getComponentName()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0, p1}, Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;->stopDetection(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
