.class public final Lcom/android/server/PACMService$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "PACMService"

    .line 9
    const-string v1, "MESSAGE_CHECK_BOARDCAST_RECEIVER"

    .line 11
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v1, Lcom/android/server/PACMService;->mReceiverList:Ljava/util/List;

    .line 16
    if-nez v1, :cond_1

    .line 18
    const-string p0, "List is null"

    .line 20
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    .line 26
    iget-object v2, p0, Lcom/android/server/PACMService;->mReceiver:Lcom/android/server/PACMService$2;

    .line 28
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/android/server/PACMService;->mHandler:Lcom/android/server/PACMService$1;

    .line 36
    if-nez v2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/android/server/PACMService;->registerForBroadcasts()V

    .line 41
    const-wide/16 p0, 0x7d0

    .line 43
    invoke-virtual {v3, v0, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "Already registered BroadcastReceiver! ["

    .line 51
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v1

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "]"

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_3

    .line 79
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    :cond_3
    :goto_0
    return-void
.end method
