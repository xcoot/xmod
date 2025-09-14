.class public final synthetic Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService$SessionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 13
    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper;->mIsAppOpPermitted:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->updateAllRecognitionsLocked()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    :goto_0
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method
