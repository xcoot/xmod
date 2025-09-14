.class public final Lcom/android/server/notification/DefaultDeviceEffectsApplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/notification/DeviceEffectsApplier;


# static fields
.field public static final SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field public final mContext:Landroid/content/Context;

.field public mIsScreenOffReceiverRegistered:Z

.field public mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

.field public final mNightModeWhenScreenOff:Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

.field public mPendingNightMode:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRegisterReceiverLock:Ljava/lang/Object;

.field public final mUiModeManager:Landroid/app/UiModeManager;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 40
    .line 41
    const-class v0, Landroid/os/PowerManager;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/os/PowerManager;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 50
    .line 51
    const-class v0, Landroid/app/UiModeManager;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/app/UiModeManager;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    .line 60
    .line 61
    const-class v0, Landroid/app/WallpaperManager;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/app/WallpaperManager;

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final apply(Landroid/service/notification/ZenDeviceEffects;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 10
    .line 11
    return-void
.end method

.method public final unregisterScreenOffReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final updateOrScheduleNightMode(IZ)V
    .locals 4

    .line 1
    iput-boolean p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    .line 31
    .line 32
    sget-object v2, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit p1

    .line 44
    goto :goto_3

    .line 45
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 56
    .line 57
    .line 58
    :goto_3
    return-void
.end method
