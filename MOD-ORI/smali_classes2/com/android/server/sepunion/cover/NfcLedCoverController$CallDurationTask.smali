.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public prevSecond:B

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput-byte p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mgetCallDuration(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x3

    .line 19
    aget-byte v2, v0, v1

    .line 20
    .line 21
    iget-byte v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 26
    .line 27
    invoke-static {v2, v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    aget-byte v0, v0, v1

    .line 42
    .line 43
    iput-byte v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->prevSecond:B

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    .line 67
    .line 68
    throw v0
.end method
