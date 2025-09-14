.class public final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCanceled:Z

.field public final mExpiryTime:Ljava/time/Instant;

.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Ljava/time/Instant;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mCanceled:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->mExpiryTime:Ljava/time/Instant;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 30
    .line 31
    const/16 v3, 0x12c

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSetPowerBoostRunnable:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFgHandler:Landroid/os/Handler;

    .line 43
    .line 44
    sget v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->POWER_BOOST_TIMEOUT_MS:I

    .line 45
    .line 46
    int-to-long v2, v2

    .line 47
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v1, "VoiceInteractionServiceManager"

    .line 52
    .line 53
    const-string v3, "Reset power boost INTERACTION because reaching max timeout."

    .line 54
    .line 55
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$PowerBoostSetter;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    invoke-virtual {p0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method
