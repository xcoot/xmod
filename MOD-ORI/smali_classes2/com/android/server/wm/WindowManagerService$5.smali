.class public final Lcom/android/server/wm/WindowManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/internal/view/WindowManagerPolicyThread;->set(Ljava/lang/Thread;Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->init()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
