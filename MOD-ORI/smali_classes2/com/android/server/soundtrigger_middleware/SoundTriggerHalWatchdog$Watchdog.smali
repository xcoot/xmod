.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mException:Ljava/lang/Exception;

.field public final mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Exception;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mException:Ljava/lang/Exception;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog;->mTimer:Lcom/android/server/soundtrigger_middleware/UptimeTimer;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct {v2, p1, v1}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v3, 0xbb8

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalWatchdog$Watchdog;->mTask:Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;->mToken:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
