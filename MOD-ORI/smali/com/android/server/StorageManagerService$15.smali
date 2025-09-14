.class public final Lcom/android/server/StorageManagerService$15;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onFinished$com$android$server$StorageManagerService$13(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$15(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$16(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/server/StorageManagerService$15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Lcom/android/server/StorageManagerService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$15;->val$result:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/StorageManagerService;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 18
    .line 19
    .line 20
    monitor-exit p2

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :pswitch_0
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
