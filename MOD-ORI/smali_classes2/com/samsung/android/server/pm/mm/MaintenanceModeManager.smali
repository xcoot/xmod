.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOG_DIR:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExitRunnable:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mLifecycleListeners:Ljava/util/ArrayList;

.field public final mOverlayReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;

.field public mOverlayView:Landroid/widget/TextView;

.field public mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field public mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;

.field public final mRemainingPkgs:Ljava/util/Set;

.field public final mUms:Lcom/android/server/pm/UserManagerService;

.field public mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/log/repairdump"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/pm/UserManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mExitRunnable:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 45
    .line 46
    return-void
.end method

.method public static containsAdbFunction()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "persist.sys.usb.config"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "adb"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-gez v1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    const/16 v3, 0x2c

    .line 21
    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    add-int/lit8 v4, v1, -0x1

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eq v4, v3, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v1, v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, v3, :cond_2

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method public static isInMaintenanceMode()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public static isInMaintenanceModeFromProperty()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.is_in_maintenance_mode"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public final changeUsbDebuggingOption(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "1"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "0"

    .line 7
    .line 8
    :goto_0
    const-string/jumbo v1, "persist.sys.auto_confirm"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "adb_enabled"

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final checkPendingAdbProcessing(IJ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->containsAdbFunction()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->containsAdbFunction()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v2, v0

    .line 19
    :goto_0
    if-nez v2, :cond_4

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long v2, p2, v2

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    cmp-long v2, v2, v4

    .line 30
    .line 31
    if-gtz v2, :cond_2

    .line 32
    .line 33
    move v0, v1

    .line 34
    :cond_2
    if-eqz v0, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;IJ)V

    .line 40
    .line 41
    .line 42
    const-wide/16 p1, 0xc8

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    :goto_1
    if-ne p1, v1, :cond_5

    .line 51
    .line 52
    const-string p1, "Enable"

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    const-string p1, "Disable"

    .line 56
    .line 57
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->reboot(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final finishUserCreation()V
    .locals 6

    .line 1
    const-string v0, "com.samsung.android.intent.action.NOTIFY_PREPROCESSING_MAINTENANCE_MODE"

    .line 2
    .line 3
    const-string v1, "com.samsung.android.intent.action.RESPONSE_PREPROCESSING_MAINTENANCE_MODE"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->notifyOtherPackages(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->waitForOtherPackages()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "persist.sys.is_in_maintenance_mode"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->changeUsbDebuggingOption(Z)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v4, 0x3a98

    .line 30
    .line 31
    add-long/2addr v2, v4

    .line 32
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->checkPendingAdbProcessing(IJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final logDebugInfoAsync(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifyOtherPackages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "MaintenanceMode"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string v6, "activity"

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/app/ActivityManager;

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    new-instance v5, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_3

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    const/16 v8, 0x3e8

    .line 114
    .line 115
    invoke-static {v7, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-nez v7, :cond_2

    .line 120
    .line 121
    const-string v7, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

    .line 122
    .line 123
    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_2

    .line 128
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v6, " doesn\'t have permission for receiving this broadcast"

    .line 138
    .line 139
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 155
    .line 156
    check-cast v3, Landroid/util/ArraySet;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 162
    .line 163
    check-cast v3, Landroid/util/ArraySet;

    .line 164
    .line 165
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 169
    .line 170
    const/4 v4, 0x1

    .line 171
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 172
    .line 173
    .line 174
    iput-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 175
    .line 176
    new-instance v3, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;

    .line 177
    .line 178
    invoke-direct {v3, p0, p2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v3, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;

    .line 182
    .line 183
    new-instance v8, Landroid/content/IntentFilter;

    .line 184
    .line 185
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v6, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    iget-object v7, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;

    .line 194
    .line 195
    const-string v9, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

    .line 196
    .line 197
    iget-object v10, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 198
    .line 199
    const/4 v11, 0x2

    .line 200
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getUserConsentAboutCreatingLog()Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    const-string v3, "com.samsung.android.intent.action.NOTIFY_PREPROCESSING_MAINTENANCE_MODE"

    .line 208
    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_4

    .line 214
    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v3, "User consent about creating log: "

    .line 221
    .line 222
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_4
    const-string/jumbo p1, "user_consent_about_creating_log"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    const/16 p1, 0x20

    .line 242
    .line 243
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_5

    .line 255
    .line 256
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    check-cast p2, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string/jumbo v4, "sendBroadcast: "

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    iget-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string p2, "Failed to notify: "

    .line 295
    .line 296
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    :cond_5
    invoke-static {v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->setUserConsentAboutCreatingLog(Z)V

    .line 314
    .line 315
    .line 316
    :cond_6
    :goto_4
    return-void
.end method

.method public final reboot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "power"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/PowerManager;

    .line 11
    .line 12
    const-string v0, " MaintenanceMode"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setOverlayVisibility(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mWm:Landroid/view/WindowManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mWm:Landroid/view/WindowManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mOverlayView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "Failed to set overlay visibility: "

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "MaintenanceMode"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public final waitForOtherPackages()V
    .locals 6

    .line 1
    const-string v0, "MaintenanceMode"

    .line 2
    .line 3
    const-string v1, "Latch timed out "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v4, 0x2328

    .line 12
    .line 13
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v1, "Latch wake"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    .line 33
    .line 34
    check-cast v1, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Failed to wait: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_2
    return-void
.end method
