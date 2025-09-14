.class public final Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p4, 0x0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 5
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 7
    const/16 v1, 0x46

    .line 9
    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    .line 12
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    move v0, p1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    :cond_0
    move v0, p4

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    const-string v1, "battery.value_app_background_restricted"

    .line 22
    invoke-static {v1, p2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 27
    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v1

    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 32
    invoke-virtual {v2, p2, p3}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    .line 35
    move-result v3

    .line 36
    if-ltz v3, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p1, p4

    .line 40
    :goto_1
    if-ne p1, v0, :cond_3

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    if-eqz v0, :cond_4

    .line 45
    iget-object p1, v2, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget-object p1, v2, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 61
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 64
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 67
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 69
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 71
    const/4 p1, 0x3

    .line 72
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :goto_3
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method
