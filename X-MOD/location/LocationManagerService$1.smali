.class public final Lcom/android/server/location/LocationManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    iget-object p2, p2, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 8
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mMockLocationRecord:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->recoverRealProviderLocked(Ljava/lang/String;)V

    .line 19
    :cond_0
    monitor-exit p2

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
