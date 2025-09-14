.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "appops"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/app/AppOpsManager;

    .line 21
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "HardwarePropertiesManagerService"

    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "****** Dump of HardwarePropertiesManagerService ******"

    .line 14
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    move-result p3

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    array-length v2, v0

    .line 35
    if-lez v2, :cond_1

    .line 37
    aget-object p1, v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    :goto_0
    const-string p3, "CPU "

    .line 53
    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p3, "GPU "

    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 p3, 0x2

    .line 63
    const-string v0, "Battery "

    .line 65
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 p3, 0x3

    .line 69
    const-string v0, "Skin "

    .line 71
    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getFanSpeeds(Ljava/lang/String;)[F

    .line 77
    move-result-object p3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "Fan speed: "

    .line 82
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string p3, "\n"

    .line 94
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    .line 107
    move-result-object p0

    .line 108
    :goto_1
    array-length p1, p0

    .line 109
    if-ge v1, p1, :cond_3

    .line 111
    const-string p1, "Cpu usage of core: "

    .line 113
    const-string p3, ", active = "

    .line 115
    invoke-static {v1, p1, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p1

    .line 119
    aget-object p3, p0, v1

    .line 121
    invoke-virtual {p3}, Landroid/os/CpuUsageInfo;->getActive()J

    .line 124
    move-result-wide v2

    .line 125
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    const-string p3, ", total = "

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    aget-object p3, p0, v1

    .line 135
    invoke-virtual {p3}, Landroid/os/CpuUsageInfo;->getTotal()J

    .line 138
    move-result-wide v2

    .line 139
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    const-string p0, "****** End of HardwarePropertiesManagerService dump ******"

    .line 154
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final dumpTempValues(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 7
    const-string/jumbo v5, "temperatures: "

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move v3, p1

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 8
    const-string/jumbo v12, "throttling temperatures: "

    const/4 v13, 0x1

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move v10, p1

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 9
    const-string/jumbo v5, "shutdown temperatures: "

    const/4 v6, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    const-string/jumbo v12, "vr throttling temperatures: "

    const/4 v13, 0x3

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p4, p5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 2
    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/HardwarePropertiesManagerService;->getDeviceTemperatures(Ljava/lang/String;II)[F

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    move-result v0

    .line 18
    const-class v1, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 20
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 26
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->systemServerRoleControllerEnabled()Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 33
    const-wide/32 v4, 0x125003b4

    .line 36
    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    new-instance v2, Landroid/os/UserHandle;

    .line 44
    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 47
    iget-object v4, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 52
    move-result-object v2

    .line 53
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 55
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 64
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 66
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 72
    :goto_0
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_4

    .line 78
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 80
    const-string v2, "android.permission.DEVICE_POWER"

    .line 82
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_4

    .line 88
    if-eqz v1, :cond_3

    .line 90
    iget-object p0, v1, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 92
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 94
    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 97
    if-nez v2, :cond_1

    .line 99
    monitor-exit v1

    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_1
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 105
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_2

    .line 115
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 117
    iget p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 119
    if-ne v0, p0, :cond_2

    .line 121
    const/4 v3, 0x1

    .line 122
    :cond_2
    monitor-exit v1

    .line 123
    :goto_1
    if-eqz v3, :cond_3

    .line 125
    goto :goto_3

    .line 126
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 130
    const-string p1, "The caller is neither a device owner, nor holding the DEVICE_POWER permission, nor the current VrListener."

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0

    .line 136
    :cond_4
    :goto_3
    return-void
.end method

.method public final getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;

    .line 10
    move-result-object p1

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final getDeviceTemperatures(Ljava/lang/String;II)[F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F

    .line 10
    move-result-object p1

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final getFanSpeeds(Ljava/lang/String;)[F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F

    .line 10
    move-result-object p1

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method
