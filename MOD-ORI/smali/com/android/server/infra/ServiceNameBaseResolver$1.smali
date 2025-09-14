.class public final Lcom/android/server/infra/ServiceNameBaseResolver$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/ServiceNameBaseResolver;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 2
    .line 3
    iput p3, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-direct {p0, p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    const-string p0, "ServiceNameBaseResolver"

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v1, "invalid handler msg: "

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
