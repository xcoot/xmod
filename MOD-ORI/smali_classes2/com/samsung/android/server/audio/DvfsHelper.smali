.class public final Lcom/samsung/android/server/audio/DvfsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/DvfsHelper;


# instance fields
.field public final boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

.field public mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCPUBoostedForVoIP:Z

.field public mIsScreenOn:Z

.field public mRetryDelayMs:I

.field public final mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 14
    .line 15
    const/16 v0, 0x6d60

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/DvfsHelper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mDvfsManagerFactory:Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;

    .line 27
    .line 28
    check-cast p2, Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string p2, "AUDIOSERVICE_VOIP_BOOST"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/16 p2, 0xce4

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string p1, "AS.DvfsHelper"

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final acquireCPUBoost()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "AS.DvfsHelper"

    .line 7
    .line 8
    const-string v1, "acquire() cpu min lock for audio VoIP"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 14
    .line 15
    const/16 v2, 0x7530

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 18
    .line 19
    .line 20
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "acquireCPUBoost CPU state lock"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->boostChecker:Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    iget p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    .line 51
    .line 52
    int-to-long v2, p0

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mRetryDelayMs:I

    .line 2
    .line 3
    return-void
.end method
