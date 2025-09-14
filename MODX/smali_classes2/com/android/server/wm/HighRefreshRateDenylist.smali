.class public final Lcom/android/server/wm/HighRefreshRateDenylist;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultDenylist:[Ljava/lang/String;

.field public final mDenylistedPackages:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/provider/DeviceConfigInterface;)V
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
    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const v0, 0x1070110

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/wm/HighRefreshRateDenylist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateDenylist;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "display_manager"

    .line 37
    .line 38
    invoke-interface {p2, v1, p1, v0}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "high_refresh_rate_blacklist"

    .line 42
    .line 43
    invoke-interface {p2, v1, p1}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/wm/HighRefreshRateDenylist;->updateDenylist(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final updateDenylist(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-string v2, ","

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v2, p1

    .line 19
    :goto_0
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    aget-object v3, p1, v1

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDefaultDenylist:[Ljava/lang/String;

    .line 45
    .line 46
    array-length v2, p1

    .line 47
    :goto_2
    if-ge v1, v2, :cond_2

    .line 48
    .line 49
    aget-object v3, p1, v1

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
