.class public final Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field public final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 7
    .line 8
    new-instance p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10

    .line 1
    invoke-virtual {p0, p4, p5, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string v4, "appops"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Landroid/app/AppOpsManager;

    .line 52
    .line 53
    :try_start_0
    const-string v5, "android:read_device_identifiers"

    .line 54
    .line 55
    move v6, p5

    .line 56
    move-object v7, p1

    .line 57
    move-object v8, p3

    .line 58
    move-object v9, p2

    .line 59
    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const-string p2, "device_policy"

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 93
    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0, p1, p4, p5}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    return v2

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_3
    const/4 p0, -0x1

    .line 114
    return p0

    .line 115
    :cond_4
    :goto_0
    return v2
.end method

.method public final checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, p2, p4, p6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string p2, "appops"

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    move-object v0, p0

    .line 26
    check-cast v0, Landroid/app/AppOpsManager;

    .line 27
    .line 28
    move-object v1, p3

    .line 29
    move v2, p6

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p5

    .line 32
    move-object v5, p7

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 15

    .line 1
    move-object v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 3
    .line 4
    move/from16 v10, p4

    .line 5
    .line 6
    move-object/from16 v11, p2

    .line 7
    .line 8
    move/from16 v12, p5

    .line 9
    .line 10
    invoke-virtual {p0, v10, v12, v9, v11}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v10, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v13, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return v13

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    if-nez v9, :cond_1

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    :try_start_0
    iget-object v1, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v9, v13, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    const/16 v2, 0x1d

    .line 50
    .line 51
    if-gt v1, v2, :cond_2

    .line 52
    .line 53
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 54
    .line 55
    const-string v3, "android:read_phone_state"

    .line 56
    .line 57
    move-object v0, p0

    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    move/from16 v4, p4

    .line 61
    .line 62
    move-object/from16 v5, p3

    .line 63
    .line 64
    move/from16 v6, p5

    .line 65
    .line 66
    move-object/from16 v7, p2

    .line 67
    .line 68
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    return v0

    .line 75
    :catch_0
    :cond_2
    move v14, v0

    .line 76
    const/4 v2, 0x0

    .line 77
    const-string v3, "android:write_sms"

    .line 78
    .line 79
    move-object v0, p0

    .line 80
    move-object/from16 v1, p1

    .line 81
    .line 82
    move/from16 v4, p4

    .line 83
    .line 84
    move-object/from16 v5, p3

    .line 85
    .line 86
    move/from16 v6, p5

    .line 87
    .line 88
    move-object/from16 v7, p2

    .line 89
    .line 90
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    return v13

    .line 97
    :cond_3
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    .line 98
    .line 99
    const-string v3, "android:read_phone_numbers"

    .line 100
    .line 101
    move-object v0, p0

    .line 102
    move-object/from16 v1, p1

    .line 103
    .line 104
    move/from16 v4, p4

    .line 105
    .line 106
    move-object/from16 v5, p3

    .line 107
    .line 108
    move/from16 v6, p5

    .line 109
    .line 110
    move-object/from16 v7, p2

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    return v13

    .line 119
    :cond_4
    const-string v2, "android.permission.READ_SMS"

    .line 120
    .line 121
    const-string v3, "android:read_sms"

    .line 122
    .line 123
    move-object v0, p0

    .line 124
    move-object/from16 v1, p1

    .line 125
    .line 126
    move/from16 v4, p4

    .line 127
    .line 128
    move-object/from16 v5, p3

    .line 129
    .line 130
    move/from16 v6, p5

    .line 131
    .line 132
    move-object/from16 v7, p2

    .line 133
    .line 134
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    return v13

    .line 141
    :cond_5
    return v14
.end method

.method public final grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "grantDefaultPermissionsForCarrierServiceApp"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "grantPermissionsToEnabledCarrierApps"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final verifyCallerCanCheckAccess(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    const/16 v4, 0x2710

    .line 25
    .line 26
    if-lt v2, v4, :cond_1

    .line 27
    .line 28
    if-ne v0, p2, :cond_0

    .line 29
    .line 30
    if-eq v1, p1, :cond_1

    .line 31
    .line 32
    :cond_0
    move v2, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    if-eqz p3, :cond_3

    .line 36
    .line 37
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-lt v5, v4, :cond_3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 50
    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    invoke-virtual {p0, p3, v6, v7, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eq p2, p0, :cond_3

    .line 58
    .line 59
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-lt p0, v4, :cond_2

    .line 64
    .line 65
    move p0, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move p0, p2

    .line 68
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v2, "Package uid mismatch"

    .line 73
    .line 74
    const-string v4, "193441322"

    .line 75
    .line 76
    filled-new-array {v4, p0, v2}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const v2, 0x534e4554

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v3, v2

    .line 88
    :goto_2
    if-nez v3, :cond_4

    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    move-object v6, p3

    .line 108
    move-object v9, p4

    .line 109
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string p1, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    .line 114
    .line 115
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string p1, "PermissionManager"

    .line 120
    .line 121
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/lang/SecurityException;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method
