.class public final Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "MediaFocusControl"

    .line 3
    const-string v1, "Audio focus freezer died, exiting focus freeze for test"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerDeathHandler:Lcom/android/server/audio/MediaFocusControl$2;

    .line 19
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezeExemptUids:[I

    .line 21
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFreezerForTest:Landroid/os/IBinder;

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method
