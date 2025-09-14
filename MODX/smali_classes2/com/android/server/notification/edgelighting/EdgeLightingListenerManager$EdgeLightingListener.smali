.class public final Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public isEdgeLighting:Z

.field public final mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 18
    .line 19
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    .line 20
    .line 21
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 31
    .line 32
    const-string p0, "EdgeLightingListenerManager"

    .line 33
    .line 34
    const-string p1, "EdgeLightingListener : linkToDeath error"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "EdgeLightingListenerManager"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "binderDied : binder = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "binderDied."

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  [Listener: component:("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ") pid:("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ") uid:("

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    .line 33
    .line 34
    const-string v1, ")]"

    .line 35
    .line 36
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
