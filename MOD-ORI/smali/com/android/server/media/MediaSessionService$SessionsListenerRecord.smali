.class public final Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final listener:Landroid/media/session/IActiveSessionsListener;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->componentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->pid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->uid:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
