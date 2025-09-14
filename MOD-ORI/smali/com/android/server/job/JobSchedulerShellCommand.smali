.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInternal:Lcom/android/server/job/JobSchedulerService;

.field public mPM:Landroid/content/pm/IPackageManager;


# virtual methods
.method public final cacheConfigChanges(Ljava/io/PrintWriter;)I
    .locals 8

    .line 1
    const-string v0, "Config caching "

    .line 2
    .line 3
    const-string/jumbo v1, "change config caching"

    .line 4
    .line 5
    .line 6
    const-string v2, "android.permission.DUMP"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "on"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v2, "off"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    move v3, v4

    .line 37
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget-boolean v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 51
    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    new-array v6, v4, [Ljava/lang/String;

    .line 55
    .line 56
    const-string/jumbo v7, "jobscheduler"

    .line 57
    .line 58
    .line 59
    invoke-static {v7, v6}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v6, 0x0

    .line 67
    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 68
    .line 69
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mCacheConfigChanges:Z

    .line 70
    .line 71
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    :try_start_2
    const-string/jumbo p0, "enabled"

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    const-string/jumbo p0, "disabled"

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return v4

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string p1, "Error: unknown option "

    .line 106
    .line 107
    invoke-static {p0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3
.end method

.method public final cancelJob(Ljava/io/PrintWriter;)I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string/jumbo v2, "cancel jobs"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v7, v2

    .line 12
    :goto_0
    move-object v8, v3

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sparse-switch v4, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    :goto_2
    move v4, v1

    .line 27
    goto :goto_3

    .line 28
    :sswitch_0
    const-string v4, "--namespace"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    const/4 v4, 0x3

    .line 38
    goto :goto_3

    .line 39
    :sswitch_1
    const-string v4, "--user"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const/4 v4, 0x2

    .line 49
    goto :goto_3

    .line 50
    :sswitch_2
    const-string v4, "-u"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v4, v0

    .line 60
    goto :goto_3

    .line 61
    :sswitch_3
    const-string v4, "-n"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v4, v2

    .line 71
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    const-string p0, "Error: unknown option \'"

    .line 75
    .line 76
    const-string v0, "\'"

    .line 77
    .line 78
    invoke-static {p1, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v1

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    goto :goto_1

    .line 91
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    if-gez v7, :cond_5

    .line 97
    .line 98
    const-string p0, "Error: must specify a concrete user ID"

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v1

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_6

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :cond_6
    move v10, v1

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 120
    .line 121
    .line 122
    move-result-wide v11

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 124
    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    move v9, v0

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    move v9, v2

    .line 130
    :goto_4
    move-object v5, p1

    .line 131
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/job/JobSchedulerService;->executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I

    .line 132
    .line 133
    .line 134
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    return p0

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    nop

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p2, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, "Uid "

    const-string v1, " not permitted to "

    .line 5
    invoke-static {v0, p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enableFlexPolicy(Ljava/io/PrintWriter;)I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string/jumbo v3, "enable flex policy"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_5

    .line 17
    .line 18
    const-string v6, "-o"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    const-string v6, "--option"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    const-string p0, "Error: unknown option \'"

    .line 35
    .line 36
    const-string v0, "\'"

    .line 37
    .line 38
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sparse-switch v6, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    :goto_1
    move v6, v1

    .line 57
    goto :goto_2

    .line 58
    :sswitch_0
    const-string/jumbo v6, "connectivity"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v6, 0x3

    .line 69
    goto :goto_2

    .line 70
    :sswitch_1
    const-string/jumbo v6, "charging"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v6, v0

    .line 81
    goto :goto_2

    .line 82
    :sswitch_2
    const-string/jumbo v6, "idle"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move v6, v2

    .line 93
    goto :goto_2

    .line 94
    :sswitch_3
    const-string v6, "battery-not-low"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move v6, v3

    .line 104
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    const-string p0, "Unsupported option: "

    .line 108
    .line 109
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :pswitch_0
    const/high16 v5, 0x10000000

    .line 118
    .line 119
    or-int/2addr v4, v5

    .line 120
    goto :goto_0

    .line 121
    :pswitch_1
    or-int/2addr v4, v2

    .line 122
    goto :goto_0

    .line 123
    :pswitch_2
    or-int/lit8 v4, v4, 0x4

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_3
    or-int/2addr v4, v0

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 133
    .line 134
    invoke-virtual {p0, v4, v2}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(IZ)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "Set flex policy to "

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    .line 159
    .line 160
    return v3

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    nop

    .line 167
    :sswitch_data_0
    .sparse-switch
        -0x186daa66 -> :sswitch_3
        0x313fd4 -> :sswitch_2
        0x55996271 -> :sswitch_1
        0x72a369b7 -> :sswitch_0
    .end sparse-switch

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAconfigFlagState(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "get aconfig flag state"

    .line 2
    .line 3
    .line 4
    const-string v1, "android.permission.DUMP"

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sparse-switch v2, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string/jumbo v2, "com.android.server.job.batch_active_bucket_jobs"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x5

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v2, "android.app.job.backup_jobs_exemption"

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x4

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string/jumbo v2, "com.android.server.job.do_not_force_rush_execution_at_boot"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x3

    .line 60
    goto :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v2, "com.android.server.job.batch_connectivity_jobs_per_network"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v1, 0x2

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v2, "android.app.job.job_debug_info_apis"

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v2, "android.app.job.enforce_minimum_time_windows"

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move v1, v0

    .line 94
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    const-string v0, "Unknown flag: "

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/android/server/job/Flags;->batchActiveBucketJobs()Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->backupJobsExemption()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_2
    invoke-static {}, Lcom/android/server/job/Flags;->doNotForceRushExecutionAtBoot()Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :pswitch_3
    invoke-static {}, Lcom/android/server/job/Flags;->batchConnectivityJobsPerNetwork()Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->jobDebugInfoApis()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :pswitch_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->enforceMinimumTimeWindows()Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x39721144 -> :sswitch_5
        -0x3869b861 -> :sswitch_4
        -0x377a470a -> :sswitch_3
        -0x24baad4c -> :sswitch_2
        -0x15321900 -> :sswitch_1
        -0xbcfca19 -> :sswitch_0
    .end sparse-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getConfigValue(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "get device config value"

    .line 2
    .line 3
    .line 4
    const-string v1, "android.permission.DUMP"

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->mLastPropertiesPulled:Landroid/provider/DeviceConfig$Properties;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v0, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final getEstimatedNetworkBytes(ILjava/io/PrintWriter;)I
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string/jumbo v1, "get estimated bytes"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_4

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    sparse-switch v5, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_1
    move v5, v0

    .line 25
    goto :goto_2

    .line 26
    :sswitch_0
    const-string v5, "--namespace"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v5, 0x3

    .line 36
    goto :goto_2

    .line 37
    :sswitch_1
    const-string v5, "--user"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v5, 0x2

    .line 47
    goto :goto_2

    .line 48
    :sswitch_2
    const-string v5, "-u"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v5, 0x1

    .line 58
    goto :goto_2

    .line 59
    :sswitch_3
    const-string v5, "-n"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v5, v1

    .line 69
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const-string p0, "Error: unknown option \'"

    .line 73
    .line 74
    const-string p1, "\'"

    .line 75
    .line 76
    invoke-static {p2, p0, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, -0x2

    .line 95
    if-ne v3, v0, :cond_5

    .line 96
    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v0, v3

    .line 103
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 120
    .line 121
    move v4, v0

    .line 122
    move v5, v10

    .line 123
    move v6, p1

    .line 124
    move-object v7, p2

    .line 125
    move-object v8, v1

    .line 126
    move-object v9, v2

    .line 127
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/JobSchedulerService;->getEstimatedNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    move-object v3, p0

    .line 132
    move v4, p1

    .line 133
    move v5, v0

    .line 134
    move v6, v10

    .line 135
    move-object v7, v1

    .line 136
    move-object v8, v2

    .line 137
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    return p1

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getJobState(Ljava/io/PrintWriter;)I
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string/jumbo v1, "get job state"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_4

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    sparse-switch v5, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_1
    move v5, v0

    .line 25
    goto :goto_2

    .line 26
    :sswitch_0
    const-string v5, "--namespace"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v5, 0x3

    .line 36
    goto :goto_2

    .line 37
    :sswitch_1
    const-string v5, "--user"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v5, 0x2

    .line 47
    goto :goto_2

    .line 48
    :sswitch_2
    const-string v5, "-u"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v5, 0x1

    .line 58
    goto :goto_2

    .line 59
    :sswitch_3
    const-string v5, "-n"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v5, v1

    .line 69
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const-string p0, "Error: unknown option \'"

    .line 73
    .line 74
    const-string v1, "\'"

    .line 75
    .line 76
    invoke-static {p1, p0, v4, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, -0x2

    .line 95
    if-ne v3, v0, :cond_5

    .line 96
    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v0, v3

    .line 103
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 116
    .line 117
    .line 118
    move-result-wide v10

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 120
    .line 121
    move-object v4, p1

    .line 122
    move-object v5, v1

    .line 123
    move v6, v0

    .line 124
    move-object v7, v2

    .line 125
    move v8, v9

    .line 126
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    move-object v3, p0

    .line 131
    move v4, p1

    .line 132
    move v5, v0

    .line 133
    move v6, v9

    .line 134
    move-object v7, v1

    .line 135
    move-object v8, v2

    .line 136
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    return p1

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getTransferredNetworkBytes(ILjava/io/PrintWriter;)I
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string/jumbo v1, "get transferred bytes"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_4

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    sparse-switch v5, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_1
    move v5, v0

    .line 25
    goto :goto_2

    .line 26
    :sswitch_0
    const-string v5, "--namespace"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v5, 0x3

    .line 36
    goto :goto_2

    .line 37
    :sswitch_1
    const-string v5, "--user"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v5, 0x2

    .line 47
    goto :goto_2

    .line 48
    :sswitch_2
    const-string v5, "-u"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v5, 0x1

    .line 58
    goto :goto_2

    .line 59
    :sswitch_3
    const-string v5, "-n"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v5, v1

    .line 69
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const-string p0, "Error: unknown option \'"

    .line 73
    .line 74
    const-string p1, "\'"

    .line 75
    .line 76
    invoke-static {p2, p0, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, -0x2

    .line 95
    if-ne v3, v0, :cond_5

    .line 96
    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v0, v3

    .line 103
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 120
    .line 121
    move v4, v0

    .line 122
    move v5, v10

    .line 123
    move v6, p1

    .line 124
    move-object v7, p2

    .line 125
    move-object v8, v1

    .line 126
    move-object v9, v2

    .line 127
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/JobSchedulerService;->getTransferredNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    move-object v3, p0

    .line 132
    move v4, p1

    .line 133
    move v5, v0

    .line 134
    move v6, v10

    .line 135
    move-object v7, v1

    .line 136
    move-object v8, v2

    .line 137
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    return p1

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final monitorBattery(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "change battery monitoring"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "on"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v1, "off"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V

    .line 45
    .line 46
    .line 47
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    :try_start_2
    const-string p0, "Battery monitoring enabled"

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    const-string p0, "Battery monitoring disabled"

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "Error: unknown option "

    .line 79
    .line 80
    invoke-static {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v3
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    const-string v2, ""

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    sparse-switch v3, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :sswitch_0
    const-string/jumbo v3, "enable-flex-policy"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :sswitch_1
    const-string/jumbo v3, "reset-flex-policy"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/16 v2, 0x16

    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :sswitch_2
    const-string/jumbo v3, "disable-flex-policy"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :sswitch_3
    const-string/jumbo v3, "monitor-battery"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :sswitch_4
    const-string/jumbo v3, "get-job-state"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    const/16 v2, 0x11

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :sswitch_5
    const-string/jumbo v3, "get-transferred-download-bytes"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    const/16 v2, 0xf

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :sswitch_6
    const-string/jumbo v3, "get-battery-not-low"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    const/16 v2, 0x9

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :sswitch_7
    const-string/jumbo v3, "get-config-value"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    const/16 v2, 0xa

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :sswitch_8
    const-string/jumbo v3, "get-aconfig-flag-state"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    const/4 v2, 0x6

    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :sswitch_9
    const-string/jumbo v3, "reset-schedule-quota"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_1

    .line 147
    .line 148
    const/16 v2, 0x15

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_a
    const-string/jumbo v3, "reset-execution-quota"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    .line 161
    const/16 v2, 0x14

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :sswitch_b
    const-string/jumbo v3, "get-battery-seq"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    const/4 v2, 0x7

    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :sswitch_c
    const-string/jumbo v3, "get-transferred-upload-bytes"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_1

    .line 185
    .line 186
    const/16 v2, 0x10

    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :sswitch_d
    const-string/jumbo v3, "heartbeat"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_1

    .line 198
    .line 199
    const/16 v2, 0x12

    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :sswitch_e
    const-string/jumbo v3, "get-storage-not-low"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_1

    .line 211
    .line 212
    const/16 v2, 0xe

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :sswitch_f
    const-string/jumbo v3, "stop"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_1

    .line 224
    .line 225
    const/16 v2, 0x17

    .line 226
    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :sswitch_10
    const-string/jumbo v3, "run"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_1

    .line 237
    .line 238
    move v2, v5

    .line 239
    goto :goto_2

    .line 240
    :sswitch_11
    const-string/jumbo v3, "cache-config-changes"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_1

    .line 248
    .line 249
    const/16 v2, 0x13

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :sswitch_12
    const-string/jumbo v3, "get-estimated-download-bytes"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_1

    .line 260
    .line 261
    const/16 v2, 0xb

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :sswitch_13
    const-string/jumbo v3, "timeout"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_1

    .line 272
    .line 273
    move v2, v4

    .line 274
    goto :goto_2

    .line 275
    :sswitch_14
    const-string/jumbo v3, "cancel"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_1

    .line 283
    .line 284
    const/4 v2, 0x2

    .line 285
    goto :goto_2

    .line 286
    :sswitch_15
    const-string/jumbo v3, "get-battery-charging"

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_1

    .line 294
    .line 295
    const/16 v2, 0x8

    .line 296
    .line 297
    goto :goto_2

    .line 298
    :sswitch_16
    const-string/jumbo v3, "get-estimated-upload-bytes"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_1

    .line 306
    .line 307
    const/16 v2, 0xc

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :sswitch_17
    const-string/jumbo v3, "get-storage-seq"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_1

    .line 318
    .line 319
    const/16 v2, 0xd

    .line 320
    .line 321
    goto :goto_2

    .line 322
    :sswitch_18
    const-string/jumbo v3, "trigger-dock-state"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_1

    .line 330
    .line 331
    const/16 v2, 0x18

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_1
    :goto_1
    move v2, v1

    .line 335
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    return p0

    .line 343
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState()I

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    return p0

    .line 348
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->stop(Ljava/io/PrintWriter;)I

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    return p0

    .line 353
    :pswitch_2
    const-string/jumbo p1, "reset flex policy"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 360
    .line 361
    .line 362
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 364
    .line 365
    invoke-virtual {p0, v5, v5}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(IZ)V

    .line 366
    .line 367
    .line 368
    const-string p0, "Reset flex policy to its default state"

    .line 369
    .line 370
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    .line 372
    .line 373
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .line 375
    .line 376
    return v5

    .line 377
    :catchall_0
    move-exception p0

    .line 378
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    .line 380
    .line 381
    throw p0

    .line 382
    :pswitch_3
    const-string/jumbo p1, "reset schedule quota"

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 389
    .line 390
    .line 391
    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 392
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 393
    .line 394
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 397
    .line 398
    .line 399
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    .line 401
    .line 402
    return v5

    .line 403
    :catchall_1
    move-exception p0

    .line 404
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->resetExecutionQuota(Ljava/io/PrintWriter;)I

    .line 409
    .line 410
    .line 411
    move-result p0

    .line 412
    return p0

    .line 413
    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cacheConfigChanges(Ljava/io/PrintWriter;)I

    .line 414
    .line 415
    .line 416
    move-result p0

    .line 417
    return p0

    .line 418
    :pswitch_6
    const-string/jumbo p1, "manipulate scheduler heartbeat"

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const-string p0, "Heartbeat command is no longer supported"

    .line 425
    .line 426
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return v1

    .line 430
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    return p0

    .line 435
    :pswitch_8
    invoke-virtual {p0, v4, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getTransferredNetworkBytes(ILjava/io/PrintWriter;)I

    .line 436
    .line 437
    .line 438
    move-result p0

    .line 439
    return p0

    .line 440
    :pswitch_9
    invoke-virtual {p0, v5, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getTransferredNetworkBytes(ILjava/io/PrintWriter;)I

    .line 441
    .line 442
    .line 443
    move-result p0

    .line 444
    return p0

    .line 445
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 446
    .line 447
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 448
    .line 449
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 450
    :try_start_5
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 451
    .line 452
    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    iget-boolean p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mStorageLow:Z

    .line 457
    .line 458
    xor-int/2addr p0, v4

    .line 459
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 460
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 461
    .line 462
    .line 463
    return v5

    .line 464
    :catchall_2
    move-exception p0

    .line 465
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 466
    :try_start_8
    throw p0

    .line 467
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 468
    .line 469
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 470
    .line 471
    monitor-enter p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 472
    :try_start_9
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 473
    .line 474
    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    iget p0, p0, Lcom/android/server/job/controllers/StorageController$StorageTracker;->mLastStorageSeq:I

    .line 479
    .line 480
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 481
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 482
    .line 483
    .line 484
    return v5

    .line 485
    :catchall_3
    move-exception p0

    .line 486
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 487
    :try_start_c
    throw p0

    .line 488
    :pswitch_c
    invoke-virtual {p0, v4, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getEstimatedNetworkBytes(ILjava/io/PrintWriter;)I

    .line 489
    .line 490
    .line 491
    move-result p0

    .line 492
    return p0

    .line 493
    :pswitch_d
    invoke-virtual {p0, v5, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getEstimatedNetworkBytes(ILjava/io/PrintWriter;)I

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    return p0

    .line 498
    :pswitch_e
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getConfigValue(Ljava/io/PrintWriter;)V

    .line 499
    .line 500
    .line 501
    return v5

    .line 502
    :pswitch_f
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 503
    .line 504
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    .line 505
    .line 506
    .line 507
    move-result p0

    .line 508
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 509
    .line 510
    .line 511
    return v5

    .line 512
    :pswitch_10
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 513
    .line 514
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 519
    .line 520
    .line 521
    return v5

    .line 522
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 523
    .line 524
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 525
    .line 526
    monitor-enter p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 527
    :try_start_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 528
    .line 529
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 530
    .line 531
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 532
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 533
    .line 534
    .line 535
    return v5

    .line 536
    :catchall_4
    move-exception p0

    .line 537
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 538
    :try_start_10
    throw p0

    .line 539
    :pswitch_12
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getAconfigFlagState(Ljava/io/PrintWriter;)V

    .line 540
    .line 541
    .line 542
    return v5

    .line 543
    :pswitch_13
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->enableFlexPolicy(Ljava/io/PrintWriter;)I

    .line 544
    .line 545
    .line 546
    move-result p0

    .line 547
    return p0

    .line 548
    :pswitch_14
    const-string/jumbo p1, "disable flex policy"

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 555
    .line 556
    .line 557
    move-result-wide v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 558
    :try_start_11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 559
    .line 560
    invoke-virtual {p0, v5, v4}, Lcom/android/server/job/JobSchedulerService;->setFlexPolicy(IZ)V

    .line 561
    .line 562
    .line 563
    const-string p0, "Set flex policy to 0"

    .line 564
    .line 565
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 566
    .line 567
    .line 568
    :try_start_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    .line 570
    .line 571
    return v5

    .line 572
    :catchall_5
    move-exception p0

    .line 573
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    .line 575
    .line 576
    throw p0

    .line 577
    :pswitch_15
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    .line 578
    .line 579
    .line 580
    move-result p0

    .line 581
    return p0

    .line 582
    :pswitch_16
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    .line 583
    .line 584
    .line 585
    move-result p0

    .line 586
    return p0

    .line 587
    :pswitch_17
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    .line 588
    .line 589
    .line 590
    move-result p0

    .line 591
    return p0

    .line 592
    :pswitch_18
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    .line 593
    .line 594
    .line 595
    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 596
    return p0

    .line 597
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v2, "Exception: "

    .line 600
    .line 601
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x70e7e454 -> :sswitch_18
        -0x6e03f1ea -> :sswitch_17
        -0x6605fc19 -> :sswitch_16
        -0x6495fc38 -> :sswitch_15
        -0x5185d186 -> :sswitch_14
        -0x4e50b29f -> :sswitch_13
        -0x4bf9f4d2 -> :sswitch_12
        -0x3dfecf1d -> :sswitch_11
        0x1ba8b -> :sswitch_10
        0x360802 -> :sswitch_f
        0x34cbf91 -> :sswitch_e
        0xbf970fc -> :sswitch_d
        0x11c685dd -> :sswitch_c
        0x29e960a8 -> :sswitch_b
        0x313f4b05 -> :sswitch_a
        0x3338c000 -> :sswitch_9
        0x3d2133f1 -> :sswitch_8
        0x45ebe03d -> :sswitch_7
        0x684a7923 -> :sswitch_6
        0x6ab9e7a4 -> :sswitch_5
        0x6ac7b0ca -> :sswitch_4
        0x6e89549a -> :sswitch_3
        0x7300ee21 -> :sswitch_2
        0x76698608 -> :sswitch_1
        0x76d9e03c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Job scheduler (jobscheduler) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  run [-f | --force] [-s | --satisfied] [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Trigger immediate execution of a specific scheduled job. For historical"

    .line 26
    .line 27
    const-string v1, "    reasons, some constraints, such as battery, are ignored when this"

    .line 28
    .line 29
    const-string v2, "    command is called. If you don\'t want any constraints to be ignored,"

    .line 30
    .line 31
    const-string v3, "    include the -s flag."

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    Options:"

    .line 37
    .line 38
    const-string v1, "      -f or --force: run the job even if technical constraints such as"

    .line 39
    .line 40
    const-string v2, "         connectivity are not currently met. This is incompatible with -f "

    .line 41
    .line 42
    const-string v3, "         and so an error will be reported if both are given."

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "      -n or --namespace: specify the namespace this job sits in; the default"

    .line 48
    .line 49
    const-string v2, "         is null (no namespace)."

    .line 50
    .line 51
    const-string v3, "      -s or --satisfied: run the job only if all constraints are met."

    .line 52
    .line 53
    const-string v4, "         This is incompatible with -f and so an error will be reported"

    .line 54
    .line 55
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v3, "         if both are given."

    .line 59
    .line 60
    const-string v4, "      -u or --user: specify which user\'s job is to be run; the default is"

    .line 61
    .line 62
    const-string v5, "         the primary or system user"

    .line 63
    .line 64
    const-string v6, "  stop [-u | --user USER_ID] [-n | --namespace NAMESPACE] [-s | --stop-reason STOP_REASON] [-i | --internal-stop-reason STOP_REASON] [PACKAGE] [JOB_ID]"

    .line 65
    .line 66
    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "    Trigger immediate stop of currently executing jobs using the specified"

    .line 70
    .line 71
    const-string v6, "    stop reasons."

    .line 72
    .line 73
    invoke-static {p0, v3, v6, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v3, "         all users"

    .line 77
    .line 78
    const-string v6, "      -s or --stop-reason: specify the stop reason given to the job."

    .line 79
    .line 80
    invoke-static {p0, v3, v1, v2, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v6, "         Valid values are those that can be returned from"

    .line 84
    .line 85
    const-string v7, "         JobParameters.getStopReason()."

    .line 86
    .line 87
    const-string v8, "          The default value is STOP_REASON_USER."

    .line 88
    .line 89
    const-string v9, "      -i or --internal-stop-reason: specify the internal stop reason."

    .line 90
    .line 91
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v7, "         JobScheduler will use for internal processing."

    .line 95
    .line 96
    const-string v8, "         JobParameters.getInternalStopReason()."

    .line 97
    .line 98
    const-string v9, "          The default value is INTERNAL_STOP_REASON_UNDEFINED."

    .line 99
    .line 100
    invoke-static {p0, v7, v6, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v6, "  timeout [-u | --user USER_ID] [-n | --namespace NAMESPACE] [PACKAGE] [JOB_ID]"

    .line 104
    .line 105
    const-string v7, "    Trigger immediate timeout of currently executing jobs, as if their"

    .line 106
    .line 107
    const-string v8, "    execution timeout had expired."

    .line 108
    .line 109
    const-string v9, "    This is the equivalent of calling `stop -s 3 -i 3`."

    .line 110
    .line 111
    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0, v4, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v3, "  cancel [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE [JOB_ID]"

    .line 118
    .line 119
    const-string v6, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    .line 120
    .line 121
    const-string v7, "    by that package will be canceled.  USE WITH CAUTION."

    .line 122
    .line 123
    invoke-static {p0, v2, v3, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v0, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v3, "  heartbeat [num]"

    .line 130
    .line 131
    const-string v6, "    No longer used."

    .line 132
    .line 133
    const-string v7, "  cache-config-changes [on|off]"

    .line 134
    .line 135
    invoke-static {p0, v2, v3, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v3, "    Control caching the set of most recently processed config flags."

    .line 139
    .line 140
    const-string v6, "    Off by default.  Turning on makes get-config-value useful."

    .line 141
    .line 142
    const-string v7, "  monitor-battery [on|off]"

    .line 143
    .line 144
    const-string v8, "    Control monitoring of all battery changes.  Off by default.  Turning"

    .line 145
    .line 146
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v3, "    on makes get-battery-seq useful."

    .line 150
    .line 151
    const-string v6, "  enable-flex-policy --option <option>"

    .line 152
    .line 153
    const-string v7, "    Enable flex policy with the specified options. Supported options are"

    .line 154
    .line 155
    const-string v8, "    battery-not-low, charging, connectivity, idle."

    .line 156
    .line 157
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v3, "    Multiple enable options can be specified (e.g."

    .line 161
    .line 162
    const-string v6, "    enable-flex-policy --option battery-not-low --option charging"

    .line 163
    .line 164
    const-string v7, "  disable-flex-policy"

    .line 165
    .line 166
    const-string v8, "    Turn off flex policy so that it does not affect job execution."

    .line 167
    .line 168
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v3, "  reset-flex-policy"

    .line 172
    .line 173
    const-string v6, "    Resets the flex policy to its default state."

    .line 174
    .line 175
    const-string v7, "  get-aconfig-flag-state FULL_FLAG_NAME"

    .line 176
    .line 177
    const-string v8, "    Return the state of the specified aconfig flag, if known. The flag name"

    .line 178
    .line 179
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v3, "         must be fully qualified."

    .line 183
    .line 184
    const-string v6, "  get-battery-seq"

    .line 185
    .line 186
    const-string v7, "    Return the last battery update sequence number that was received."

    .line 187
    .line 188
    const-string v8, "  get-battery-charging"

    .line 189
    .line 190
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v3, "    Return whether the battery is currently considered to be charging."

    .line 194
    .line 195
    const-string v6, "  get-battery-not-low"

    .line 196
    .line 197
    const-string v7, "    Return whether the battery is currently considered to not be low."

    .line 198
    .line 199
    const-string v8, "  get-config-value KEY"

    .line 200
    .line 201
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v3, "    Return the most recently processed and cached config value for the KEY."

    .line 205
    .line 206
    const-string v6, "    Only useful if caching is turned on with cache-config-changes."

    .line 207
    .line 208
    const-string v7, "  get-estimated-download-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 209
    .line 210
    const-string v8, "    Return the most recent estimated download bytes for the job."

    .line 211
    .line 212
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v3, "  get-estimated-upload-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 216
    .line 217
    invoke-static {p0, v0, v4, v5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v3, "    Return the most recent estimated upload bytes for the job."

    .line 221
    .line 222
    invoke-static {p0, v3, v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v3, "  get-storage-seq"

    .line 226
    .line 227
    const-string v6, "    Return the last storage update sequence number that was received."

    .line 228
    .line 229
    const-string v7, "  get-storage-not-low"

    .line 230
    .line 231
    const-string v8, "    Return whether storage is currently considered to not be low."

    .line 232
    .line 233
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v3, "  get-transferred-download-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 237
    .line 238
    const-string v6, "    Return the most recent transferred download bytes for the job."

    .line 239
    .line 240
    invoke-static {p0, v3, v6, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v3, "  get-transferred-upload-bytes [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 244
    .line 245
    const-string v6, "    Return the most recent transferred upload bytes for the job."

    .line 246
    .line 247
    invoke-static {p0, v5, v3, v6, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v3, "  get-job-state [-u | --user USER_ID] [-n | --namespace NAMESPACE] PACKAGE JOB_ID"

    .line 251
    .line 252
    const-string v6, "    Return the current state of a job, may be any combination of:"

    .line 253
    .line 254
    invoke-static {p0, v4, v5, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v3, "      pending: currently on the pending list, waiting to be active"

    .line 258
    .line 259
    const-string v6, "      active: job is actively running"

    .line 260
    .line 261
    const-string v7, "      user-stopped: job can\'t run because its user is stopped"

    .line 262
    .line 263
    const-string v8, "      backing-up: job can\'t run because app is currently backing up its data"

    .line 264
    .line 265
    invoke-static {p0, v3, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v3, "      no-component: job can\'t run because its component is not available"

    .line 269
    .line 270
    const-string v6, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    .line 271
    .line 272
    const-string v7, "      waiting: if nothing else above is printed, job not ready to run"

    .line 273
    .line 274
    invoke-static {p0, v3, v6, v7, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {p0, v4, v5, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v0, "  trigger-dock-state [idle|active]"

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v0, "    Trigger wireless charging dock state.  Active by default."

    .line 286
    .line 287
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final printError(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, " / namespace "

    .line 2
    .line 3
    const-string v1, " in package "

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, " / user "

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "Package not found: "

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "Could not find job "

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz p5, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "Job "

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-eqz p5, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    .line 96
    .line 97
    const-string p1, " has functional constraints but --force not specified"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v2

    .line 103
    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final resetExecutionQuota(Ljava/io/PrintWriter;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "reset execution quota"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v1, "-u"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "--user"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const-string p0, "Error: unknown option \'"

    .line 32
    .line 33
    const-string v0, "\'"

    .line 34
    .line 35
    invoke-static {p1, p0, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, -0x2

    .line 50
    if-ne v1, p1, :cond_2

    .line 51
    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 70
    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return v0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final runJob(Ljava/io/PrintWriter;)I
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const-string/jumbo v2, "force scheduled jobs"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v2

    .line 12
    move v9, v4

    .line 13
    move v11, v9

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_8

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    sparse-switch v6, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    :goto_1
    move v6, v1

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :sswitch_0
    const-string v6, "--namespace"

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v6, 0x7

    .line 40
    goto :goto_2

    .line 41
    :sswitch_1
    const-string v6, "--user"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v6, 0x6

    .line 51
    goto :goto_2

    .line 52
    :sswitch_2
    const-string v6, "-u"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v6, 0x5

    .line 62
    goto :goto_2

    .line 63
    :sswitch_3
    const-string v6, "-s"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v6, 0x4

    .line 73
    goto :goto_2

    .line 74
    :sswitch_4
    const-string v6, "-n"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v6, 0x3

    .line 84
    goto :goto_2

    .line 85
    :sswitch_5
    const-string v6, "-f"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const/4 v6, 0x2

    .line 95
    goto :goto_2

    .line 96
    :sswitch_6
    const-string v6, "--satisfied"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    move v6, v0

    .line 106
    goto :goto_2

    .line 107
    :sswitch_7
    const-string v6, "--force"

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_7

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    move v6, v2

    .line 117
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    const-string p0, "Error: unknown option \'"

    .line 121
    .line 122
    const-string v0, "\'"

    .line 123
    .line 124
    invoke-static {p1, p0, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v1

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    goto :goto_0

    .line 142
    :pswitch_2
    move v9, v0

    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :pswitch_3
    move v11, v0

    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_8
    if-eqz v11, :cond_9

    .line 149
    .line 150
    if-eqz v9, :cond_9

    .line 151
    .line 152
    const-string p0, "Cannot specify both --force and --satisfied"

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return v1

    .line 158
    :cond_9
    const/4 v0, -0x2

    .line 159
    if-ne v4, v0, :cond_a

    .line 160
    .line 161
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move v0, v4

    .line 167
    :goto_3
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 180
    .line 181
    .line 182
    move-result-wide v12

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 184
    .line 185
    move v5, v0

    .line 186
    move v6, v2

    .line 187
    move-object v7, v1

    .line 188
    move-object v8, v3

    .line 189
    move v10, v11

    .line 190
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(IILjava/lang/String;Ljava/lang/String;ZZ)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    move-object v4, p0

    .line 195
    move v5, v10

    .line 196
    move v6, v0

    .line 197
    move v7, v2

    .line 198
    move-object v8, v1

    .line 199
    move-object v9, v3

    .line 200
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz p0, :cond_b

    .line 205
    .line 206
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    .line 208
    .line 209
    return v10

    .line 210
    :cond_b
    :try_start_1
    const-string p0, "Running job"

    .line 211
    .line 212
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    if-eqz v11, :cond_c

    .line 216
    .line 217
    const-string p0, " [FORCED]"

    .line 218
    .line 219
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :catchall_0
    move-exception p0

    .line 224
    goto :goto_5

    .line 225
    :cond_c
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    .line 228
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    .line 230
    .line 231
    return v10

    .line 232
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    nop

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x60ebf6b5 -> :sswitch_7
        -0x39cf9d6e -> :sswitch_6
        0x5d9 -> :sswitch_5
        0x5e1 -> :sswitch_4
        0x5e6 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final stop(Ljava/io/PrintWriter;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "stop jobs"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/16 v5, 0xd

    .line 14
    .line 15
    move v14, v3

    .line 16
    move-object v10, v4

    .line 17
    move v13, v5

    .line 18
    move v4, v14

    .line 19
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_8

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    sparse-switch v6, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    :goto_1
    move v6, v3

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :sswitch_0
    const-string v6, "--namespace"

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v6, 0x7

    .line 45
    goto :goto_2

    .line 46
    :sswitch_1
    const-string v6, "--user"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v6, 0x6

    .line 56
    goto :goto_2

    .line 57
    :sswitch_2
    const-string v6, "--internal-stop-reason"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v6, 0x5

    .line 67
    goto :goto_2

    .line 68
    :sswitch_3
    const-string v6, "-u"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v6, 0x4

    .line 78
    goto :goto_2

    .line 79
    :sswitch_4
    const-string v6, "-s"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v6, 0x3

    .line 89
    goto :goto_2

    .line 90
    :sswitch_5
    const-string v6, "-n"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const/4 v6, 0x2

    .line 100
    goto :goto_2

    .line 101
    :sswitch_6
    const-string v6, "-i"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_6

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    move v6, v1

    .line 111
    goto :goto_2

    .line 112
    :sswitch_7
    const-string v6, "--stop-reason"

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    move v6, v2

    .line 122
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 123
    .line 124
    .line 125
    const-string v0, "Error: unknown option \'"

    .line 126
    .line 127
    const-string v1, "\'"

    .line 128
    .line 129
    move-object/from16 v7, p1

    .line 130
    .line 131
    invoke-static {v7, v0, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v3

    .line 135
    :pswitch_0
    move-object/from16 v7, p1

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    goto :goto_0

    .line 146
    :pswitch_1
    move-object/from16 v7, p1

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    move-object v10, v5

    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_2
    move-object/from16 v7, p1

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :pswitch_3
    move-object/from16 v7, p1

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    move v13, v5

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    move-object/from16 v7, p1

    .line 181
    .line 182
    const/4 v5, -0x2

    .line 183
    if-ne v4, v5, :cond_9

    .line 184
    .line 185
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    :cond_9
    move v9, v4

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_a

    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    :cond_a
    move v12, v3

    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 206
    .line 207
    .line 208
    move-result-wide v15

    .line 209
    :try_start_0
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 210
    .line 211
    if-eqz v4, :cond_b

    .line 212
    .line 213
    move v11, v1

    .line 214
    goto :goto_3

    .line 215
    :cond_b
    move v11, v2

    .line 216
    :goto_3
    move-object/from16 v7, p1

    .line 217
    .line 218
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/job/JobSchedulerService;->executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .line 220
    .line 221
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    .line 223
    .line 224
    return v2

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    nop

    .line 231
    :sswitch_data_0
    .sparse-switch
        -0x53cc7b31 -> :sswitch_7
        0x5dc -> :sswitch_6
        0x5e1 -> :sswitch_5
        0x5e6 -> :sswitch_4
        0x5e8 -> :sswitch_3
        0x24d2e8ff -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final timeout(Ljava/io/PrintWriter;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string/jumbo v3, "force timeout jobs"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v9, v4

    .line 14
    move v4, v3

    .line 15
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-eqz v5, :cond_4

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sparse-switch v6, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_1
    move v6, v3

    .line 29
    goto :goto_2

    .line 30
    :sswitch_0
    const-string v6, "--namespace"

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v6, 0x3

    .line 40
    goto :goto_2

    .line 41
    :sswitch_1
    const-string v6, "--user"

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v6, 0x2

    .line 51
    goto :goto_2

    .line 52
    :sswitch_2
    const-string v6, "-u"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v6, v1

    .line 62
    goto :goto_2

    .line 63
    :sswitch_3
    const-string v6, "-n"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v6, v2

    .line 73
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    const-string v0, "Error: unknown option \'"

    .line 77
    .line 78
    const-string v1, "\'"

    .line 79
    .line 80
    move-object/from16 v6, p1

    .line 81
    .line 82
    invoke-static {v6, v0, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v3

    .line 86
    :pswitch_0
    move-object/from16 v6, p1

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    goto :goto_0

    .line 97
    :pswitch_1
    move-object/from16 v6, p1

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    move-object v9, v5

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-object/from16 v6, p1

    .line 106
    .line 107
    const/4 v5, -0x2

    .line 108
    if-ne v4, v5, :cond_5

    .line 109
    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    :cond_5
    move v8, v4

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArg()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    :cond_6
    move v11, v3

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 131
    .line 132
    .line 133
    move-result-wide v14

    .line 134
    :try_start_0
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 135
    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    move v10, v1

    .line 139
    goto :goto_3

    .line 140
    :cond_7
    move v10, v2

    .line 141
    :goto_3
    const/4 v12, 0x3

    .line 142
    const/4 v13, 0x3

    .line 143
    move-object/from16 v6, p1

    .line 144
    .line 145
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/job/JobSchedulerService;->executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    .line 150
    .line 151
    return v2

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x5e1 -> :sswitch_3
        0x5e8 -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x67bfa3bb -> :sswitch_0
    .end sparse-switch

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final triggerDockState()I
    .locals 5

    .line 1
    const-string/jumbo v0, "trigger wireless charging dock state"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "idle"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "active"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    move v3, v2

    .line 32
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Landroid/content/Intent;

    .line 44
    .line 45
    const-string v4, "android.intent.action.DOCK_IDLE"

    .line 46
    .line 47
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v4, "android.intent.action.DOCK_ACTIVE"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    const-string v4, "android"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const/high16 v4, 0x50000000

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 73
    .line 74
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v1, "Error: unknown option "

    .line 91
    .line 92
    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v3
.end method
