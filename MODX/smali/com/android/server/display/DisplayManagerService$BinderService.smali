.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$BinderService;->isAllowedRefreshRateToken()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 31
    new-instance v1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    .line 33
    invoke-direct {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    .line 36
    const-string v2, "LowRefreshRateToken:"

    .line 38
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    move-result-wide v2

    .line 46
    new-instance v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 48
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 53
    iput-object p2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 55
    iput-wide v2, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 57
    const/4 p1, 0x0

    .line 58
    iput p1, v4, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 60
    invoke-virtual {p0, v1, v4}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 63
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_0
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method

.method public final acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$BinderService;->isAllowedRefreshRateToken()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/RefreshRateController;->createPassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    .line 29
    move-result-object p0

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$BinderService;->isAllowedRefreshRateToken()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v1, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateTokenController:Lcom/android/server/display/mode/RefreshRateTokenController;

    .line 31
    new-instance v2, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;-><init>(Lcom/android/server/display/mode/RefreshRateController;)V

    .line 36
    const-string p0, "RefreshRateMaxLimitToken:"

    .line 38
    invoke-static {p0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    move-result-wide v3

    .line 46
    new-instance p3, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 48
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p3, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mToken:Landroid/os/IBinder;

    .line 53
    iput-object p0, p3, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mTag:Ljava/lang/String;

    .line 55
    iput-wide v3, p3, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mAcquireTime:J

    .line 57
    iput p2, p3, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 59
    invoke-virtual {v1, v2, p3}, Lcom/android/server/display/mode/RefreshRateTokenController;->createRefreshRateToken(Lcom/android/server/display/mode/RefreshRateToken;Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;)V

    .line 62
    monitor-exit v0

    .line 63
    return-object v2

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public final acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$BinderService;->isAllowedRefreshRateToken()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {p2, p1, p3}, Lcom/android/server/display/mode/RefreshRateController;->createRefreshRateMinLimitToken(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    .line 32
    move-result-object p0

    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final areUserDisabledHdrTypesAllowed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final connectWifiDisplay(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 9
    const-string v2, "Permission required to connect to a wifi display"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mconnectWifiDisplayInternal(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string p1, "address must not be null"

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public final connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 7
    const-string v2, "Permission required to connect to a wifi display"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 21
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 23
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 30
    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V

    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    throw p0
.end method

.method public final convertToBrightness(F)I
    .locals 6

    .line 1
    const-string v0, "[api] convertToBrightness: "

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v2, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 9
    const-string v3, "Permission required to covert the nits to brightness"

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v1

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 22
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 34
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 36
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 38
    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBrightness(F)I

    .line 43
    move-result p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, -0x1

    .line 46
    :goto_0
    const-string v4, "DisplayManagerService"

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, " -> "

    .line 58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    return p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw p0
.end method

.method public final createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v6, p4

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final disableConnectedDisplay(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disableConnectedDisplay_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->enableConnectedDisplay(IZ)V

    .line 10
    return-void
.end method

.method public final disconnectWifiDisplay()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string p3, "DisplayManagerService"

    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0
.end method

.method public final enableConnectedDisplay(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->enableConnectedDisplay_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->enableConnectedDisplay(IZ)V

    .line 10
    return-void
.end method

.method public final fitToActiveDisplay(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 7
    const-string/jumbo v2, "no permission to call fitToActiveDisplay(boolean)"

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 15
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string/jumbo v1, "fitToActiveDisplayLocked, status : "

    .line 30
    const-string v2, "WifiDisplayAdapter"

    .line 32
    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 37
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 40
    iget-boolean v2, v1, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne p1, v2, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput-boolean p1, v1, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 48
    iput-boolean v3, v1, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 50
    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 53
    :goto_0
    xor-int/2addr p1, v3

    .line 54
    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$11;

    .line 56
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    .line 59
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    :cond_1
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final forgetWifiDisplay(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 9
    const-string v2, "Permission required to forget to a wifi display"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 25
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p1, "address must not be null"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method public final getAdaptiveBrightness(IF)F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 7
    const-string v2, "Permission required to get the display\'s adaptive brightness"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 20
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 39
    move-result p1

    .line 40
    const/high16 v3, -0x40800000    # -1.0f

    .line 42
    const/4 v4, -0x1

    .line 43
    if-ne p1, v4, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 48
    if-eqz p0, :cond_2

    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    .line 54
    move-result v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 58
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    return v3

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public final getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 1
    const-string v0, "[api] getAmbientBrightnessStats: u:"

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats_enforcePermission()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v2

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 22
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    const-string v5, "DisplayManagerService"

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ": "

    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 40
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 49
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v7}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 74
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {p0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 82
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    .line 87
    move-result-object p0

    .line 88
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return-object p0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    throw p0
.end method

.method public final getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 7

    .line 1
    const-string v0, "[api] getBackupBrightnessConfiguration: "

    .line 3
    const-string v1, "DisplayManagerService"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "[api] getBackupBrightnessConfiguration: "

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 20
    const-string v2, "android.permission.DEVICE_POWER"

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    move-result-wide v1

    .line 30
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 39
    move-result p1

    .line 40
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 42
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 44
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 47
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 49
    invoke-virtual {v6}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 52
    iget-object v6, v6, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 54
    iget-object v6, v6, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/hardware/display/BrightnessConfiguration;

    .line 62
    if-nez p1, :cond_1

    .line 64
    const-string p1, "DisplayManagerService"

    .line 66
    const-string/jumbo v6, "getBackupBrightnessConfiguration: learned config did not exist"

    .line 69
    invoke-static {p1, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 74
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 82
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 84
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 86
    if-nez p0, :cond_0

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 91
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    .line 100
    move-result-object v4

    .line 101
    :goto_0
    move-object p1, v4

    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_1
    :goto_1
    const-string p0, "DisplayManagerService"

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return-object p1

    .line 127
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw p0
.end method

.method public final getBrightness(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 7
    const-string v2, "Permission required to set the display\'s brightness"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 18
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 20
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 31
    if-eqz p0, :cond_0

    .line 33
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 35
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 40
    move-result p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 44
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    throw p0
.end method

.method public final getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 7

    .line 1
    const-string v0, "[api] getBrightnessConfigurationForDisplay: "

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForDisplay_enforcePermission()V

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v1

    .line 10
    if-eq p2, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 14
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 16
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 18
    const-string v3, "Permission required to read the display brightness configuration of another user"

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v1

    .line 27
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 29
    sget-boolean v4, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 31
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 38
    move-result p2

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 41
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 43
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 46
    invoke-virtual {v4, p2, p1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(ILjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    .line 49
    move-result-object p2

    .line 50
    const/4 v4, 0x0

    .line 51
    if-nez p2, :cond_3

    .line 53
    const-string v5, "DisplayManagerService"

    .line 55
    const-string v6, "[api] getBrightnessConfigurationForDisplay: config is null"

    .line 57
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 62
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 64
    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    .line 67
    move-result-object p1

    .line 68
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 70
    invoke-virtual {v5, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 73
    move-result-object p1

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eqz p1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 79
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 81
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object p0, v5

    .line 89
    :goto_0
    if-eqz p0, :cond_3

    .line 91
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 93
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 95
    if-nez p0, :cond_2

    .line 97
    move-object p2, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 101
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 107
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    .line 110
    move-result-object p0

    .line 111
    move-object p2, p0

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    const-string p0, "DisplayManagerService"

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    return-object p2

    .line 144
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0
.end method

.method public final getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 18
    iget-object v1, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 1
    const-string v0, "[api] getBrightnessEvents: u:"

    .line 3
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents_enforcePermission()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 12
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 14
    const-class v3, Landroid/app/AppOpsManager;

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/AppOpsManager;

    .line 22
    const/16 v3, 0x2b

    .line 24
    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x3

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-ne p1, v2, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 35
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 37
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v3, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-nez p1, :cond_0

    .line 50
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    move-result p1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 57
    move-result-wide v1

    .line 58
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 60
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 62
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    const-string v6, "DisplayManagerService"

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, ", us:"

    .line 75
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, " "

    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 88
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 96
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 98
    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/DisplayPowerController;->getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 121
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 123
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 129
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 131
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/DisplayPowerController;->getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;

    .line 134
    move-result-object p0

    .line 135
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    return-object p0

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw p0
.end method

.method public final getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessInfo_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 15
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_2

    .line 25
    iget-boolean v3, v3, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 27
    if-nez v3, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 32
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 40
    if-eqz p0, :cond_1

    .line 42
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 47
    move-result-object p0

    .line 48
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return-object v4

    .line 60
    :cond_2
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return-object v4

    .line 65
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    throw p0
.end method

.method public final getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 9

    .line 1
    const-string v0, "[api] getDefaultBrightnessConfiguration: "

    .line 3
    const-string v1, "[api] getDefaultBrightnessConfiguration(backup config is applied) :"

    .line 5
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration_enforcePermission()V

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v2

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 14
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 19
    iget-object v5, v5, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 21
    invoke-virtual {v5}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 24
    iget-object v5, v5, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 26
    iget-object v5, v5, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/hardware/display/BrightnessConfiguration;

    .line 35
    if-eqz v5, :cond_0

    .line 37
    const-string/jumbo v7, "sec-backup"

    .line 40
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 50
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    .line 53
    move-result-object p0

    .line 54
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 56
    check-cast v0, [F

    .line 58
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 60
    check-cast p0, [F

    .line 62
    new-instance v5, Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 64
    invoke-direct {v5, v0, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 67
    const-string p0, ""

    .line 69
    invoke-virtual {v5, p0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 72
    const-string p0, "DisplayManagerService"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    .line 103
    move-result-object p0

    .line 104
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    return-object p0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_2

    .line 111
    :cond_0
    :try_start_2
    const-string v1, "DisplayManagerService"

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 120
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 122
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 128
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 130
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 132
    const/4 v7, 0x0

    .line 133
    if-nez v0, :cond_1

    .line 135
    move-object v0, v7

    .line 136
    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 139
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    .line 148
    move-result-object v0

    .line 149
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 168
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 170
    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 176
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 178
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 180
    if-nez p0, :cond_2

    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object p0

    .line 189
    check-cast p0, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    .line 194
    move-result-object v7

    .line 195
    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    return-object v7

    .line 200
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    :catchall_1
    move-exception p0

    .line 203
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw p0
.end method

.method public final getDeviceMaxVolume()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 14
    iget-object v1, v1, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 16
    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/16 p0, 0x64

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p0, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    .line 27
    :goto_0
    monitor-exit v0

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    const/4 p0, -0x1

    .line 33
    return p0

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final getDeviceMinVolume()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/display/VolumeController;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 14
    iget-object v1, v1, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 16
    invoke-virtual {v1}, Landroid/hardware/display/SemDlnaDevice;->isConnected()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget p0, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    const/4 p0, -0x1

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    throw p0
.end method

.method public final getDisplayIds(Z)[I
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 16
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 18
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 23
    move-result v4

    .line 24
    new-array v5, v4, [I

    .line 26
    const/4 v6, 0x0

    .line 27
    move v7, v6

    .line 28
    move v8, v7

    .line 29
    :goto_0
    if-ge v7, v4, :cond_2

    .line 31
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Lcom/android/server/display/LogicalDisplay;

    .line 39
    iget-boolean v10, v9, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 41
    if-nez v10, :cond_0

    .line 43
    if-nez p1, :cond_0

    .line 45
    iget v10, v9, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 47
    if-nez v10, :cond_1

    .line 49
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 52
    move-result-object v9

    .line 53
    invoke-virtual {v9, v0}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_1

    .line 59
    add-int/lit8 v9, v8, 0x1

    .line 61
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    move-result v10

    .line 67
    aput v10, v5, v8

    .line 69
    move v8, v9

    .line 70
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-eq v8, v4, :cond_3

    .line 75
    invoke-static {v5, v6, v8}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 78
    move-result-object v5

    .line 79
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    return-object v5

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw p0
.end method

.method public final getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    throw p0
.end method

.method public final getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v2, "Permission required to call getDlnaDevice"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    .line 33
    iget-object p0, p0, Lcom/android/server/display/DlnaController;->mDevice:Landroid/hardware/display/SemDlnaDevice;

    .line 35
    monitor-exit v0

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p0, Landroid/hardware/display/SemDlnaDevice;

    .line 41
    invoke-direct {p0}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    .line 44
    monitor-exit v0

    .line 45
    return-object p0

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0
.end method

.method public final getMinimumBrightnessCurve()Landroid/hardware/display/Curve;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;

    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    throw p0
.end method

.method public final getOverlaySupport()Landroid/hardware/OverlayProperties;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mOverlayProperties:Landroid/hardware/OverlayProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p0
.end method

.method public final getPreferredWideGamutColorSpaceId()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final getPresentationOwner(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_4

    .line 17
    iget-boolean v1, v1, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 19
    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 23
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 25
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const-string v1, ""

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 36
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p0

    .line 42
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    .line 54
    iget v3, v2, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 56
    if-ne v3, p1, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ","

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, v2, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    monitor-exit v0

    .line 103
    return-object v1

    .line 104
    :cond_4
    :goto_2
    const-string p0, ""

    .line 106
    monitor-exit v0

    .line 107
    return-object p0

    .line 108
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p0
.end method

.method public final getPrimaryPhysicalDisplayId()J
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 12
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 14
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/server/display/DisplayDevice;

    .line 34
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->isFirstDisplay()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 50
    instance-of v3, p0, Landroid/view/DisplayAddress$Physical;

    .line 52
    if-eqz v3, :cond_2

    .line 54
    check-cast p0, Landroid/view/DisplayAddress$Physical;

    .line 56
    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    .line 59
    move-result-wide v3

    .line 60
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return-wide v3

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    const-wide/16 v0, -0x1

    .line 73
    return-wide v0

    .line 74
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0
.end method

.method public final getRefreshRateSwitchingType()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->getModeSwitchingType()I

    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final getScreenSharingStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 10
    if-nez p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getStableDisplaySize()Landroid/graphics/Point;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v2, Landroid/graphics/Point;

    .line 14
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 19
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 22
    iget v4, p0, Landroid/graphics/Point;->x:I

    .line 24
    if-lez v4, :cond_0

    .line 26
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 28
    if-lez p0, :cond_0

    .line 30
    invoke-virtual {v2, v4, p0}, Landroid/graphics/Point;->set(II)V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    return-object v2

    .line 41
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    throw p0
.end method

.method public final getSupportedHdrOutputTypes()[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object p0, Lcom/android/server/display/DisplayManagerService;->EMPTY_ARRAY:[I

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 16
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I

    .line 18
    if-nez v2, :cond_1

    .line 20
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputType:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    throw p0
.end method

.method public final getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 16
    monitor-exit v2

    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    .line 24
    move-result-object p0

    .line 25
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return-object p0

    .line 30
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    throw p0
.end method

.method public final getUserDisabledHdrTypes()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    throw p0
.end method

.method public final getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v2

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance p0, Landroid/hardware/display/WifiDisplayStatus;

    .line 24
    invoke-direct {p0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    .line 27
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return-object p0

    .line 32
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method

.method public final isAllowedRefreshRateToken()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object p0

    .line 13
    const/16 v1, 0x3e8

    .line 15
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    move-result p0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "RefreshRateToken - abnormal caller, uid: "

    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ", pid: "

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    const-string v0, "DisplayManagerService"

    .line 51
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final isDeviceVolumeMuted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final isFitToActiveDisplay()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 17
    iget-boolean p0, p0, Lcom/android/server/display/PersistentDataStore;->mIsFitToActiveDisplay:Z

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v2, "isFitToActiveDisplayLocked : "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string v2, "WifiDisplayAdapter"

    .line 36
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    monitor-exit v0

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final isMinimalPostProcessingRequested(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object p0

    .line 15
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 17
    monitor-exit v0

    .line 18
    return p0

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

.method public final isUidPresentOnDisplay(II)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string p0, "WifiDisplayAdapter"

    .line 18
    const-string/jumbo v1, "isWifiDisplayWithPinSupported"

    .line 21
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    monitor-exit p1

    .line 25
    return v0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit p1

    .line 29
    return v0

    .line 30
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/display/DisplayManagerShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayManagerShellCommand;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 20
    return-void
.end method

.method public final overrideHdrTypes(I[I)V
    .locals 2

    .line 1
    const-string v0, "Invalid display: "

    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayControl;->overrideHdrTypes(Landroid/os/IBinder;[I)V

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final pauseWifiDisplay()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const-string v3, "WifiDisplayAdapter"

    .line 19
    const-string/jumbo v4, "requestPauseLocked"

    .line 22
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 27
    const/4 v4, 0x4

    .line 28
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 31
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x7

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 6
    return-void
.end method

.method public final registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 15
    iget-object v2, v2, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 17
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    const-wide/16 v2, 0x20

    .line 25
    and-long/2addr v2, p2

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    cmp-long v2, v2, v4

    .line 30
    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 34
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 36
    const-string v3, "android.permission.MANAGE_DISPLAYS"

    .line 38
    const-string v4, "Permission required to get signals about connection events."

    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v6

    .line 47
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 49
    move-wide v2, p2

    .line 50
    move-object v4, p1

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterCallbackInternal(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw p0

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string/jumbo p1, "listener must not be null"

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0
.end method

.method public final registerHbmBrightnessCallback(Landroid/hardware/display/IHbmBrightnessCallback;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v1

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v2

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 17
    invoke-static {v0, v1, p1, p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mregisterHbmBrightnessCallbackInternal(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    throw p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string/jumbo p1, "listener mut not be null"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public final releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    move-result-object p1

    .line 11
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 9
    const-string v2, "Permission required to rename to a wifi display"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 20
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 22
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 25
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p1, "address must not be null"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method public final requestColorMode(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget v3, p1, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 24
    if-eq v3, p2, :cond_0

    .line 26
    iput p2, p1, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    return-void

    .line 40
    :goto_1
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

    .line 46
    throw p0
.end method

.method public final requestDisplayModes(Landroid/os/IBinder;I[I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayModes_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 8
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 10
    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    .line 18
    move-result v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    if-eqz v1, :cond_5

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez p3, :cond_2

    .line 31
    iget-object v2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v2

    .line 34
    :try_start_1
    iget-object p3, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 36
    check-cast p3, Ljava/util/HashMap;

    .line 38
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Landroid/util/SparseArray;

    .line 44
    if-eqz p3, :cond_1

    .line 46
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v0, v1

    .line 57
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v0, v1

    .line 64
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v0, :cond_5

    .line 67
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    .line 69
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 72
    goto :goto_6

    .line 73
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_2
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    array-length v3, p3

    .line 81
    move v4, v1

    .line 82
    :goto_3
    if-ge v4, v3, :cond_3

    .line 84
    aget v5, p3, v4

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    iget-object p3, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mLock:Ljava/lang/Object;

    .line 98
    monitor-enter p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 99
    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 101
    check-cast v3, Ljava/util/HashMap;

    .line 103
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Landroid/util/SparseArray;

    .line 109
    if-nez v3, :cond_4

    .line 111
    new-instance v3, Landroid/util/SparseArray;

    .line 113
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 116
    iget-object v4, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDisplaysRestrictions:Ljava/util/Map;

    .line 118
    check-cast v4, Ljava/util/HashMap;

    .line 120
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto :goto_4

    .line 124
    :catchall_1
    move-exception p2

    .line 125
    goto :goto_5

    .line 126
    :cond_4
    move v0, v1

    .line 127
    :goto_4
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/SystemRequestObserver;->updateStorageLocked(I)V

    .line 133
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    if-eqz v0, :cond_5

    .line 136
    :try_start_5
    iget-object p2, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    .line 138
    invoke-interface {p1, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 141
    goto :goto_6

    .line 142
    :goto_5
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    :try_start_7
    throw p2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 144
    :catch_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVotes(Landroid/os/IBinder;)V

    .line 147
    goto :goto_6

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 150
    throw p0

    .line 151
    :cond_5
    :goto_6
    return-void
.end method

.method public final requestDisplayPower(IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->requestDisplayPower_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestDisplayPower(IZ)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x3e8

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v1, "Permission required to call requestSetWifiDisplayParameters"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    monitor-exit p1

    .line 36
    return v0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit p1

    .line 40
    return v0

    .line 41
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x3e8

    .line 7
    if-eq p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string p2, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v0, "Permission required to call requestWifiDisplayParameter"

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    const/4 p2, 0x0

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    monitor-exit p1

    .line 36
    return p2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit p1

    .line 40
    return p2

    .line 41
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] resetBrightnessConfigurationForUser:  "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ": "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 25
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 29
    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    .line 31
    const-string v2, "Permission required to change the display\'s brightness configuration"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 39
    move-result v0

    .line 40
    if-eq p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 44
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 46
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 48
    const-string v2, "Permission required to change the display brightness configuration of another user"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 59
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 61
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 64
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 66
    new-instance v4, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;

    .line 68
    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;Ljava/lang/String;I)V

    .line 71
    const/4 p0, 0x1

    .line 72
    invoke-virtual {v3, v4, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 75
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method

.method public final resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 3

    .line 1
    if-lez p2, :cond_1

    .line 3
    if-lez p3, :cond_1

    .line 5
    if-lez p4, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 13
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 16
    move-result-object p1

    .line 17
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 22
    if-nez p0, :cond_0

    .line 24
    monitor-exit v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(IIILandroid/os/IBinder;)V

    .line 31
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string/jumbo p1, "width, height, and densityDpi must be greater than 0"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public final resumeWifiDisplay()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const-string v3, "WifiDisplayAdapter"

    .line 19
    const-string/jumbo v4, "requestResumeLocked"

    .line 22
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$1;

    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 31
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mrotateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    throw p0
.end method

.method public final setAreUserDisabledHdrTypesAllowed(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setAreUserDisabledHdrTypesAllowed_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetAreUserDisabledHdrTypesAllowedInternal(Lcom/android/server/display/DisplayManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    const-string v2, "[api] setBackupBrightnessConfiguration(new): "

    .line 5
    const-string v3, "[api] setBackupBrightnessConfiguration: "

    .line 7
    const-string v4, "DisplayManagerService"

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 11
    const-string v6, "[api] setBackupBrightnessConfiguration: "

    .line 13
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static {v4, v5, v6}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 20
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 24
    const-string v5, "android.permission.DEVICE_POWER"

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v8

    .line 34
    :try_start_0
    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 36
    iget-object v10, v4, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 38
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    const-string v4, "DisplayManagerService"

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 58
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    move-object v11, v3

    .line 65
    check-cast v11, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 67
    move-object v3, v11

    .line 68
    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    .line 70
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 72
    if-eqz v3, :cond_0

    .line 74
    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 76
    invoke-virtual {v3, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    .line 79
    move-result-object v1

    .line 80
    move-object v3, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move-object v3, v7

    .line 83
    :goto_0
    if-eqz v3, :cond_2

    .line 85
    const-string v1, "DisplayManagerService"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 104
    if-eqz v1, :cond_1

    .line 106
    move-object v1, v11

    .line 107
    check-cast v1, Lcom/android/server/display/DisplayPowerController;

    .line 109
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 115
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfigurations()V

    .line 118
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 120
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 125
    move-result-object v1

    .line 126
    const-string/jumbo v2, "com.google.android.apps.turbo"

    .line 129
    invoke-virtual {v1, v2, v7}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 132
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 134
    iget-object v7, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 136
    new-instance v12, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;

    .line 138
    const/4 v6, 0x1

    .line 139
    move-object v1, v12

    .line 140
    move-object v2, p0

    .line 141
    move v4, p2

    .line 142
    move-object/from16 v5, p3

    .line 144
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V

    .line 147
    const/4 v0, 0x1

    .line 148
    invoke-virtual {v7, v12, v0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 151
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 153
    if-eqz v0, :cond_2

    .line 155
    check-cast v11, Lcom/android/server/display/DisplayPowerController;

    .line 157
    iget-object v0, v11, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 159
    const/16 v1, 0x13

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    goto :goto_2

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto :goto_3

    .line 171
    :cond_2
    :goto_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    return-void

    .line 176
    :goto_3
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :catchall_1
    move-exception v0

    .line 179
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw v0
.end method

.method public final setBrightness(IF)V
    .locals 4

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] setBrightness: displayId="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " brightness="

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 25
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightness_enforcePermission()V

    .line 28
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 30
    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 41
    const/4 v1, 0x0

    .line 42
    cmpl-float v1, p2, v1

    .line 44
    if-ltz v1, :cond_1

    .line 46
    iget v0, v0, Lcom/android/server/display/DisplayManagerService;->mScreenExtendedBrightnessRangeMaximum:F

    .line 48
    cmpg-float v0, p2, v0

    .line 50
    if-gtz v0, :cond_1

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    move-result-wide v0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 58
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 60
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 63
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 71
    if-eqz p1, :cond_0

    .line 73
    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    .line 75
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 78
    move-result p2

    .line 79
    iget-object v3, p1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 81
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 84
    move-result v3

    .line 85
    iget-object p1, p1, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 87
    invoke-virtual {p1, p2, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 92
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 97
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0

    .line 110
    :cond_1
    const-string p0, "DisplayManagerService"

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "Attempted to set invalid brightness"

    .line 116
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public final setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForDisplay_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    move-result v0

    .line 8
    if-eq p3, v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 12
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 14
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 16
    const-string v2, "Permission required to change the display brightness configuration of another user"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public final setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] setBrightnessConfigurationForUser: "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ": "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser_enforcePermission()V

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 50
    move-result v0

    .line 51
    if-eq p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 55
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 57
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 59
    const-string v2, "Permission required to change the display brightness configuration of another user"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    move-result-wide v0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 70
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 72
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 75
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 77
    new-instance v10, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;

    .line 79
    const/4 v9, 0x0

    .line 80
    move-object v4, v10

    .line 81
    move-object v5, p0

    .line 82
    move-object v6, p1

    .line 83
    move v7, p2

    .line 84
    move-object v8, p3

    .line 85
    invoke-direct/range {v4 .. v9}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V

    .line 88
    const/4 p0, 0x1

    .line 89
    invoke-virtual {v3, v10, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    .line 92
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0
.end method

.method public final setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[api] setBrightnessConfigurationForUser: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ": "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "DisplayManagerService"

    .line 41
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 46
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    .line 50
    const-string v2, "Permission required to change the display\'s brightness configuration"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 58
    move-result v0

    .line 59
    if-eq p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 63
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 65
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 67
    const-string v2, "Permission required to change the display brightness configuration of another user"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    move-result-wide v0

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 78
    move-object v3, p1

    .line 79
    move v4, p2

    .line 80
    move-object v5, p3

    .line 81
    move-object v6, p4

    .line 82
    move-object v7, p5

    .line 83
    move-object v8, p6

    .line 84
    invoke-static/range {v2 .. v8}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessConfigurationForUserWithStatsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw p0
.end method

.method public final setDeviceVolume(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v2, "Permission required to call setDeviceVolume"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "setVolume : volume = "

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "VolumeController"

    .line 50
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput p1, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 58
    new-instance p1, Lcom/android/server/display/VolumeController$3;

    .line 60
    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$3;-><init>(Lcom/android/server/display/VolumeController;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final setDeviceVolumeMuted(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v2, "Permission required to call setDeviceVolumeMuted"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v2, "setVolumeMuted :  muted = "

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-boolean v2, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", volume = "

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    const-string v2, "VolumeController"

    .line 60
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    .line 65
    new-instance p1, Lcom/android/server/display/VolumeController$3;

    .line 67
    invoke-direct {p1, p0}, Lcom/android/server/display/VolumeController$3;-><init>(Lcom/android/server/display/VolumeController;)V

    .line 70
    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_1
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final setDisplayIdToMirror(Landroid/os/IBinder;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p2, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 17
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    if-nez v1, :cond_0

    .line 23
    const/4 p2, -0x1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 32
    if-eqz p0, :cond_1

    .line 34
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 36
    if-eq p1, p2, :cond_1

    .line 38
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayIdToMirror:I

    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 43
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 45
    const/4 p2, 0x2

    .line 46
    invoke-virtual {p1, p0, p2}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 49
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final setDisplayStateOverride(Landroid/os/IBinder;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[api] setDisplayStateOverride(b): stateOverride="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " ("

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ")"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v1, 0x0

    .line 33
    const-string v2, "DisplayManagerService"

    .line 35
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 38
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 40
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 42
    const-string v1, "android.permission.DEVICE_POWER"

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    move-result-wide v0

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateOverrideInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
.end method

.method public final setDisplayStateOverrideWithDisplayId(Landroid/os/IBinder;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[api] setDisplayStateOverrideWithDisplayId: state="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", displayId="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " ("

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ")"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-string v1, "DisplayManagerService"

    .line 54
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 59
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 61
    const-string v1, "android.permission.DEVICE_POWER"

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    move-result-wide v0

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateOverrideWithDisplayIdInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    throw p0
.end method

.method public final setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v2, "Permission required to call setDlnaDevice"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 12
    const-string v1, "android.permission.MODIFY_HDR_CONVERSION_MODE"

    .line 14
    const-string v2, "Permission required to set the HDR conversion mode."

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    throw p0
.end method

.method public final setRefreshRateSwitchingType(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setRefreshRateSwitchingType_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 12
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 17
    if-eq p1, v3, :cond_0

    .line 19
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method

.method public final setScreenSharingStatus(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x3e8

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v1, "Permission required to call setScreenSharingStatus"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    if-nez p0, :cond_1

    .line 31
    monitor-exit p1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0

    .line 40
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setShouldAlwaysRespectAppRequestedMode_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 12
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 17
    if-eq v3, p1, :cond_0

    .line 19
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 24
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 26
    if-eqz p1, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    throw p0
.end method

.method public final setTemporaryAutoBrightnessAdjustment(F)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 15
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 24
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 32
    move-result p1

    .line 33
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 35
    const/4 v5, 0x6

    .line 36
    invoke-virtual {v4, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 43
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    move-result-wide p0

    .line 52
    sput-wide p0, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 54
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public final setTemporaryBrightness(IF)V
    .locals 8

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] setTemporaryBrightness: displayId="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, " brightness="

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 25
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness_enforcePermission()V

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 34
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 39
    iget-object v4, v4, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 47
    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 55
    move-result v5

    .line 56
    iget-object v6, v4, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 58
    const/4 v7, 0x5

    .line 59
    invoke-virtual {v6, v7, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 66
    const/4 v5, 0x0

    .line 67
    cmpl-float p2, p2, v5

    .line 69
    if-ltz p2, :cond_0

    .line 71
    iget-object p2, v4, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 79
    move-result-wide v4

    .line 80
    sput-wide v4, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 82
    :cond_0
    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 84
    if-eqz p2, :cond_3

    .line 86
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    const/4 p2, 0x1

    .line 92
    const/4 v4, -0x1

    .line 93
    if-eqz p1, :cond_1

    .line 95
    if-eq p1, p2, :cond_2

    .line 97
    move v2, v4

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move v2, p2

    .line 100
    :cond_2
    :goto_0
    if-eq v2, v4, :cond_3

    .line 102
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 110
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-void

    .line 123
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0
.end method

.method public final setTemporaryBrightnessForSlowChange(IFZ)V
    .locals 4

    .line 1
    const-string v0, "DisplayManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "[api] setTemporaryBrightnessForSlowChange: displayId="

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ", brightness="

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", slowChange="

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 46
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    .line 50
    const-string v3, "Permission required to set the display\'s brightness"

    .line 52
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    move-result-wide v0

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 61
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 63
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 66
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 74
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 82
    move-result p1

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p2

    .line 87
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 89
    const/4 v2, 0x5

    .line 90
    invoke-virtual {p0, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public final setUserDisabledHdrTypes([I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserDisabledHdrTypes_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    invoke-static {p0, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetUserDisabledHdrTypesInternal(Lcom/android/server/display/DisplayManagerService;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserPreferredDisplayMode_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p0
.end method

.method public final setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetVirtualDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    throw p0
.end method

.method public final setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/Surface;->isSingleBuffered()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string p1, "Surface can\'t be single-buffered"

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 24
    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    throw p0
.end method

.method public final setVolumeKeyEvent(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v2, "Permission required to call setVolumeKeyEvent"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/display/VolumeController;->setVolumeKeyEvent(I)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x3e8

    .line 7
    if-eq p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 11
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 13
    const-string p2, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 15
    const-string v0, "Permission required to call setWifiDisplayParam"

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final shouldAlwaysRespectAppRequestedMode()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->shouldAlwaysRespectAppRequestedMode_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 12
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 17
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    throw p0
.end method

.method public final startWifiDisplayChannelScan(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 7
    const-string v2, "Permission required to start wifi display scans"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-static {p0, v0, p1, v3}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final startWifiDisplayChannelScanAndInterval(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 7
    const-string v2, "Permission required to start wifi display scans"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 22
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    throw p0
.end method

.method public final startWifiDisplayScan()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 14
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v0, "The calling process has not registered an IDisplayManagerCallback."

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0
.end method

.method public final stopWifiDisplayScan()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 14
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 16
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v0, "The calling process has not registered an IDisplayManagerCallback."

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0
.end method
