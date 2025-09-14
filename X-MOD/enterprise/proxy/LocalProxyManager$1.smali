.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method private final onServiceDisconnected$com$android$server$enterprise$proxy$LocalProxyManager$1(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onServiceDisconnected$com$android$server$enterprise$proxy$LocalProxyManager$2(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string p1, "LocalProxyManager"

    .line 3
    iget v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->$r8$classId:I

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 10
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    .line 13
    move-result-object p2

    .line 14
    iput-object p2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 18
    iget-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 20
    if-eqz p2, :cond_3

    .line 22
    sget-object p2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 24
    check-cast p2, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget-object p2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 35
    check-cast p2, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p2

    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "Execute pending operation: "

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    const-string/jumbo v1, "clearCache"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 82
    const-string/jumbo v1, "setProxyCredentials"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsResponse:Landroid/os/Bundle;

    .line 94
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mLastCredentialsCallback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 96
    const-string v3, "Set proxy credentials callback to proxy server"

    .line 98
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v3, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;

    .line 103
    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    .line 106
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 109
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 111
    check-cast v1, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 120
    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    .line 122
    check-cast v1, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    :goto_1
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 131
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    .line 134
    move-result-object p2

    .line 135
    iput-object p2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 137
    iget-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 139
    iget-object p2, p2, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    .line 141
    if-eqz p2, :cond_4

    .line 143
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;

    .line 145
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V

    .line 148
    invoke-interface {p2, v0}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception p0

    .line 153
    const-string p2, "Failed to get proxy callback instance"

    .line 155
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    :cond_4
    :goto_2
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->$r8$classId:I

    .line 3
    return-void
.end method
