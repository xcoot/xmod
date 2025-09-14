.class public final Lcom/android/server/sepunion/cover/CoverServiceManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GAMEPACK_COVER:Landroid/content/ComponentName;

.field public static final IS_B6_DEVICE:Z

.field public static final LED_COVER:Landroid/content/ComponentName;

.field public static final LED_SUIT:Landroid/content/ComponentName;

.field public static final SUPPORT_FLIP_SUITCASE:Z

.field public static final SYSTEM_UI_COVER:Landroid/content/ComponentName;


# instance fields
.field public final mActiveServices:Ljava/util/ArrayList;

.field public final mBindHistory:[Ljava/lang/String;

.field public mBindHistoryIdx:I

.field public final mBindingTimestamp:Ljava/util/HashMap;

.field public final mBroadcastReceiver:Lcom/android/server/sepunion/cover/CoverServiceManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mCoverServices:Landroid/util/SparseArray;

.field public final mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

.field public final mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

.field public final mLock:Ljava/lang/Object;

.field public mRegisterBroadcast:Z

.field public mWakeLockRunnable:Lcom/android/server/sepunion/cover/CoverServiceManager$3;


# direct methods
.method public static -$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    monitor-exit v0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    const/4 p0, 0x2

    .line 42
    :goto_1
    return p0

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.sec.android.cover.ledcover"

    .line 4
    .line 5
    const-string v2, "com.sec.android.cover.ledcover.LedCoverService"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 11
    .line 12
    new-instance v0, Landroid/content/ComponentName;

    .line 13
    .line 14
    const-string v1, "com.samsung.android.ledcasesuit"

    .line 15
    .line 16
    const-string v2, "com.samsung.android.ledcasesuit.LedCaseSuitService"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_SUIT:Landroid/content/ComponentName;

    .line 22
    .line 23
    new-instance v0, Landroid/content/ComponentName;

    .line 24
    .line 25
    const-string v1, "com.android.systemui"

    .line 26
    .line 27
    const-string v2, "com.android.systemui.cover.SysUICoverService"

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 33
    .line 34
    new-instance v0, Landroid/content/ComponentName;

    .line 35
    .line 36
    const-string v1, "com.sec.android.usb.fancontrol"

    .line 37
    .line 38
    const-string v2, "com.sec.android.usb.fancontrol.FanControlService"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->GAMEPACK_COVER:Landroid/content/ComponentName;

    .line 44
    .line 45
    const-string/jumbo v0, "ro.build.version.oneui"

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const v2, 0xeac5

    .line 54
    .line 55
    .line 56
    if-lt v0, v2, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    :cond_0
    sput-boolean v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->SUPPORT_FLIP_SUITCASE:Z

    .line 60
    .line 61
    const-string/jumbo v0, "ro.product.vendor.device"

    .line 62
    .line 63
    .line 64
    const-string v1, "NONE"

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "b6q"

    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->IS_B6_DEVICE:Z

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 35
    .line 36
    new-instance v1, Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$1;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    .line 46
    .line 47
    new-instance p3, Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 48
    .line 49
    invoke-direct {p3, p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager$H;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 53
    .line 54
    const-string/jumbo p2, "power"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/os/PowerManager;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    const-string p3, "CoverServiceManager"

    .line 65
    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 80
    .line 81
    return-void
.end method

.method public static verifySystemFeature(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_1
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_2
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_3
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    .line 57
    .line 58
    return p0

    .line 59
    :pswitch_4
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportGamePackCover:Z

    .line 67
    .line 68
    return p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    .line 77
    .line 78
    return p0

    .line 79
    :cond_1
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 87
    .line 88
    if-eqz p0, :cond_2

    .line 89
    .line 90
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 91
    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_2
    return v1

    .line 96
    :cond_3
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    .line 104
    .line 105
    return p0

    .line 106
    :cond_4
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    .line 114
    .line 115
    return p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addBindingServiceLocked(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final bindCoverService(IZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "bindCoverService : type = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CoverManager_CoverServiceManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v2, Landroid/os/UserHandle;

    .line 38
    .line 39
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v2, p2

    .line 52
    :goto_0
    if-nez v0, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/16 v2, 0xd

    .line 70
    .line 71
    if-ne p1, v2, :cond_4

    .line 72
    .line 73
    const-string p1, "com.sec.android.usb.fancontrol"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/content/Intent;

    .line 79
    .line 80
    const-string p2, "com.sec.android.app.applinker.GAME_PACK_ADDED"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p2, "com.sec.android.app.applinker"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    :goto_1
    const/16 v2, 0xff

    .line 97
    .line 98
    if-ne p1, v2, :cond_5

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    sget-boolean v2, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    const-string v2, "getSystemUICoverService : return because of nfc smart cover supporting nfc authentication"

    .line 114
    .line 115
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 121
    .line 122
    :goto_2
    if-eqz v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_3
    return-void
.end method

.method public final bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
    .locals 8

    .line 1
    const-string v0, "binding:cn="

    .line 2
    .line 3
    const-string v1, "Unable to bind service: "

    .line 4
    .line 5
    const-string v2, "bindCoverServiceLocked : type = "

    .line 6
    .line 7
    const-string v3, "CoverManager_CoverServiceManager"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p0, "bindCoverServiceLocked : component is null"

    .line 13
    .line 14
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v5

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    return v4

    .line 35
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :try_start_1
    new-instance v6, Lcom/android/server/sepunion/cover/CoverServiceManager$2;

    .line 44
    .line 45
    invoke-direct {v6, p0, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager$2;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const v7, 0x1000005

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v5, v6, v7, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-nez p3, :cond_2

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return v4

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 93
    .line 94
    .line 95
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ",type="

    .line 104
    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x1

    .line 119
    return p0

    .line 120
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v3, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    return v4

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    throw p0
.end method

.method public final findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0xb

    .line 5
    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->queryInstalledCoverServices()Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Landroid/content/ComponentName;

    .line 62
    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-object p3

    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    :goto_2
    monitor-exit v0

    .line 76
    return-object p0

    .line 77
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final getPredefinedCoverServiceNameLocked(I)Landroid/content/ComponentName;
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 p0, 0xd

    .line 9
    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0xe

    .line 13
    .line 14
    if-eq p1, p0, :cond_3

    .line 15
    .line 16
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->GAMEPACK_COVER:Landroid/content/ComponentName;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-boolean p0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    const-string p0, "CoverManager_CoverServiceManager"

    .line 36
    .line 37
    const-string p1, "getPredefinedCoverServiceNameLocked : return because of nfc smart cover supporting nfc authentication"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_2
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->IS_B6_DEVICE:Z

    .line 48
    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->SUPPORT_FLIP_SUITCASE:Z

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_SUIT:Landroid/content/ComponentName;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 59
    .line 60
    :goto_0
    return-object p0
.end method

.method public final getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_4

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 31
    .line 32
    new-instance v2, Landroid/content/ComponentName;

    .line 33
    .line 34
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "com.samsung.android.permission.BIND_COVER_SERVICE"

    .line 42
    .line 43
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string/jumbo v4, "service("

    .line 50
    .line 51
    .line 52
    const-string v5, "/"

    .line 53
    .line 54
    const-string v6, "CoverManager_CoverServiceManager"

    .line 55
    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ") has no permission"

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v6, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 90
    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ") has no meta data"

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v6, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string v7, "com.samsung.android.cover.service"

    .line 125
    .line 126
    const/4 v8, -0x1

    .line 127
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iget-object v7, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-static {v7, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    const-string v8, ")"

    .line 138
    .line 139
    if-nez v7, :cond_2

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 155
    .line 156
    const-string v4, ") has wrong cover type("

    .line 157
    .line 158
    invoke-static {v3, v1, v4, v8, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v6, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_2
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Landroid/content/ComponentName;

    .line 172
    .line 173
    if-eqz v4, :cond_3

    .line 174
    .line 175
    const-string/jumbo v2, "type("

    .line 176
    .line 177
    .line 178
    const-string v7, ") of service("

    .line 179
    .line 180
    invoke-static {v3, v2, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, ") is duplicated  with "

    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v6, v1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_4
    return-object v0
.end method

.method public final isShouldNotBindCoverService(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "CoverManager_CoverServiceManager"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->verifySystemFeature(Landroid/content/Context;I)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p2, "isShouldNotBindCoverService : not support cover type("

    .line 17
    .line 18
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ")"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_0
    sget-boolean p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 p0, -0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 44
    .line 45
    :goto_0
    const/16 p1, 0xff

    .line 46
    .line 47
    if-ne p0, p1, :cond_2

    .line 48
    .line 49
    const-string p0, "isShouldNotBindCoverService : return because of test mode for nfc smart cover"

    .line 50
    .line 51
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return v0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final queryInstalledCoverServices()Landroid/util/SparseArray;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v3, "com.samsung.android.cover.CoverService"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const v4, 0xc0084

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 6
    .line 7
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 20
    .line 21
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string/jumbo v0, "package"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v5, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBroadcastReceiver:Lcom/android/server/sepunion/cover/CoverServiceManager$1;

    .line 37
    .line 38
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mRegisterBroadcast:Z

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final removeBindingServiceLocked(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p0
.end method

.method public final switchCoverService(II)V
    .locals 4

    .line 1
    const-string v0, "CoverManager_CoverServiceManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "switchCoverService : type = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " userId = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/content/ComponentName;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    monitor-exit p2

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final unbindActiveCoverService(I)V
    .locals 3

    .line 1
    const-string v0, "CoverManager_CoverServiceManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "unbindActiveCoverService : type = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/content/ComponentName;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final unbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "unbinding:cn="

    .line 2
    .line 3
    .line 4
    const-string v1, "CoverManager_CoverServiceManager"

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "unbindCoverServiceLocked : info is null"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ",type="

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v0, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, " could not be unbound: "

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", "

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final updateBindHistoryLocked(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/16 v2, 0xb

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/16 v2, 0xc

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/16 v2, 0xe

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    move-object v9, p1

    .line 68
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 73
    .line 74
    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistory:[Ljava/lang/String;

    .line 79
    .line 80
    array-length v1, v0

    .line 81
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 82
    .line 83
    if-ltz v2, :cond_0

    .line 84
    .line 85
    if-ge v2, v1, :cond_0

    .line 86
    .line 87
    add-int/lit8 v3, v2, 0x1

    .line 88
    .line 89
    iput v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 90
    .line 91
    aput-object p1, v0, v2

    .line 92
    .line 93
    :cond_0
    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 94
    .line 95
    if-lt p1, v1, :cond_1

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindHistoryIdx:I

    .line 99
    .line 100
    :cond_1
    return-void
.end method

.method public final updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :goto_0
    move v4, v1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->isShouldNotBindCoverService(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_4

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/Long;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    sub-long/2addr v5, v7

    .line 61
    const-wide/16 v7, 0x7530

    .line 62
    .line 63
    cmp-long v4, v5, v7

    .line 64
    .line 65
    if-lez v4, :cond_3

    .line 66
    .line 67
    move v4, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v4, v1

    .line 70
    :goto_1
    monitor-exit v3

    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_0

    .line 76
    :goto_2
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    if-eqz v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_7

    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 102
    .line 103
    .line 104
    :cond_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 105
    .line 106
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    .line 112
    .line 113
    :goto_3
    return-void

    .line 114
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0
.end method
