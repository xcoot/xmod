.class public final Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 3
    const-string p1, "AS.SfxWorker"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 9
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 11
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 13
    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 16
    iput-object v2, v1, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 18
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method
