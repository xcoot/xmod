.class public final Lcom/android/server/wm/DisplayHashController$SyncCommand;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mResult:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayHashController;->connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    const-wide/16 v1, 0x5

    .line 16
    .line 17
    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    const-string v0, "WindowManager"

    .line 23
    .line 24
    const-string v1, "Failed to wait for command"

    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    .line 30
    .line 31
    return-object p0
.end method
