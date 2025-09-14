.class public final Lcom/android/server/enterprise/utils/KpuHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/utils/KpuHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKpuPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/utils/KpuHelper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/KpuHelper;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    .line 13
    .line 14
    return-object p0
.end method

.method public static isKpuPermissionGranted(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "Caller "

    .line 2
    .line 3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v3, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "KpuHelper"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " does not have KPU permission"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return v2
.end method


# virtual methods
.method public final getKpuPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo p0, "com.samsung.android.knox.kpu"

    .line 7
    .line 8
    .line 9
    :goto_0
    return-object p0
.end method

.method public final isCallerValidKpu(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "com.samsung.android.knox.kpu"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2, p2, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return v1

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_4

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->isDoPresent()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    return p2

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 47
    .line 48
    const-string p1, "KPU cannot apply policies in user 0 space if DO is not present on device.."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    sget-object p0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 55
    .line 56
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 63
    .line 64
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    return p2

    .line 76
    :cond_3
    return v1

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    const-string p1, "KPU app does not have a valid signature.."

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final isDoPresent()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    const-string p0, "KpuHelper"

    .line 34
    .line 35
    const-string v3, "Failed to retrieve DO on device"

    .line 36
    .line 37
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isKpuPlatformSigned(ILjava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v0, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    .line 24
    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "android"

    .line 35
    .line 36
    invoke-interface {v0, p0, p2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public final isUidValidKpu(IIZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const-string/jumbo v2, "com.samsung.android.knox.kpu"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2, v0}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(ILjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v1

    .line 39
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_9

    .line 48
    .line 49
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p3, :cond_4

    .line 54
    .line 55
    if-ne p1, p2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 59
    .line 60
    const-string p1, "KPU userId does not match with ContextInfo.mContainerId.."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_4
    :goto_1
    const/4 p2, 0x1

    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->isDoPresent()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 76
    .line 77
    return p2

    .line 78
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string p1, "KPU cannot apply policies in user 0 space if DO is not present on device.."

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_6
    sget-object p3, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 87
    .line 88
    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 89
    .line 90
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 95
    .line 96
    check-cast p3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-eqz p3, :cond_8

    .line 106
    .line 107
    sget-object p3, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    check-cast p3, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 114
    .line 115
    check-cast p3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 127
    .line 128
    return p2

    .line 129
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 130
    .line 131
    const-string p1, "KPU must be inside PO to be able to call container or parent APIs.."

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_8
    return v1

    .line 138
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 139
    .line 140
    const-string p1, "KPU app does not have a valid signature.."

    .line 141
    .line 142
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method
