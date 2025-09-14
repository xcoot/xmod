.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 5
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 8
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 10
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 25
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 27
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;->val$user:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    throw p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
