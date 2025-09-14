.class public abstract Lcom/android/server/am/BaseAppStateTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public final mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mStateListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 15
    iget-object p1, p2, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 17
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 19
    iget-object p1, p2, Lcom/android/server/am/AppRestrictionController;->mLock:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 23
    new-instance p1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public dumpAsProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getTrackerInfoForStatsd(I)[B
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public abstract getType()I
.end method

.method public final notifyListenersOnStateChange(IIJLjava/lang/String;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    move-object v5, v4

    .line 21
    check-cast v5, Lcom/android/server/am/AppBatteryExemptionTracker;

    .line 23
    move v6, p1

    .line 24
    move v7, p2

    .line 25
    move-wide v8, p3

    .line 26
    move-object/from16 v10, p5

    .line 28
    move/from16 v11, p6

    .line 30
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/AppBatteryExemptionTracker;->onStateChange(IIJLjava/lang/String;Z)V

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0
.end method

.method public onBackgroundRestrictionChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLockedBootCompleted()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 14
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 18
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 24
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 26
    const-class v0, Landroid/os/BatteryStatsInternal;

    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/os/BatteryStatsInternal;

    .line 34
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 36
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 38
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 44
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 46
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 52
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 54
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 56
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 62
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 64
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 66
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 74
    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 76
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    const-class v1, Landroid/app/AppOpsManager;

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/app/AppOpsManager;

    .line 92
    const-class v1, Landroid/media/session/MediaSessionManager;

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroid/media/session/MediaSessionManager;

    .line 100
    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 102
    const-class v1, Landroid/permission/PermissionManager;

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/permission/PermissionManager;

    .line 110
    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 112
    const-class v1, Landroid/app/role/RoleManager;

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Landroid/app/role/RoleManager;

    .line 120
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 122
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 128
    const-string v1, "appops"

    .line 130
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 137
    move-result-object v1

    .line 138
    iput-object v1, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 140
    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    .line 142
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 147
    return-void
.end method

.method public onUidGone(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidProcStateChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStarted(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStopped(I)V
    .locals 0

    .line 1
    return-void
.end method
