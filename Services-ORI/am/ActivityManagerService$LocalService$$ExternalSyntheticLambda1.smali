.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

.field public final synthetic f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$LocalService;Landroid/app/IUnsafeIntentStrictModeCallback;ILandroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService$LocalService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$3:Landroid/content/Intent;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    sget v4, Lcom/android/server/am/ActivityManagerService$LocalService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/app/IUnsafeIntentStrictModeCallback;->onUnsafeIntent(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 23
    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    .line 32
    .line 33
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method
