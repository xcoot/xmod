.class public final Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public backoffDelay:J

.field public backoffTime:J

.field public delayUntil:J

.field public enabled:Z

.field public final ident:I

.field public final periodicSyncs:Ljava/util/ArrayList;

.field public syncable:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method public constructor <init>(ILcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 14
    iput p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 19
    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 20
    sget-object p0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

    if-eqz p0, :cond_0

    .line 21
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/32 v0, 0x15180

    .line 22
    invoke-static {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 23
    iget-object v0, p0, Lcom/android/server/content/SyncManager$7;->this$0:Lcom/android/server/content/SyncManager;

    const-wide/32 v2, 0x15180

    move-object v1, p2

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 4
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 5
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 6
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 7
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 8
    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    iput-wide v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 10
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/PeriodicSync;

    .line 11
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v2, Landroid/content/PeriodicSync;

    invoke-direct {v2, v0}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", enabled="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", syncable="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", backoff="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", delay="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
