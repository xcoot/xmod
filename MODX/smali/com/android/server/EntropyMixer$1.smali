.class public final Lcom/android/server/EntropyMixer$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method public constructor <init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    const-string p0, "EntropyMixer"

    .line 8
    const-string p1, "Will not process invalid message"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/EntropyMixer$1;->this$0:Lcom/android/server/EntropyMixer;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    .line 19
    iget-object p1, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object p0, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    .line 26
    const-wide/32 v1, 0xa4cb80

    .line 29
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    return-void
.end method
