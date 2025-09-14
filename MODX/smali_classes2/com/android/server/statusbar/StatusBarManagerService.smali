.class public final Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field public static final DEBUG_SAFEMODE:Z

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final REQUEST_TIME_OUT:J


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field public final mBarLock:Ljava/lang/Object;

.field public volatile mBarMap:Landroid/util/ArrayMap;

.field public mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

.field public volatile mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

.field public mCurrentUserId:I

.field public final mDesktopModeListener:Lcom/android/server/statusbar/StatusBarManagerService$1;

.field public final mDisableHistoryList:Ljava/util/ArrayList;

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mDisplayUiState:Landroid/util/SparseArray;

.field public final mDisplayUiStateDex:Landroid/util/SparseArray;

.field public mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field public mGlobalActionListener:Lcom/android/server/policy/GlobalActions;

.field public final mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

.field public final mHandler:Landroid/os/Handler;

.field public final mIcons:Landroid/util/ArrayMap;

.field public final mInternalService:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public final mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public mLastSystemKey:I

.field public final mLock:Ljava/lang/Object;

.field public mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPanelExpandStateMap:Landroid/util/ArrayMap;

.field public final mQsPanelExpandStateMap:Landroid/util/ArrayMap;

.field public final mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

.field public final mStatusBarHistoryList:Ljava/util/ArrayList;

.field public mSysUiSafeMode:Z

.field public final mSysUiVisToken:Landroid/os/IBinder;

.field public final mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

.field public mTracingEnabled:Z

