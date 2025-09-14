.class public final Lcom/samsung/android/camera/scpm/ScpmReceiver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onListReceived(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    new-instance p2, Landroid/os/Message;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput v0, p2, Landroid/os/Message;->what:I

    .line 31
    .line 32
    const/16 v0, 0x1e

    .line 33
    .line 34
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 35
    .line 36
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onRegistered(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const-string v0, "CameraService/ScpmReceiver"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_1

    .line 11
    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "onRegistered - not acceptable result."

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "MSG_REGISTER_FAILED - retry after 1 hour"

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const-wide/32 v0, 0x36ee80

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "MSG_SCPM_UNAVAILABLE - retry after 5 min"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    const-wide/32 v0, 0x493e0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
