.class public final Lcom/android/server/wm/WindowManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

.field public static final SAFE_MODE_REASONS:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

.field public final mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

.field public mLastReportedRotationToAudioManager:I

.field public final mLogResumedActivityForHalfOpenMode:Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

.field public final mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

.field public mSafeModeReason:Ljava/lang/String;

.field public final mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTspStateController:Lcom/android/server/wm/TspStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "TRACKBALL_BTN_MOUSE"

    .line 2
    .line 3
    const-string v1, "KEYCODE_VOLUME_DOWN"

    .line 4
    .line 5
    const-string v2, "KEYCODE_MENU"

    .line 6
    .line 7
    const-string v3, "KEYCODE_S"

    .line 8
    .line 9
    const-string v4, "KEYCODE_DPAD_CENTER"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_REASONS:[Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "ro.boot_recovery"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "persist.sys.emergency_reset"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "persist.sys.safemode"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "ro.sys.safemode"

    .line 27
    .line 28
    .line 29
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/wm/WindowManagerServiceExt;->SAFE_MODE_PROPERTY_REASONS:[Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$1;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 33
    .line 34
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 40
    .line 41
    invoke-direct {v1, p1, v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerServiceExt;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/wm/WmScreenshotController;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/WmScreenshotController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v3, 0x10701e8

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/wm/MultiResolutionController;

    .line 76
    .line 77
    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/MultiResolutionController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    .line 81
    .line 82
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    new-instance v0, Lcom/android/server/wm/TspStateController;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lcom/android/server/wm/TspStateController;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 92
    .line 93
    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 94
    .line 95
    :cond_0
    iget-object p0, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "com.sec.feature.cover"

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_1

    .line 108
    .line 109
    const/4 p0, 0x1

    .line 110
    sput-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 111
    .line 112
    sget-object p0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    .line 113
    .line 114
    if-nez p0, :cond_1

    .line 115
    .line 116
    new-instance p0, Lcom/android/server/wm/WmCoverState;

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 119
    .line 120
    .line 121
    sput-object p0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    .line 122
    .line 123
    :cond_1
    return-void
.end method

.method public static logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "wmlogs.txt"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide/32 v5, 0x500000

    .line 18
    .line 19
    .line 20
    cmp-long v1, v3, v5

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/io/File;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, ".backup"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    new-instance v0, Ljava/io/File;

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 66
    .line 67
    new-instance v2, Ljava/io/FileOutputStream;

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 77
    .line 78
    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Ljava/util/Date;

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v2, ": "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_1

    .line 119
    .line 120
    new-instance p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catch_0
    move-exception p0

    .line 136
    goto :goto_3

    .line 137
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v1, "logCriticalInfo failed FileNotFoundException, "

    .line 149
    .line 150
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p1, "WindowManagerServiceExt"

    .line 161
    .line 162
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const/16 p1, 0x1fc

    .line 170
    .line 171
    const/4 v0, -0x1

    .line 172
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 173
    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ge p3, v0, :cond_0

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    sub-int/2addr v0, p3

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 11
    .line 12
    :goto_0
    array-length v2, p2

    .line 13
    sub-int/2addr v2, p3

    .line 14
    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object p2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 18
    .line 19
    invoke-virtual {p2, p4, v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 p3, 0x1

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    return p3

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 32
    .line 33
    .line 34
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-static {p4, v0, p1}, Lcom/android/server/wm/PackagesChange;->executeAllShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    return p3

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_STATUS_LOGGING:Z

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_3
    return v1
.end method

.method public final getFocusedTaskIdWithoutHomeOrRecents()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    const/4 p0, -0x1

    .line 51
    return p0

    .line 52
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final getVisibleWindowInfoList()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final moveDisplayToTop(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eq v1, p1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 32
    .line 33
    const v1, 0x7fffffff

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final sendTakeScreenshotRunnable(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v5, 0x0

    .line 6
    move v1, p1

    .line 7
    move v3, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V
    .locals 9

    .line 1
    const-string v0, "WindowManagerServiceExt"

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    :cond_1
    const/16 v1, 0x1f

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    if-eqz p2, :cond_6

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    if-ne v5, p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_7

    .line 59
    .line 60
    :cond_3
    new-instance p1, Landroid/content/ComponentName;

    .line 61
    .line 62
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {p1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v8, "updateTaskbarTargetIfNeeded: cn="

    .line 82
    .line 83
    .line 84
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, " occludesParent="

    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v8, " isInSplitScreenMode="

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v8, " styleFloating="

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v8, p2, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 112
    .line 113
    invoke-static {v0, v7, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 119
    .line 120
    if-nez v5, :cond_5

    .line 121
    .line 122
    iget-boolean v4, p2, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    if-eqz v6, :cond_4

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    move v3, v2

    .line 130
    :cond_5
    :goto_0
    iget-object v4, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 131
    .line 132
    invoke-virtual {v4, v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object v1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 142
    .line 143
    .line 144
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    const-string/jumbo p1, "updateTaskbarTargetIfNeeded: reset"

    .line 152
    .line 153
    .line 154
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p1, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 160
    .line 161
    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p2, v1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iget-object v1, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mReportedTaskbarTarget:Lcom/android/server/wm/ActivityRecord;

    .line 177
    .line 178
    :cond_7
    :goto_2
    return-void

    .line 179
    :cond_8
    :goto_3
    const-string/jumbo p0, "updateTaskbarTargetIfNeeded: display is null or not default"

    .line 180
    .line 181
    .line 182
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    if-ne p1, v2, :cond_7

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 35
    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mImeTargetWindow:Lcom/android/server/wm/WindowState;

    .line 39
    .line 40
    if-ne p1, v2, :cond_6

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    :cond_4
    const/4 p1, 0x2

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    if-eqz v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    .line 75
    .line 76
    .line 77
    :cond_7
    :goto_2
    return-void
.end method
