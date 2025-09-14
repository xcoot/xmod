.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;
.super Lcom/android/internal/app/ILogAccessDialogCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final approveAccessForClient(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    .line 8
    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    .line 17
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 19
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Long;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method

.method public final declineAccessForClient(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    .line 8
    iget-object p1, p1, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;->this$0:Lcom/android/server/logcat/LogcatManagerService;

    .line 17
    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 19
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Long;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method
