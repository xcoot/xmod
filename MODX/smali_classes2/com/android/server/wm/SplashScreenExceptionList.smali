.class public final Lcom/android/server/wm/SplashScreenExceptionList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeviceConfigExcludedPackages:Ljava/util/HashSet;

.field public final mLock:Ljava/lang/Object;

.field final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const-string/jumbo v0, "splash_screen_exception_list"

    .line 19
    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    const-string/jumbo v2, "window_manager"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SplashScreenExceptionList;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 39
    .line 40
    invoke-static {v2, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public updateDeviceConfig(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    const-string v1, ","

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    aget-object v3, p1, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method
