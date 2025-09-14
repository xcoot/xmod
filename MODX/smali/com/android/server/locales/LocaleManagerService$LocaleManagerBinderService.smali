.class public final Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
.super Landroid/app/ILocaleManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/ILocaleManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSystemLocales()Landroid/os/LocaleList;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-nez p0, :cond_1

    .line 28
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/locales/LocaleManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/locales/LocaleManagerShellCommand;-><init>(Landroid/app/ILocaleManager;)V

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 20
    return-void
.end method

.method public final setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    .locals 7

    .line 1
    if-eqz p4, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    :goto_0
    move v6, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    goto :goto_0

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move v5, p4

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V

    .line 17
    return-void
.end method

.method public final setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result v2

    .line 23
    invoke-direct {v0, v2}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;-><init>(I)V

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 34
    move-result v4

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    move-result v5

    .line 39
    const-string/jumbo v9, "setOverrideLocaleConfig"

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move v6, p2

    .line 46
    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 49
    move-result p2

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    .line 54
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-nez v1, :cond_1

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 59
    const-string v3, "android.permission.SET_APP_SPECIFIC_LOCALECONFIG"

    .line 61
    const-string/jumbo v4, "setOverrideLocaleConfig"

    .line 64
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const/4 p1, 0x4

    .line 70
    :try_start_2
    iput p1, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 72
    throw p0

    .line 73
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 76
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locales/LocaleManagerService;->setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    iget v3, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    .line 85
    iget v4, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    .line 87
    iget-boolean v5, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    .line 89
    iget-boolean v6, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    .line 91
    iget-boolean v7, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    .line 93
    iget v8, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 95
    const/16 v1, 0x247

    .line 97
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    .line 100
    :goto_1
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    :goto_2
    iget v3, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    .line 110
    iget v4, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    .line 112
    iget-boolean v5, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    .line 114
    iget-boolean v6, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    .line 116
    iget-boolean v7, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    .line 118
    iget v8, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 120
    const/16 v1, 0x247

    .line 122
    iget v2, v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    .line 124
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    .line 127
    throw p0
.end method
