.class public final Lcom/samsung/android/server/continuity/PreconditionObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FEATURE_CONTINUITY:I

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;


# instance fields
.field public final URI_CONTINUITY:Landroid/net/Uri;

.field public final URI_HW_SHARING:Landroid/net/Uri;

.field public final URI_MULTI_CONTROL:Landroid/net/Uri;

.field public final URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

.field public final mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccount:Landroid/accounts/Account;

.field public mIsAddedAccountListener:Z

.field public mIsPkgObserverRegistered:Z

.field public mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

.field public final mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

.field public final mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

.field public mRegisterSettingsObserver:Z

.field public final mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

.field public mState:I

.field public mUserId:I


# direct methods
.method public static -$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "onPackageReplaced - "

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x4

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-wide/16 v1, 0x3e8

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v1, 0x1f4

    .line 61
    .line 62
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.scloud"

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p1, "setInstalledFlag - Scloud"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 p1, 0xf0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "com.samsung.android.mcfds"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string/jumbo p1, "setInstalledFlag - MCFDS"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/16 p1, 0xf00

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xf

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    sput v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    .line 23
    .line 24
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v0, "com.samsung.android.wearable.samsungaccount"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v0, "com.osp.app.signin"

    .line 34
    .line 35
    :goto_1
    sput-object v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    .line 9
    .line 10
    new-instance v1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 41
    .line 42
    new-instance v1, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 51
    .line 52
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-string/jumbo p1, "mcf_watch_continuity"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string/jumbo p1, "mcf_continuity"

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    .line 76
    .line 77
    :goto_0
    const-string/jumbo p1, "multi_control_enabled"

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    .line 85
    .line 86
    const-string/jumbo p1, "vcc_continuity"

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    .line 94
    .line 95
    const-string p1, "hwrs_service"

    .line 96
    .line 97
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    .line 102
    .line 103
    new-instance p1, Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    .line 109
    .line 110
    return-void
.end method

.method public static isSupported(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    .line 3
    .line 4
    if-gtz v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    and-int/2addr v1, p0

    .line 8
    if-ne v1, p0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_1
    return v0
.end method

.method public static isSupportedContinuity()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final checkAccountUpdated()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-boolean v2, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "checkAccountUpdated - "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    xor-int/2addr v2, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-nez v2, :cond_3

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    move v2, v4

    .line 56
    :goto_1
    if-nez v2, :cond_4

    .line 57
    .line 58
    const-string p0, "checkAccountUpdated - is not changed"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    .line 82
    .line 83
    .line 84
    :cond_5
    const/16 v0, 0xf

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 94
    .line 95
    and-int/lit8 v0, v0, -0x10

    .line 96
    .line 97
    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 98
    .line 99
    :goto_2
    const/4 v0, 0x2

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final getSamsungAccount()Landroid/accounts/Account;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/UserHandle;

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 10
    .line 11
    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "getSamsungAccount - "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    array-length v2, p0

    .line 28
    const-string v3, "[MCF_DS_SYS]_PreconditionObserver"

    .line 29
    .line 30
    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    array-length v0, p0

    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    aget-object p0, p0, v0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    if-eqz p0, :cond_1

    .line 42
    .line 43
    sget-boolean v0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    return-object p0
.end method

.method public final isEnableSettings()Z
    .locals 8

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    iget-boolean v0, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mcf_watch_continuity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_1
    move v3, v1

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mcf_continuity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 9
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "multi_control_enabled"

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    .line 10
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "vcc_continuity"

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v1

    .line 11
    :goto_4
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "hwrs_service"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_5

    :cond_5
    move p0, v1

    .line 12
    :goto_5
    const-string v6, "isEnableSettings - "

    const-string v7, ", "

    .line 13
    invoke-static {v6, v0, v7, v3, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 14
    invoke-static {v6, v4, v7, v5, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 15
    const-string v7, "[MCF_DS_SYS]_PreconditionObserver"

    .line 16
    invoke-static {v7, v6, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public final isEnableSettings(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isEnableSettings - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final meetConditions()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "meetConditions - state : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 28
    .line 29
    const v0, 0xffff

    .line 30
    .line 31
    .line 32
    if-ne p0, v0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
.end method

.method public final notifyChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-boolean v2, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 16
    .line 17
    if-ne v2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v3, "onChanged - "

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 29
    .line 30
    const-string v4, ", "

    .line 31
    .line 32
    invoke-static {v2, v3, v4, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "[MCF_DS_SYS]_McfDsManager"

    .line 36
    .line 37
    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v3, 0x3

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 56
    .line 57
    .line 58
    and-int/lit16 p0, p0, 0xf00

    .line 59
    .line 60
    if-lez p0, :cond_2

    .line 61
    .line 62
    const-wide/16 p0, 0xbb8

    .line 63
    .line 64
    invoke-virtual {v0, v3, p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public final onChangeSettings(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 6
    .line 7
    const v2, 0xf000

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setContinuitySetting(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setContinuitySetting : "

    .line 8
    .line 9
    .line 10
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string/jumbo v2, "mcf_continuity"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    new-instance p1, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "type"

    .line 45
    .line 46
    .line 47
    const-string v1, "event"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "screenId"

    .line 53
    .line 54
    .line 55
    const-string v1, "101"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string v0, "eventId"

    .line 61
    .line 62
    const-string v1, "10100"

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    const-string v0, "detail"

    .line 68
    .line 69
    const-string v1, "auto"

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    const-string v0, "com.samsung.android.mcfds"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method

.method public final setFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 5
    .line 6
    return-void
.end method

.method public final updateSettings(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateSettings - "

    .line 2
    .line 3
    .line 4
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const p1, 0xf000

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 19
    .line 20
    const v0, -0xf001

    .line 21
    .line 22
    .line 23
    and-int/2addr p1, v0

    .line 24
    iput p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 25
    .line 26
    :goto_0
    return-void
.end method
