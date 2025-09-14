.class public final Lcom/android/server/app/GameManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;

.field public final synthetic val$listener:Ljava/lang/Object;

.field public final synthetic val$listenerBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameModeListener;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/app/IGameStateListener;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/app/GameManagerService$1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/app/IGameStateListener;

    .line 12
    .line 13
    sget v3, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 14
    .line 15
    iget-object v3, v1, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    .line 25
    .line 26
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0

    .line 33
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$1;->val$listener:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/app/IGameModeListener;

    .line 38
    .line 39
    sget v3, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/app/GameManagerService;->mGameModeListenerLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v3

    .line 44
    :try_start_2
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameModeListeners:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->val$listenerBinder:Landroid/os/IBinder;

    .line 51
    .line 52
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    throw p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
