.class public final Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final completeSignal:Ljava/util/concurrent/CountDownLatch;

.field public final mediaPlayer:Landroid/media/MediaPlayer;

.field public running:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    const-string p1, "Shutdown-SoundPlayer"

    .line 2
    .line 3
    const-string v0, "!@onCompletion(MediaPlayer arg0) called !!"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final run()V
    .locals 7

    .line 1
    const-string v0, "Set sound complete audioParam awaitResult = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    const-string v2, "Shutdown-SoundPlayer"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "MediaPlayer is null"

    .line 10
    .line 11
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "Start play sound file"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string/jumbo v1, "sound thread exception"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    const-string/jumbo v1, "sound thread IllegalStateException"

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->completeSignal:Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-long v3, v3

    .line 51
    const-wide/16 v5, 0x2

    .line 52
    .line 53
    mul-long/2addr v3, v5

    .line 54
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const-string v0, "g_shutdown_suspend=suspend"

    .line 76
    .line 77
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const-string v0, "H/W workaround. wait 1000ms before power off"

    .line 81
    .line 82
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const-wide/16 v0, 0x3e8

    .line 86
    .line 87
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_2
    move-exception v0

    .line 92
    const-string v1, "Wait fail"

    .line 93
    .line 94
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    .line 99
    .line 100
    const-string p0, "Shutdown sound done"

    .line 101
    .line 102
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method
