.class public final Lcom/android/server/connectivity/PacProxyService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/PacProxyService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onServiceDisconnected$com$android$server$connectivity$PacProxyService$3(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance p2, Lcom/android/server/connectivity/PacProxyService$3$1;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/android/server/connectivity/PacProxyService$3$1;-><init>(Lcom/android/server/connectivity/PacProxyService$2;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void

    .line 26
    :pswitch_0
    const-string p1, "Adding service com.android.net.IProxyService "

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_1
    const-string v1, "PacProxyService"

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :catch_1
    move-exception p1

    .line 58
    :try_start_2
    const-string v1, "PacProxyService"

    .line 59
    .line 60
    const-string v2, "Remote Exception"

    .line 61
    .line 62
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_1
    const-string/jumbo p1, "com.android.net.IProxyService"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p1, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    const-string p0, "PacProxyService"

    .line 86
    .line 87
    const-string p1, "No proxy service"

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object p2, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    const-string v1, "PacProxyService"

    .line 98
    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    const-string/jumbo p0, "setCurrentProxyScript: no proxy service"

    .line 102
    .line 103
    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    :try_start_3
    invoke-interface {p1, p2}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iput-object p2, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_2
    move-exception p0

    .line 115
    :try_start_4
    const-string p1, "Unable to set PAC file"

    .line 116
    .line 117
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    :goto_2
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    throw p0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    .line 16
    .line 17
    monitor-exit p1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
