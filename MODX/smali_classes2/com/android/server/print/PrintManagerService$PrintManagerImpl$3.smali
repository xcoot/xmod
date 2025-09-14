.class public final Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/print/UserState;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->destroyLocked()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;->val$userId:I

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, p0, v2, v3, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZZ)Lcom/android/server/print/UserState;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->removeObsoletePrintJobs()V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    throw p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
