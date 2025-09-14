.class public final Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 1

    .line 1
    const-string p0, "ActivityTaskManager"

    .line 2
    .line 3
    const-string/jumbo v0, "setKeyguardState: dismiss cancelled"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDismissError()V
    .locals 1

    .line 1
    const-string p0, "ActivityTaskManager"

    .line 2
    .line 3
    const-string/jumbo v0, "setKeyguardState: failed to dismiss keyguard"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v1, v3, p0}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
