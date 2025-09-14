.class public final synthetic Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DvfsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DvfsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsCPUBoostedForVoIP:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/DvfsHelper;->acquireCPUBoost()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 12
    .line 13
    const-string v1, "AS.DvfsHelper"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string/jumbo v0, "release() cpu min lock"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CPU_STATE_LOCK:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string/jumbo v0, "releaseCPUBoost CPU state lock"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/audio/DvfsHelper;->mCpuStateLock:Lcom/samsung/android/os/SemDvfsManager;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
