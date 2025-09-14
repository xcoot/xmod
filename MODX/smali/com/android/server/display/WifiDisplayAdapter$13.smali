.class public final Lcom/android/server/display/WifiDisplayAdapter$13;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "SEM_PRESENTATION_STOP displayID : "

    .line 3
    const-string v0, "SEM_PRESENTATION_START displayID : "

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android.server.display.wfd.DISCONNECT"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 19
    iget-object v2, p1, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 27
    monitor-exit v2

    .line 28
    goto/16 :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_0
    const-string/jumbo v2, "com.samsung.intent.action.SEC_PRESENTATION_START"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, -0x1

    .line 42
    if-eqz v2, :cond_1

    .line 44
    :try_start_1
    const-string/jumbo p1, "ownerPackageName"

    .line 47
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string/jumbo v1, "displayID"

    .line 54
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    move-result p2

    .line 58
    const-string v1, "WifiDisplayAdapter"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, ", PackageName : "

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-le p2, v4, :cond_3

    .line 85
    if-eq p2, v3, :cond_3

    .line 87
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$10;

    .line 94
    invoke-direct {v0, p0, p2, v3, p1}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    const-string p1, "WifiDisplayAdapter"

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "SEM_PRESENTATION_START Error : "

    .line 111
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 138
    :try_start_2
    const-string/jumbo v0, "ownerPackageName"

    .line 141
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    const-string/jumbo v1, "displayID"

    .line 148
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 151
    move-result p2

    .line 152
    const-string v1, "WifiDisplayAdapter"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string p1, ", PackageName : "

    .line 164
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-le p2, v4, :cond_3

    .line 179
    if-eq p2, v3, :cond_3

    .line 181
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$10;

    .line 188
    const/4 v1, 0x0

    .line 189
    invoke-direct {p1, p0, p2, v1, v0}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 194
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    goto :goto_0

    .line 198
    :catch_1
    move-exception p0

    .line 199
    const-string p1, "WifiDisplayAdapter"

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    const-string v0, "SEM_PRESENTATION_STOP Error : "

    .line 205
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 212
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p0

    .line 219
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    goto :goto_0

    .line 223
    :cond_2
    const-string p0, "android.intent.action.USER_SWITCHED"

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    :goto_0
    return-void
.end method
