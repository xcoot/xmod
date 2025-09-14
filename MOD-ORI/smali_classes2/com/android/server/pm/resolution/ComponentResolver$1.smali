.class public final Lcom/android/server/pm/resolution/ComponentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/resolution/ComponentResolver;

.field public final synthetic val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->this$0:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$1;->val$userNeedsBadgingCache:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 13
    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/resolution/ComponentResolverSnapshot;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    .line 23
    throw p0
.end method