.field public mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J

    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerService;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "debug.sysui.safemode"

    .line 26
    .line 27
    const-string v2, "0"

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sput-boolean v0, Lcom/android/server/statusbar/StatusBarManagerService;->DEBUG_SAFEMODE:Z

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Landroid/os/Binder;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    .line 41
    .line 42
    new-instance v1, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 48
    .line 49
    new-instance v2, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance v2, Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 72
    .line 73
    new-instance v2, Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 79
    .line 80
    new-instance v3, Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 86
    .line 87
    new-instance v3, Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 93
    .line 94
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 100
    .line 101
    invoke-direct {v4, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 102
    .line 103
    .line 104
    new-instance v5, Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 105
    .line 106
    invoke-direct {v5, p0}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 107
    .line 108
    .line 109
    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 110
    .line 111
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    new-instance v5, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 124
    .line 125
    new-instance v5, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    iput-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    const-class v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 138
    .line 139
    invoke-static {v6, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 143
    .line 144
    invoke-direct {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 151
    .line 152
    invoke-direct {v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const-string v1, "desktopmode"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 165
    .line 166
    if-eqz v1, :cond_0

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 169
    .line 170
    .line 171
    :cond_0
    const-string v1, "display"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 178
    .line 179
    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 180
    .line 181
    .line 182
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 183
    .line 184
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 191
    .line 192
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 199
    .line 200
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 201
    .line 202
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 209
    .line 210
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 211
    .line 212
    new-instance v0, Lcom/android/server/statusbar/TileRequestTracker;

    .line 213
    .line 214
    invoke-direct {v0, p1}, Lcom/android/server/statusbar/TileRequestTracker;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 218
    .line 219
    new-instance v0, Lcom/android/server/statusbar/SessionMonitor;

    .line 220
    .line 221
    invoke-direct {v0, p1}, Lcom/android/server/statusbar/SessionMonitor;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 225
    .line 226
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 227
    .line 228
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 233
    .line 234
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 235
    .line 236
    return-void
.end method

.method public static final getUiContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public final addTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p0, p1, v0}, Lcom/android/internal/statusbar/IStatusBar;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final cancelRequestAddTile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "StatusBarManagerService"

    .line 17
    .line 18
    const-string/jumbo v0, "requestAddTile"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public final checkCallingUidPackage(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, p3, v0, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ne p2, p0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 21
    .line 22
    const-string p2, "Package "

    .line 23
    .line 24
    const-string v0, " does not belong to the calling uid "

    .line 25
    .line 26
    invoke-static {p1, p2, p3, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final checkCanCollapseStatusBar(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-wide/32 v2, 0xa503ff5

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v3, "android.permission.STATUS_BAR"

    .line 25
    .line 26
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 36
    .line 37
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "Permission Denial: Method "

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, "() requires permission android.permission.STATUS_BAR, ignoring call."

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "StatusBarManagerService"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final clearInlineReplyUriPermissions(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 12
    .line 13
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->clearInlineReplyUriPermissions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final clearNotificationEffects()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final clearTileAddRequest(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final collapsePanels()V
    .locals 1

    .line 1
    const-string v0, "collapsePanels"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_1
    return-void
.end method

.method public final collapsePanelsToType(I)V
    .locals 3

    .line 1
    const-string v0, "collapsePanelsToType"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    .line 36
    .line 37
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p0
.end method

.method public final disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move v3, p4

    .line 12
    move v4, p1

    .line 13
    move-object v7, p2

    .line 14
    move-object v8, p3

    .line 15
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    move-object v1, p0

    .line 10
    move v3, p4

    .line 11
    move v4, p1

    .line 12
    move v6, p5

    .line 13
    move-object v7, p2

    .line 14
    move-object v8, p3

    .line 15
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v5, 0x1

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move v3, p4

    .line 12
    move v4, p1

    .line 13
    move-object v7, p2

    .line 14
    move-object v8, p3

    .line 15
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    move-object v1, p0

    .line 10
    move v3, p4

    .line 11
    move v4, p1

    .line 12
    move v6, p5

    .line 13
    move-object v7, p2

    .line 14
    move-object v8, p3

    .line 15
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    move/from16 v12, p4

    .line 8
    .line 9
    move/from16 v13, p5

    .line 10
    .line 11
    move-object/from16 v1, p7

    .line 12
    .line 13
    const-string v14, "disable Exception = "

    .line 14
    .line 15
    const/4 v15, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v2, ";"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    aget-object v2, v1, v9

    .line 32
    .line 33
    aget-object v1, v1, v15

    .line 34
    .line 35
    move/from16 v6, p2

    .line 36
    .line 37
    move-object/from16 v5, p6

    .line 38
    .line 39
    move-object v7, v1

    .line 40
    move-object v8, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    move/from16 v6, p2

    .line 44
    .line 45
    move-object/from16 v5, p6

    .line 46
    .line 47
    move-object v8, v1

    .line 48
    move-object v7, v2

    .line 49
    :goto_0
    invoke-virtual {v10, v6, v5, v13}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(ILandroid/os/IBinder;I)Landroid/util/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v3, v1

    .line 64
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 65
    .line 66
    invoke-interface/range {p6 .. p6}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    iget-object v1, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v1, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-interface {v1, v3, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_1
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3, v12}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eq v1, v11, :cond_2

    .line 93
    .line 94
    move-object/from16 v1, p0

    .line 95
    .line 96
    move/from16 v2, p2

    .line 97
    .line 98
    move-object v6, v3

    .line 99
    move/from16 v3, p3

    .line 100
    .line 101
    move/from16 v16, v4

    .line 102
    .line 103
    move-object/from16 v4, p6

    .line 104
    .line 105
    move-object v5, v8

    .line 106
    move-object/from16 v17, v6

    .line 107
    .line 108
    move-object v6, v7

    .line 109
    move/from16 v7, p4

    .line 110
    .line 111
    move-object/from16 v18, v8

    .line 112
    .line 113
    move/from16 v8, p5

    .line 114
    .line 115
    move/from16 v9, p1

    .line 116
    .line 117
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/statusbar/StatusBarManagerService;->makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move-object/from16 v17, v3

    .line 122
    .line 123
    move/from16 v16, v4

    .line 124
    .line 125
    move-object/from16 v18, v8

    .line 126
    .line 127
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "LARGESCREEN"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    const-string v2, "StatusBarManagerService"

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    if-ne v12, v15, :cond_4

    .line 148
    .line 149
    const/high16 v1, 0x1600000

    .line 150
    .line 151
    and-int/2addr v1, v11

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    move-object/from16 v1, v17

    .line 155
    .line 156
    iget v3, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->displayId:I

    .line 157
    .line 158
    if-ne v3, v0, :cond_3

    .line 159
    .line 160
    move-object/from16 v8, v18

    .line 161
    .line 162
    invoke-virtual {v1, v11, v12, v8}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    const-string v3, "Ignored flags("

    .line 167
    .line 168
    const-string v4, "), displayId is mismatched. record.display: "

    .line 169
    .line 170
    invoke-static {v11, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->displayId:I

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v4, " and displayId: "

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    move-object/from16 v1, v17

    .line 196
    .line 197
    move-object/from16 v8, v18

    .line 198
    .line 199
    invoke-virtual {v1, v11, v12, v8}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string/jumbo v4, "update existing record: "

    .line 205
    .line 206
    .line 207
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :goto_2
    iget v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 221
    .line 222
    if-nez v2, :cond_6

    .line 223
    .line 224
    iget v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 225
    .line 226
    if-nez v2, :cond_6

    .line 227
    .line 228
    iget-object v2, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 229
    .line 230
    move/from16 v3, v16

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 236
    .line 237
    const/4 v3, 0x0

    .line 238
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_5
    new-instance v9, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 243
    .line 244
    move-object v1, v9

    .line 245
    move-object/from16 v2, p0

    .line 246
    .line 247
    move/from16 v3, p2

    .line 248
    .line 249
    move-object/from16 v4, p6

    .line 250
    .line 251
    move/from16 v5, p5

    .line 252
    .line 253
    move/from16 v6, p1

    .line 254
    .line 255
    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, v11, v12, v8}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    if-eqz v11, :cond_6

    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    move/from16 v2, p2

    .line 271
    .line 272
    move/from16 v3, p3

    .line 273
    .line 274
    move-object/from16 v4, p6

    .line 275
    .line 276
    move-object v5, v8

    .line 277
    move-object v6, v7

    .line 278
    move/from16 v7, p4

    .line 279
    .line 280
    move/from16 v8, p5

    .line 281
    .line 282
    move/from16 v9, p1

    .line 283
    .line 284
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/statusbar/StatusBarManagerService;->makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 285
    .line 286
    .line 287
    :cond_6
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const-string v2, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    const-string v2, "LARGESCREEN"

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_7

    .line 304
    .line 305
    iget v1, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 306
    .line 307
    invoke-virtual {v10, v1, v15, v13, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(IIII)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    goto :goto_4

    .line 312
    :cond_7
    iget v1, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 313
    .line 314
    invoke-virtual {v10, v1, v15, v13}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    :goto_4
    iget v2, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 319
    .line 320
    const/4 v3, 0x2

    .line 321
    invoke-virtual {v10, v2, v3, v13}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    invoke-virtual {v10, v0, v13}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 330
    .line 331
    if-ne v4, v1, :cond_8

    .line 332
    .line 333
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 334
    .line 335
    if-ne v4, v2, :cond_8

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_8
    iput v1, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 339
    .line 340
    iput v2, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 341
    .line 342
    iget-object v3, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 343
    .line 344
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;

    .line 345
    .line 346
    invoke-direct {v4, v10, v1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    .line 351
    .line 352
    iget-object v3, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 353
    .line 354
    monitor-enter v3

    .line 355
    :try_start_0
    iget-object v4, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 356
    .line 357
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    check-cast v4, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    .line 367
    if-eqz v4, :cond_9

    .line 368
    .line 369
    :try_start_1
    invoke-interface {v4, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .line 371
    .line 372
    goto :goto_5

    .line 373
    :catchall_0
    move-exception v0

    .line 374
    goto :goto_7

    .line 375
    :catch_0
    move-exception v0

    .line 376
    move-object v4, v0

    .line 377
    :try_start_2
    const-string v0, "StatusBarManagerService"

    .line 378
    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :cond_9
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    :goto_6
    iget-object v0, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 396
    .line 397
    if-nez v0, :cond_a

    .line 398
    .line 399
    const-class v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 400
    .line 401
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 406
    .line 407
    iput-object v0, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 408
    .line 409
    :cond_a
    iget-object v0, v10, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 410
    .line 411
    if-eqz v0, :cond_b

    .line 412
    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/edge/EdgeManagerInternal;->statusBarDisabled(II)V

    .line 414
    .line 415
    .line 416
    :cond_b
    return-void

    .line 417
    :goto_7
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    throw v0
.end method

.method public final disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dismissInattentiveSleepWarning(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->dismissInattentiveSleepWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "StatusBarManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    array-length v3, p3

    .line 16
    if-ge v1, v3, :cond_2

    .line 17
    .line 18
    const-string v3, "--proto"

    .line 19
    .line 20
    aget-object v4, p3, v1

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-eqz v2, :cond_4

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 35
    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    :try_start_0
    new-instance p2, Lcom/android/internal/os/TransferPipe;

    .line 40
    .line 41
    invoke-direct {p2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0, p3, v0}, Lcom/android/internal/statusbar/IStatusBar;->dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    :try_start_3
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_2
    move-exception p1

    .line 68
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :goto_2
    const-string p1, "StatusBarManagerService"

    .line 73
    .line 74
    const-string p2, "Error sending command to IStatusBar"

    .line 75
    .line 76
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :goto_3
    return-void

    .line 80
    :cond_4
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter p1

    .line 83
    move p3, v0

    .line 84
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ge p3, v1, :cond_5

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v4, "  displayId="

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v3, "    mDisabled1=0x"

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v3, "    mDisabled2=0x"

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v2, v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 163
    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 p3, p3, 0x1

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catchall_3
    move-exception p0

    .line 182
    goto/16 :goto_d

    .line 183
    .line 184
    :cond_5
    move p3, v0

    .line 185
    :goto_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-ge p3, v1, :cond_6

    .line 192
    .line 193
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 200
    .line 201
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v4, "  DexdisplayId="

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v3, "    mDexDisabled1=0x"

    .line 233
    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 238
    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v3, "    mDexDisabled2=0x"

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget v2, v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 264
    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    add-int/lit8 p3, p3, 0x1

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_6
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result p3

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v2, "  mDisableRecords.size="

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    move v1, v0

    .line 309
    :goto_6
    if-ge v1, p3, :cond_7

    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 318
    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v4, "    ["

    .line 325
    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v4, "] "

    .line 333
    .line 334
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v1, "  mCurrentUserId="

    .line 356
    .line 357
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 361
    .line 362
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p3

    .line 369
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p3, "  mIcons="

    .line 373
    .line 374
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 380
    .line 381
    .line 382
    move-result-object p3

    .line 383
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object p3

    .line 387
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_9

    .line 392
    .line 393
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Ljava/lang/String;

    .line 398
    .line 399
    const-string v2, "    "

    .line 400
    .line 401
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string v2, " -> "

    .line 408
    .line 409
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 413
    .line 414
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 419
    .line 420
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 424
    .line 425
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-nez v2, :cond_8

    .line 430
    .line 431
    const-string v2, " \""

    .line 432
    .line 433
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 437
    .line 438
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    const-string v1, "\""

    .line 442
    .line 443
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_9
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 451
    .line 452
    monitor-enter p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 453
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    .line 454
    .line 455
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 456
    .line 457
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .line 463
    .line 464
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 465
    :try_start_7
    const-string p3, "  mCurrentRequestAddTilePackages=["

    .line 466
    .line 467
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 471
    .line 472
    .line 473
    move-result p3

    .line 474
    move v2, v0

    .line 475
    :goto_8
    if-ge v2, p3, :cond_a

    .line 476
    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .line 481
    .line 482
    const-string v4, "    "

    .line 483
    .line 484
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    check-cast v4, Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v4, ","

    .line 497
    .line 498
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v2, v2, 0x1

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_a
    const-string p3, "  ]"

    .line 512
    .line 513
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    new-instance p3, Landroid/util/IndentingPrintWriter;

    .line 517
    .line 518
    const-string v1, "  "

    .line 519
    .line 520
    invoke-direct {p3, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 524
    .line 525
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 526
    .line 527
    .line 528
    move-result-object p3

    .line 529
    invoke-virtual {v1, p3}, Lcom/android/server/statusbar/TileRequestTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 530
    .line 531
    .line 532
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string p3, "  mSysUiSafeMode="

    .line 536
    .line 537
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    .line 541
    .line 542
    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 543
    .line 544
    .line 545
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 546
    .line 547
    monitor-enter p3

    .line 548
    :try_start_8
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    const-string v2, "  mDisableHistoryList.size="

    .line 560
    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    move v1, v0

    .line 575
    :goto_9
    if-ge v1, p1, :cond_b

    .line 576
    .line 577
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    check-cast v2, Ljava/lang/String;

    .line 584
    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    const-string v4, "    ["

    .line 591
    .line 592
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v4, "] "

    .line 599
    .line 600
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 614
    .line 615
    goto :goto_9

    .line 616
    :catchall_4
    move-exception p0

    .line 617
    goto :goto_c

    .line 618
    :cond_b
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 619
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 620
    .line 621
    monitor-enter p1

    .line 622
    :try_start_9
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 625
    .line 626
    .line 627
    move-result p3

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    const-string v2, "  mStatusBarHistoryList.size="

    .line 634
    .line 635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    :goto_a
    if-ge v0, p3, :cond_c

    .line 649
    .line 650
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    check-cast v1, Ljava/lang/String;

    .line 657
    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    const-string v3, "    ["

    .line 664
    .line 665
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    const-string v3, "] "

    .line 672
    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    add-int/lit8 v0, v0, 0x1

    .line 687
    .line 688
    goto :goto_a

    .line 689
    :catchall_5
    move-exception p0

    .line 690
    goto :goto_b

    .line 691
    :cond_c
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 692
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 693
    .line 694
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 695
    .line 696
    .line 697
    move-result p1

    .line 698
    if-nez p1, :cond_d

    .line 699
    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string p3, " mIsSecCustomTileMap="

    .line 703
    .line 704
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 708
    .line 709
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    :cond_d
    return-void

    .line 720
    :goto_b
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 721
    throw p0

    .line 722
    :goto_c
    :try_start_b
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 723
    throw p0

    .line 724
    :catchall_6
    move-exception p0

    .line 725
    :try_start_c
    monitor-exit p3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 726
    :try_start_d
    throw p0

    .line 727
    :goto_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 728
    throw p0
.end method

.method public final enforceExpandStatusBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final enforceStatusBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.STATUS_BAR"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final enforceStatusBarOrShell()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final enforceStatusBarService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final expandNotificationsPanel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    and-int/2addr v0, v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 25
    .line 26
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_1
    return-void
.end method

.method public final expandNotificationsPanelToType(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final expandSettingsPanel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final expandSettingsPanelToType(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final findMatchingRecordLocked(ILandroid/os/IBinder;I)Landroid/util/Pair;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 19
    .line 20
    if-ne v3, p2, :cond_0

    .line 21
    .line 22
    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    .line 27
    .line 28
    if-ne v3, p3, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_1
    new-instance p0, Landroid/util/Pair;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public final gatherDisableActionsLocked(III)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LARGESCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(IIII)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 5
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    if-ne v4, p3, :cond_1

    .line 6
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final gatherDisableActionsLocked(IIII)I
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 8
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 9
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_3

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    if-ne v4, p3, :cond_3

    .line 10
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p4, :cond_0

    if-ne p4, v5, :cond_2

    :cond_0
    const/high16 v6, 0x1600000

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    if-nez p4, :cond_1

    .line 11
    iget v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->displayId:I

    if-eq v3, v5, :cond_3

    :goto_1
    or-int/2addr v2, v4

    goto :goto_2

    .line 12
    :cond_1
    iget v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->displayId:I

    if-ne v3, p4, :cond_3

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final getDisableFlags(Landroid/os/IBinder;I)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    move v3, v1

    .line 21
    move v1, p0

    .line 22
    move p0, v3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(ILandroid/os/IBinder;I)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p0, v1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    filled-new-array {v1, p0}, [I

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final getDisableFlagsToType(Landroid/os/IBinder;II)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    move v3, v1

    .line 21
    move v1, p0

    .line 22
    move p0, v3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(ILandroid/os/IBinder;I)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p0, v1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    filled-new-array {v1, p0}, [I

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final getLastSystemKey()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    .line 5
    .line 6
    return p0
.end method

.method public final getNavBarMode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo v3, "nav_bar_kids_mode"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final getOverlayManager()Landroid/content/om/IOverlayManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "overlay"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "StatusBarManager"

    .line 21
    .line 22
    const-string/jumbo v1, "warning: no OVERLAY_SERVICE"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 29
    .line 30
    return-object p0
.end method

.method public final getPanelExpandStateToType(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final getQuickSettingPanelExpandStateToType(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p2

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    new-instance p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 36
    .line 37
    invoke-direct {p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object p2
.end method

.method public final grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v5

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    move-object v4, p4

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$3;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    const-string v0, "handleSystemKey"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLastSystemKey:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :cond_1
    return-void
.end method

.method public final hideAuthenticationDialog(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideAuthenticationDialog(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public final hideCurrentInputMethodForBubbles(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final isFOTAAvailableForGlobalActions()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v3, "attfota_forceinstall_FN_sim"

    .line 21
    .line 22
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne p0, v3, :cond_1

    .line 28
    .line 29
    const-string p0, "StatusBarManagerService"

    .line 30
    .line 31
    const-string v2, "FOTA update available when asking recovery system"

    .line 32
    .line 33
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    move v2, v3

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isSysUiSafeModeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    sget-boolean p0, Lcom/android/server/statusbar/StatusBarManagerService;->DEBUG_SAFEMODE:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isTracing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-ne p6, v1, :cond_d

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const-string p2, "CLEAR"

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    const/high16 p6, 0x10000

    .line 21
    .line 22
    and-int/2addr p6, p2

    .line 23
    if-eqz p6, :cond_1

    .line 24
    .line 25
    const-string p6, "EXPAND "

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p6, v2

    .line 29
    :goto_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/high16 p6, 0x20000

    .line 33
    .line 34
    and-int/2addr p6, p2

    .line 35
    if-eqz p6, :cond_2

    .line 36
    .line 37
    const-string p6, "ICONS "

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object p6, v2

    .line 41
    :goto_1
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/high16 p6, 0x40000

    .line 45
    .line 46
    and-int/2addr p6, p2

    .line 47
    if-eqz p6, :cond_3

    .line 48
    .line 49
    const-string p6, "ALERTS "

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move-object p6, v2

    .line 53
    :goto_2
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/high16 p6, 0x80000

    .line 57
    .line 58
    and-int/2addr p6, p2

    .line 59
    if-eqz p6, :cond_4

    .line 60
    .line 61
    const-string p6, "TICKER "

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move-object p6, v2

    .line 65
    :goto_3
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/high16 p6, 0x100000

    .line 69
    .line 70
    and-int/2addr p6, p2

    .line 71
    if-eqz p6, :cond_5

    .line 72
    .line 73
    const-string p6, "SYSTEM_INFO "

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    move-object p6, v2

    .line 77
    :goto_4
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/high16 p6, 0x400000

    .line 81
    .line 82
    and-int/2addr p6, p2

    .line 83
    if-eqz p6, :cond_6

    .line 84
    .line 85
    const-string p6, "BACK "

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    move-object p6, v2

    .line 89
    :goto_5
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/high16 p6, 0x200000

    .line 93
    .line 94
    and-int/2addr p6, p2

    .line 95
    if-eqz p6, :cond_7

    .line 96
    .line 97
    const-string p6, "HOME "

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_7
    move-object p6, v2

    .line 101
    :goto_6
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/high16 p6, 0x1000000

    .line 105
    .line 106
    and-int/2addr p6, p2

    .line 107
    if-eqz p6, :cond_8

    .line 108
    .line 109
    const-string p6, "RECENT "

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_8
    move-object p6, v2

    .line 113
    :goto_7
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/high16 p6, 0x800000

    .line 117
    .line 118
    and-int/2addr p6, p2

    .line 119
    if-eqz p6, :cond_9

    .line 120
    .line 121
    const-string p6, "CLOCK "

    .line 122
    .line 123
    goto :goto_8

    .line 124
    :cond_9
    move-object p6, v2

    .line 125
    :goto_8
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/high16 p6, 0x2000000

    .line 129
    .line 130
    and-int/2addr p6, p2

    .line 131
    if-eqz p6, :cond_a

    .line 132
    .line 133
    const-string p6, "SEARCH "

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_a
    move-object p6, v2

    .line 137
    :goto_9
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/high16 p6, 0x10000000

    .line 141
    .line 142
    and-int/2addr p6, p2

    .line 143
    if-eqz p6, :cond_b

    .line 144
    .line 145
    const-string p6, "EXPAND_ON_KEYGUARD "

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_b
    move-object p6, v2

    .line 149
    :goto_a
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const/high16 p6, 0x20000000

    .line 153
    .line 154
    and-int/2addr p2, p6

    .line 155
    if-eqz p2, :cond_c

    .line 156
    .line 157
    const-string v2, "EXPAND_AND_TOUCH "

    .line 158
    .line 159
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    goto :goto_f

    .line 163
    :cond_d
    const/4 v1, 0x2

    .line 164
    if-ne p6, v1, :cond_14

    .line 165
    .line 166
    if-nez p2, :cond_e

    .line 167
    .line 168
    const-string p2, "CLEAR2"

    .line 169
    .line 170
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    goto :goto_f

    .line 174
    :cond_e
    and-int/lit8 p6, p2, 0x1

    .line 175
    .line 176
    if-eqz p6, :cond_f

    .line 177
    .line 178
    const-string p6, "QS "

    .line 179
    .line 180
    goto :goto_b

    .line 181
    :cond_f
    move-object p6, v2

    .line 182
    :goto_b
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    and-int/lit8 p6, p2, 0x2

    .line 186
    .line 187
    if-eqz p6, :cond_10

    .line 188
    .line 189
    const-string p6, "SYSTEM_ICONS "

    .line 190
    .line 191
    goto :goto_c

    .line 192
    :cond_10
    move-object p6, v2

    .line 193
    :goto_c
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    and-int/lit8 p6, p2, 0x4

    .line 197
    .line 198
    if-eqz p6, :cond_11

    .line 199
    .line 200
    const-string p6, "SHADE "

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :cond_11
    move-object p6, v2

    .line 204
    :goto_d
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    and-int/lit8 p6, p2, 0x8

    .line 208
    .line 209
    if-eqz p6, :cond_12

    .line 210
    .line 211
    const-string p6, "GA "

    .line 212
    .line 213
    goto :goto_e

    .line 214
    :cond_12
    move-object p6, v2

    .line 215
    :goto_e
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    and-int/lit8 p2, p2, 0x10

    .line 219
    .line 220
    if-eqz p2, :cond_13

    .line 221
    .line 222
    const-string v2, "ROTATE "

    .line 223
    .line 224
    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :goto_f
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 228
    .line 229
    new-instance p6, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 235
    .line 236
    .line 237
    move-result-wide v1

    .line 238
    sget-object v3, Lcom/android/server/statusbar/StatusBarManagerService;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 239
    .line 240
    new-instance v4, Ljava/util/Date;

    .line 241
    .line 242
    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, " barType="

    .line 253
    .line 254
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, " displayId="

    .line 258
    .line 259
    const-string v2, " pkg="

    .line 260
    .line 261
    invoke-static {p7, p8, v1, v2, p6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 262
    .line 263
    .line 264
    const-string p7, " tag="

    .line 265
    .line 266
    const-string p8, " userId="

    .line 267
    .line 268
    invoke-static {p6, p4, p7, p5, p8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string p1, " what="

    .line 275
    .line 276
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string p1, " token="

    .line 287
    .line 288
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :goto_10
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    const/16 p2, 0x64

    .line 308
    .line 309
    if-le p1, p2, :cond_14

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 312
    .line 313
    const/4 p2, 0x0

    .line 314
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    goto :goto_10

    .line 318
    :cond_14
    return-void
.end method

.method public final makeStatusBarHistory(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "collapsePanels"

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "STATUS_BAR"

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v2, 0x1

    .line 21
    if-ne p1, v2, :cond_5

    .line 22
    .line 23
    const-string p1, "expandSettingsPanel"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "EXPAND_STATUS_BAR"

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    :goto_0
    move-object v1, p1

    .line 34
    :goto_1
    move-object p1, v3

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const-string/jumbo p1, "togglePanel"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const-string p1, "expandNotificationsPanel"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_2
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    sget-object v6, Lcom/android/server/statusbar/StatusBarManagerService;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 88
    .line 89
    new-instance v7, Ljava/util/Date;

    .line 90
    .line 91
    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, " category = "

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v4, ", API = "

    .line 107
    .line 108
    const-string v5, ", pkg = "

    .line 109
    .line 110
    invoke-static {v3, p1, v4, v1, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, ", tag = null"

    .line 117
    .line 118
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :goto_3
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    const/16 v0, 0x64

    .line 135
    .line 136
    if-le p1, v0, :cond_5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    return-void
.end method

.method public final notifyBarAttachChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onBiometricAuthenticated(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public final onBiometricError(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public final onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onClearAllNotifications(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onClearAll(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

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

.method public final onGlobalActionsHidden()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final onGlobalActionsShown()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v8

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 20
    .line 21
    move-object v3, p1

    .line 22
    move v4, p2

    .line 23
    move-object v5, p3

    .line 24
    move-object v6, p4

    .line 25
    move v7, p5

    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v10

    .line 16
    move-object v0, p0

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$3;

    .line 21
    .line 22
    move-object v4, p1

    .line 23
    move v5, p2

    .line 24
    move-object v6, p3

    .line 25
    move/from16 v7, p4

    .line 26
    .line 27
    move/from16 v8, p5

    .line 28
    .line 29
    move-object/from16 v9, p6

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final onNotificationDataUpdateFromPDC(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationDataUpdateFromPDC(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onNotificationDirectReplied(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v11

    .line 16
    move-object v0, p0

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$3;

    .line 21
    .line 22
    move-object v4, p1

    .line 23
    move-object v5, p2

    .line 24
    move/from16 v6, p3

    .line 25
    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    move/from16 v8, p5

    .line 29
    .line 30
    move-object/from16 v9, p6

    .line 31
    .line 32
    move/from16 v10, p7

    .line 33
    .line 34
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onNotificationSettingsViewed(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/service/notification/NotificationStats;->setViewedSettings()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    move-object v2, p0

    .line 11
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$3;

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    move v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move v6, p4

    .line 17
    move v7, p5

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iput p2, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    .line 30
    .line 31
    iput p3, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartActionsAdded:I

    .line 32
    .line 33
    iput-boolean p4, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 34
    .line 35
    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    .line 36
    .line 37
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onPanelHidden()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onPanelRevealed(ZI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$3;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$3;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->requireSetterPermissions(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "SessionMonitor"

    .line 19
    .line 20
    const-string p2, "invalid onSessionEnded sessionType="

    .line 21
    .line 22
    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast p0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/internal/statusbar/ISessionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/ISessionListener;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v2

    .line 66
    :try_start_2
    const-string v3, "SessionMonitor"

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v5, "unable to send session end to listener="

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    monitor-exit v0

    .line 91
    :goto_1
    return-void

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0
.end method

.method public final onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/SessionMonitor;->requireSetterPermissions(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "SessionMonitor"

    .line 19
    .line 20
    const-string p2, "invalid onSessionStarted sessionType="

    .line 21
    .line 22
    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast p0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/internal/statusbar/ISessionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/ISessionListener;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v2

    .line 66
    :try_start_2
    const-string v3, "SessionMonitor"

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v5, "unable to send session start to listener="

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    monitor-exit v0

    .line 91
    :goto_1
    return-void

    .line 92
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    const-string v1, "  "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_2
    move-exception p1

    .line 43
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    :goto_1
    const-string p1, "StatusBarManagerService"

    .line 48
    .line 49
    const-string p2, "Error sending command to IStatusBar"

    .line 50
    .line 51
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method

.method public final publishGlobalActionsProvider()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final reboot(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string/jumbo v0, "safemode"

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string/jumbo v0, "userrequested"

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 18
    .line 19
    invoke-virtual {v2, v1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 27
    .line 28
    check-cast v3, Lcom/android/server/notification/NotificationManagerService$3;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$3;->prepareForPossibleShutdown()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;

    .line 36
    .line 37
    invoke-direct {v3, v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final rebootByBixby(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo p1, "registerNearbyMediaDevicesProvider"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public registerOverlayManager(Landroid/content/om/IOverlayManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 2
    .line 3
    return-void
.end method

.method public final registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 2
    .line 3
    and-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const-string v1, "StatusBarManagerService.SessionMonitor"

    .line 6
    .line 7
    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    and-int/2addr v3, p1

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 54
    .line 55
    check-cast v3, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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
    :cond_3
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 6
    .line 7
    .line 8
    const-string v2, "StatusBarManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v4, "registerStatusBar bar="

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$5;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v2, v1, v4}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v2, "StatusBarManagerService"

    .line 58
    .line 59
    const-string v4, "Unable to register Death Recipient for status bar"

    .line 60
    .line 61
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 65
    .line 66
    .line 67
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 68
    .line 69
    monitor-enter v2

    .line 70
    :try_start_1
    new-instance v5, Landroid/util/ArrayMap;

    .line 71
    .line 72
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v2

    .line 81
    :try_start_2
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 88
    .line 89
    new-instance v20, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 90
    .line 91
    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    invoke-virtual {v1, v4, v6, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    iget v7, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 99
    .line 100
    iget-object v8, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 101
    .line 102
    iget v9, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 103
    .line 104
    iget v10, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 105
    .line 106
    iget-boolean v11, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 107
    .line 108
    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 109
    .line 110
    const/4 v12, 0x2

    .line 111
    invoke-virtual {v1, v4, v12, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    iget-object v13, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 116
    .line 117
    iget-boolean v14, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 118
    .line 119
    iget v15, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 120
    .line 121
    iget v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 122
    .line 123
    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 124
    .line 125
    iget v4, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 128
    .line 129
    move/from16 v18, v4

    .line 130
    .line 131
    move-object/from16 v4, v20

    .line 132
    .line 133
    move/from16 v16, v1

    .line 134
    .line 135
    move-object/from16 v17, v3

    .line 136
    .line 137
    move-object/from16 v19, v0

    .line 138
    .line 139
    invoke-direct/range {v4 .. v19}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v2

    .line 143
    return-object v20

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    throw v0

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    throw v0
.end method

.method public final registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 6
    .line 7
    .line 8
    const-string v2, "StatusBarManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v4, "start!! registerStatusBarAsType bar="

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$4;

    .line 43
    .line 44
    move/from16 v4, p2

    .line 45
    .line 46
    invoke-direct {v3, v1, v4}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v3, "StatusBarManagerService"

    .line 55
    .line 56
    const-string v4, "Unable to register Death Recipient for DEX status bar"

    .line 57
    .line 58
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 62
    .line 63
    .line 64
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 65
    .line 66
    monitor-enter v3

    .line 67
    :try_start_1
    new-instance v5, Landroid/util/ArrayMap;

    .line 68
    .line 69
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v3

    .line 78
    :try_start_2
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 85
    .line 86
    new-instance v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 87
    .line 88
    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    invoke-virtual {v1, v4, v6, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    iget v8, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 96
    .line 97
    iget-object v9, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 98
    .line 99
    iget v10, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 100
    .line 101
    iget v11, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 102
    .line 103
    iget-boolean v12, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 104
    .line 105
    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 106
    .line 107
    const/4 v13, 0x2

    .line 108
    invoke-virtual {v1, v4, v13, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget-object v13, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 113
    .line 114
    iget-boolean v14, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 115
    .line 116
    iget v15, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mBehavior:I

    .line 117
    .line 118
    iget v6, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 119
    .line 120
    iget-object v4, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 121
    .line 122
    move/from16 v16, v15

    .line 123
    .line 124
    iget v15, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 127
    .line 128
    move-object/from16 v17, v4

    .line 129
    .line 130
    move-object v4, v2

    .line 131
    move/from16 v18, v6

    .line 132
    .line 133
    move v6, v7

    .line 134
    move v7, v8

    .line 135
    move-object v8, v9

    .line 136
    move v9, v10

    .line 137
    move v10, v11

    .line 138
    move v11, v12

    .line 139
    move v12, v1

    .line 140
    move v1, v15

    .line 141
    move/from16 v15, v16

    .line 142
    .line 143
    move/from16 v16, v18

    .line 144
    .line 145
    move/from16 v18, v1

    .line 146
    .line 147
    move-object/from16 v19, v0

    .line 148
    .line 149
    invoke-direct/range {v4 .. v19}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZIILjava/lang/String;I[Lcom/android/internal/statusbar/LetterboxDetails;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v3

    .line 153
    return-object v2

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    throw v0

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    throw v0
.end method

.method public final registerStatusBarForCarLife(Lcom/android/internal/carlife/IStatusBarCarLife;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "registerStatusBarForCarLife bar="

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "StatusBarManagerService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/android/internal/carlife/IStatusBarCarLife;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$5;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v0, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "Unable to register Death Recipient for status bar"

    .line 53
    .line 54
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    return-void
.end method

.method public final remTile(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final removeIcon(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method

.method public final requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    iget-object v11, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    const-string/jumbo v17, "requestAddTile"

    .line 24
    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    move v13, v8

    .line 30
    move/from16 v14, p4

    .line 31
    .line 32
    move-object/from16 v18, v6

    .line 33
    .line 34
    invoke-virtual/range {v11 .. v18}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7, v8, v3, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v3, v0, :cond_0

    .line 47
    .line 48
    const/16 v0, 0x3eb

    .line 49
    .line 50
    :try_start_0
    invoke-interface {v9, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object v1, v0

    .line 56
    const-string v0, "StatusBarManagerService"

    .line 57
    .line 58
    const-string/jumbo v2, "requestAddTile"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v13, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v0, "android.service.quicksettings.action.QS_TILE"

    .line 68
    .line 69
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v13, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 76
    .line 77
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v13, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 88
    .line 89
    .line 90
    move-result v18

    .line 91
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 94
    .line 95
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    const/16 v19, -0x1

    .line 104
    .line 105
    const/16 v20, 0x0

    .line 106
    .line 107
    const-wide/16 v15, 0x0

    .line 108
    .line 109
    move/from16 v17, p4

    .line 110
    .line 111
    invoke-virtual/range {v11 .. v20}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 116
    .line 117
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1, v2, v3, v10}, Lcom/android/server/pm/Computer;->getComponentEnabledSettingInternal(IILandroid/content/ComponentName;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v2, 0x1

    .line 134
    const/4 v4, 0x0

    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 138
    .line 139
    if-eqz v5, :cond_3

    .line 140
    .line 141
    iget-boolean v11, v5, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 142
    .line 143
    if-ne v1, v2, :cond_1

    .line 144
    .line 145
    move v11, v2

    .line 146
    goto :goto_1

    .line 147
    :cond_1
    if-nez v1, :cond_2

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    move v11, v4

    .line 151
    :goto_1
    if-eqz v11, :cond_3

    .line 152
    .line 153
    const-string v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    .line 154
    .line 155
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    :goto_2
    move-object v11, v0

    .line 164
    goto :goto_3

    .line 165
    :cond_3
    const/4 v0, 0x0

    .line 166
    goto :goto_2

    .line 167
    :goto_3
    if-eqz v11, :cond_4

    .line 168
    .line 169
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 170
    .line 171
    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 172
    .line 173
    if-nez v0, :cond_5

    .line 174
    .line 175
    :cond_4
    move-object v2, v9

    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :cond_5
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 179
    .line 180
    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    const/16 v1, 0x64

    .line 189
    .line 190
    if-eq v0, v1, :cond_6

    .line 191
    .line 192
    const/16 v0, 0x3ec

    .line 193
    .line 194
    :try_start_1
    invoke-interface {v9, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catch_1
    move-exception v0

    .line 199
    move-object v1, v0

    .line 200
    const-string v0, "StatusBarManagerService"

    .line 201
    .line 202
    const-string/jumbo v2, "requestAddTile"

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :goto_4
    return-void

    .line 209
    :cond_6
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 210
    .line 211
    monitor-enter v1

    .line 212
    :try_start_2
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 213
    .line 214
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Ljava/lang/Long;

    .line 219
    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 221
    .line 222
    .line 223
    move-result-wide v12

    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 227
    .line 228
    .line 229
    move-result-wide v14

    .line 230
    sub-long v14, v12, v14

    .line 231
    .line 232
    sget-wide v16, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    .line 234
    cmp-long v5, v14, v16

    .line 235
    .line 236
    if-gez v5, :cond_7

    .line 237
    .line 238
    const/16 v0, 0x3e9

    .line 239
    .line 240
    :try_start_3
    invoke-interface {v9, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :catchall_0
    move-exception v0

    .line 245
    goto/16 :goto_b

    .line 246
    .line 247
    :catch_2
    move-exception v0

    .line 248
    move-object v2, v0

    .line 249
    :try_start_4
    const-string v0, "StatusBarManagerService"

    .line 250
    .line 251
    const-string/jumbo v3, "requestAddTile"

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    :goto_5
    monitor-exit v1

    .line 258
    return-void

    .line 259
    :cond_7
    if-eqz v0, :cond_8

    .line 260
    .line 261
    invoke-virtual {v7, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    :try_start_5
    invoke-interface {v0, v6}, Lcom/android/internal/statusbar/IStatusBar;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :catch_3
    move-exception v0

    .line 273
    move-object v5, v0

    .line 274
    :try_start_6
    const-string v0, "StatusBarManagerService"

    .line 275
    .line 276
    const-string/jumbo v14, "requestAddTile"

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .line 281
    .line 282
    :cond_8
    :goto_6
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    .line 283
    .line 284
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 292
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 293
    .line 294
    iget-object v5, v0, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter v5

    .line 297
    :try_start_7
    iget-object v0, v0, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    .line 298
    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v3, v10, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    const/4 v1, 0x3

    .line 314
    if-lt v0, v1, :cond_9

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    move v2, v4

    .line 318
    :goto_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 319
    if-eqz v2, :cond_b

    .line 320
    .line 321
    invoke-virtual {v7, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_a

    .line 326
    .line 327
    :try_start_8
    invoke-interface {v9, v4}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 328
    .line 329
    .line 330
    goto :goto_8

    .line 331
    :catch_4
    move-exception v0

    .line 332
    move-object v1, v0

    .line 333
    const-string v0, "StatusBarManagerService"

    .line 334
    .line 335
    const-string/jumbo v2, "requestAddTile - callback"

    .line 336
    .line 337
    .line 338
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .line 340
    .line 341
    :cond_a
    :goto_8
    return-void

    .line 342
    :cond_b
    new-instance v14, Lcom/android/server/statusbar/StatusBarManagerService$6;

    .line 343
    .line 344
    move-object v1, v14

    .line 345
    move-object/from16 v2, p0

    .line 346
    .line 347
    move/from16 v3, p4

    .line 348
    .line 349
    move-object/from16 v4, p1

    .line 350
    .line 351
    move-object v5, v6

    .line 352
    move-object v15, v6

    .line 353
    move-object/from16 v6, p5

    .line 354
    .line 355
    invoke-direct/range {v1 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 359
    .line 360
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 361
    .line 362
    iget-object v1, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 363
    .line 364
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    iget-object v0, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 373
    .line 374
    if-eqz v0, :cond_c

    .line 375
    .line 376
    move v1, v8

    .line 377
    move-object v8, v0

    .line 378
    move-object v2, v9

    .line 379
    move v9, v1

    .line 380
    move-object/from16 v10, p1

    .line 381
    .line 382
    move-object/from16 v12, p2

    .line 383
    .line 384
    move-object/from16 v13, p3

    .line 385
    .line 386
    :try_start_9
    invoke-interface/range {v8 .. v14}, Lcom/android/internal/statusbar/IStatusBar;->requestAddTile(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :catch_5
    move-exception v0

    .line 391
    move-object v1, v0

    .line 392
    const-string v0, "StatusBarManagerService"

    .line 393
    .line 394
    const-string/jumbo v3, "requestAddTile"

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_c
    move-object v2, v9

    .line 402
    :goto_9
    invoke-virtual {v7, v15}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    const/16 v0, 0x3ed

    .line 406
    .line 407
    :try_start_a
    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    .line 408
    .line 409
    .line 410
    goto :goto_a

    .line 411
    :catch_6
    move-exception v0

    .line 412
    move-object v1, v0

    .line 413
    const-string v0, "StatusBarManagerService"

    .line 414
    .line 415
    const-string/jumbo v2, "requestAddTile"

    .line 416
    .line 417
    .line 418
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    .line 420
    .line 421
    :goto_a
    return-void

    .line 422
    :catchall_1
    move-exception v0

    .line 423
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 424
    throw v0

    .line 425
    :goto_b
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 426
    throw v0

    .line 427
    :goto_c
    const/16 v0, 0x3ea

    .line 428
    .line 429
    :try_start_d
    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 430
    .line 431
    .line 432
    goto :goto_d

    .line 433
    :catch_7
    move-exception v0

    .line 434
    move-object v1, v0

    .line 435
    const-string v0, "StatusBarManagerService"

    .line 436
    .line 437
    const-string/jumbo v2, "requestAddTile"

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .line 442
    .line 443
    :goto_d
    return-void
.end method

.method public final requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    const-wide/32 v0, 0xa445ae6

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Boolean;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const v6, 0xc0280

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const-string v6, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    .line 58
    .line 59
    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v1, v3

    .line 74
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :catch_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    move v1, v3

    .line 86
    :goto_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v2, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_3
    const-string v10, "StatusBarManagerService"

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "isSecCustomTile : componentName ="

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move v0, v3

    .line 117
    :cond_2
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v5, 0x0

    .line 126
    const-string/jumbo v6, "requestTileServiceListeningState"

    .line 127
    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    move v2, v8

    .line 131
    move v3, p2

    .line 132
    move-object v7, v9

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p0, v8, p2, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(IILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 147
    .line 148
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eq p2, v0, :cond_4

    .line 153
    .line 154
    if-eq v1, v0, :cond_4

    .line 155
    .line 156
    const-wide/32 p0, 0xe6f99b4

    .line 157
    .line 158
    .line 159
    invoke-static {p0, p1, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_3

    .line 164
    .line 165
    return-void

    .line 166
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    const-string p1, "User "

    .line 169
    .line 170
    const-string v0, " is not the current user."

    .line 171
    .line 172
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 181
    .line 182
    if-eqz p0, :cond_5

    .line 183
    .line 184
    :try_start_1
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestTileServiceListeningState(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catch_1
    move-exception p0

    .line 189
    const-string/jumbo p1, "requestTileServiceListeningState"

    .line 190
    .line 191
    .line 192
    invoke-static {v10, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_4
    return-void
.end method

.method public final resetScheduleAutoHide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->resetScheduleAutoHide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final restart()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v3, p0, v4}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    throw p0
.end method

.method public final setBlueLightFilter(ZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setBlueLightFilter(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 8
    .line 9
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 10
    .line 11
    sget-object v8, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, v9

    .line 15
    move-object v2, p2

    .line 16
    move v4, p3

    .line 17
    move v5, p4

    .line 18
    move-object v7, p5

    .line 19
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p2, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    :try_start_1
    invoke-interface {p2, p1, v9}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p0
.end method

.method public final setIconVisibility(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 22
    .line 23
    if-eq v2, p2, :cond_2

    .line 24
    .line 25
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    :try_start_1
    invoke-interface {p2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :try_start_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p0
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput p3, v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 13
    .line 14
    iput p4, v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 15
    .line 16
    iput-boolean p5, v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 17
    .line 18
    iput-object p2, v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v9, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    move-object v2, v9

    .line 25
    move-object v3, p0

    .line 26
    move v4, p1

    .line 27
    move-object v5, p2

    .line 28
    move v6, p3

    .line 29
    move v7, p4

    .line 30
    move v8, p5

    .line 31
    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final setIndicatorBgColor(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setNavBarMode(I)V
    .locals 8

    .line 1
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Supplied navBarMode not supported: "

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 35
    .line 36
    if-eq v4, v3, :cond_3

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 60
    .line 61
    const-string v0, "Calling user id: "

    .line 62
    .line 63
    const-string v1, ", cannot call on behalf of current user id: "

    .line 64
    .line 65
    invoke-static {v3, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 70
    .line 71
    const-string v1, "."

    .line 72
    .line 73
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    :try_start_0
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string/jumbo v6, "nav_bar_kids_mode"

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string/jumbo v6, "nav_bar_force_visible"

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getOverlayManager()Landroid/content/om/IOverlayManager;

    .line 110
    .line 111
    .line 112
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    if-ne p1, v1, :cond_4

    .line 116
    .line 117
    :try_start_1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-wide/16 v6, 0x0

    .line 124
    .line 125
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 130
    .line 131
    .line 132
    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    :try_start_2
    invoke-interface {v5, v0, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_4

    .line 141
    :catch_0
    move-exception p0

    .line 142
    goto :goto_3

    .line 143
    :catch_1
    :cond_4
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method

.method public final setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final setPanelExpandStateToType(ZI)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  setPanelExpandStateToType : state = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", barType = "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "StatusBarManagerService"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v2, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    .line 5
    .line 6
    const-string v3, "StatusBarManagerService"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    move-object/from16 v4, p2

    .line 19
    .line 20
    move-object/from16 v5, p3

    .line 21
    .line 22
    move/from16 v6, p4

    .line 23
    .line 24
    move/from16 v7, p5

    .line 25
    .line 26
    move/from16 v8, p6

    .line 27
    .line 28
    move-wide/from16 v9, p7

    .line 29
    .line 30
    move-object/from16 v11, p9

    .line 31
    .line 32
    move-wide/from16 v12, p10

    .line 33
    .line 34
    invoke-interface/range {v2 .. v13}, Lcom/android/internal/statusbar/IStatusBar;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_0
    return-void
.end method

.method public final showInattentiveSleepWarning()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showInattentiveSleepWarning()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public final showPinningEnterExitToast(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final showPinningEscapeToast()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    :cond_0
    return-void
.end method

.method public final showRearDisplayDialog(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONTROL_DEVICE_STATE"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRearDisplayDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo p1, "showRearDisplayDialog"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final shutdown()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 9
    .line 10
    const-string/jumbo v2, "userrequested"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 21
    .line 22
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$3;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$3;->prepareForPossibleShutdown()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final shutdownByBixby()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final startTracing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->startTracing()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final stopTracing()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->stopTracing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final suppressAmbientDisplay(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->suppressAmbientDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    :cond_0
    return-void
.end method

.method public final togglePanel()V
    .locals 2

    .line 1
    const-string/jumbo v0, "togglePanel"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    and-int/2addr v0, v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 32
    .line 33
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    :cond_2
    return-void
.end method

.method public final unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo p1, "unregisterNearbyMediaDevicesProvider"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    and-int/2addr v3, p1

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    .line 32
    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo p1, "updateMediaTapToTransferReceiverDisplay"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 4
    .line 5
    const-string v2, "StatusBarManagerService"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string/jumbo p1, "updateMediaTapToTransferSenderDisplay"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method
