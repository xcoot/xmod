.class public Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field public static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field public static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field public static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field public static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field public static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field public static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field public static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final KNOX_CUSTOM_TRUE:I = 0x8

.field public static final PARAM_BUF_SIZE:I = 0x20

.field public static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field public static mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->DEBUG:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method private native readParamData()[B
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public final enforceSystemPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string v1, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    return-object p0
.end method

.method public final isKnoxCustomAutoStartUpEnabled()Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final readBooleanDataValue(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const/16 v1, 0x1f

    .line 17
    .line 18
    aget-byte v1, p0, v1

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    const/16 v1, 0x1e

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    if-ne p1, v3, :cond_1

    .line 29
    .line 30
    aget-byte v4, p0, v3

    .line 31
    .line 32
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    aget-byte v4, p0, v1

    .line 35
    .line 36
    and-int/2addr v4, v2

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    :cond_1
    const/16 v4, 0x9

    .line 41
    .line 42
    if-ne p1, v4, :cond_2

    .line 43
    .line 44
    aget-byte p1, p0, v4

    .line 45
    .line 46
    if-ne p1, v3, :cond_2

    .line 47
    .line 48
    aget-byte p0, p0, v1

    .line 49
    .line 50
    and-int/lit8 p0, p0, 0x2

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    move v0, v2

    .line 55
    :cond_2
    return v0
.end method

.method public final setKnoxCustomAutoStartUp(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->enforceSystemPermission()I

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_1
    :goto_0
    return v2
.end method

.method public final writeBooleanDataValue(IZ)Z
    .locals 10

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v4, 0x1f

    .line 22
    .line 23
    aget-byte v5, v1, v4

    .line 24
    .line 25
    const/16 v6, 0x9

    .line 26
    .line 27
    const/16 v7, 0x1e

    .line 28
    .line 29
    const/16 v8, 0x8

    .line 30
    .line 31
    const/4 v9, 0x6

    .line 32
    if-ne v5, v9, :cond_0

    .line 33
    .line 34
    aget-byte v5, v1, v8

    .line 35
    .line 36
    aput-byte v5, v0, v8

    .line 37
    .line 38
    aget-byte v5, v1, v6

    .line 39
    .line 40
    aput-byte v5, v0, v6

    .line 41
    .line 42
    aget-byte v1, v1, v7

    .line 43
    .line 44
    aput-byte v1, v0, v7

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v1, 0x17

    .line 48
    .line 49
    aput-byte v1, v0, v8

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    aput-byte v1, v0, v6

    .line 53
    .line 54
    aput-byte v1, v0, v7

    .line 55
    .line 56
    :goto_0
    if-eqz p2, :cond_1

    .line 57
    .line 58
    aput-byte v8, v0, p1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 p2, 0x7

    .line 62
    aput-byte p2, v0, p1

    .line 63
    .line 64
    :goto_1
    aput-byte v9, v0, v4

    .line 65
    .line 66
    if-ne p1, v8, :cond_2

    .line 67
    .line 68
    aget-byte p2, v0, v7

    .line 69
    .line 70
    or-int/lit8 p2, p2, 0x1

    .line 71
    .line 72
    int-to-byte p2, p2

    .line 73
    aput-byte p2, v0, v7

    .line 74
    .line 75
    :cond_2
    if-ne p1, v6, :cond_3

    .line 76
    .line 77
    aget-byte p1, v0, v7

    .line 78
    .line 79
    or-int/lit8 p1, p1, 0x2

    .line 80
    .line 81
    int-to-byte p1, p1

    .line 82
    aput-byte p1, v0, v7

    .line 83
    .line 84
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeParamData([B)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return p0
.end method
