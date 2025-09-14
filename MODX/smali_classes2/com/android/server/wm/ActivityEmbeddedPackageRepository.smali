.class public final Lcom/android/server/wm/ActivityEmbeddedPackageRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mPackageReceiver:Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;

.field public final mRepository:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;-><init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mPackageReceiver:Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method
