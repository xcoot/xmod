.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$1:I

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
    iget v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/wm/LockTaskController$1;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$1:I

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    .line 13
    .line 14
    iget v2, v1, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 15
    .line 16
    if-ne v2, p0, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    const-string v3, "Lock-to-App"

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/LockTaskController;->mToken:Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 23
    .line 24
    invoke-virtual {v2, v1, v3, p0}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    .line 28
    .line 29
    const/16 v0, -0x2710

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lcom/android/server/wm/LockTaskController;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;->f$1:I

    .line 39
    .line 40
    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 48
    .line 49
    .line 50
    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
