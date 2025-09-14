.class public final Lcom/android/server/am/UserController$Injector$2;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController$Injector;

.field public final synthetic val$runOnce:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method

.method public final onDismissError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$2;->this$0:Lcom/android/server/am/UserController$Injector;

    .line 3
    iget-object v0, v0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$2;->val$runOnce:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
.end method
