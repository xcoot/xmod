.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->this$0:Ljava/lang/Object;

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 p3, 0x1

    .line 7
    invoke-direct {p0, p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->this$0:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->invalidateToken()V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v0, "invalid token handler msg: "

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string p1, "ContextualSearchManagerService"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 42
    if-nez v0, :cond_1

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;->this$0:Ljava/lang/Object;

    .line 47
    check-cast p1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->resetTemporaryPackage()V

    .line 52
    monitor-exit p0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1

    .line 57
    :cond_1
    const-string p0, "ContextualSearchManagerService"

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "invalid handler msg: "

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
