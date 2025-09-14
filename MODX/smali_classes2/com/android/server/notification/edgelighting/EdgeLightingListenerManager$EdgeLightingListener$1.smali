.class public final Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const-string v1, "EdgeLightingListenerManager"

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 34
    .line 35
    const-string p1, "_onEdgeLightingStopped : RemoteException : "

    .line 36
    .line 37
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception p0

    .line 57
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 58
    .line 59
    const-string p1, "_onEdgeLightingStarted : RemoteException : "

    .line 60
    .line 61
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method
