.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/UserController$Injector;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/UserController$Injector;

    .line 3
    check-cast p1, Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;

    .line 16
    invoke-direct {v1, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 19
    iget-object p1, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    .line 21
    const-wide/16 v2, 0x7d0

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iget-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 28
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 30
    new-instance v0, Lcom/android/server/am/UserController$Injector$2;

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/UserController$$ExternalSyntheticLambda25;)V

    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
