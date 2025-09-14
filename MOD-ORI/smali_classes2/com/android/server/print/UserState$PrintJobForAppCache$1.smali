.class public final Lcom/android/server/print/UserState$PrintJobForAppCache$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field public final synthetic val$appId:I

.field public final synthetic val$creator:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
