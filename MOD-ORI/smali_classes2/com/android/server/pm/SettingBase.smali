.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

.field public mPkgFlags:I

.field public mPkgPrivateFlags:I

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 3
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 4
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 9
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    if-eqz p1, :cond_0

    .line 10
    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 11
    iget v1, p1, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    iput v1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 12
    iget-object p1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrivateFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onChanged$2()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPrivateFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
