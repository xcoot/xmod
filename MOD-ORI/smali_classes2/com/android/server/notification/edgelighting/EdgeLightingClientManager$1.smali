.class public final Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "EdgeLightingClientManager"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    iget p0, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq p0, v2, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq p0, v3, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    if-eq p0, v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 28
    .line 29
    if-ne p0, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    invoke-interface {p0, v2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 50
    .line 51
    const-string/jumbo p1, "onScreenChanged : RemoteException : "

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    instance-of v2, p0, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    check-cast p0, Ljava/lang/String;

    .line 65
    .line 66
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :try_start_1
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p0

    .line 84
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 85
    .line 86
    const-string/jumbo p1, "onStopEdgeLighting : RemoteException : "

    .line 87
    .line 88
    .line 89
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    instance-of v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 104
    .line 105
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    :try_start_2
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-interface {v0, v2, p0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_2
    move-exception p0

    .line 123
    sget-boolean p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 124
    .line 125
    const-string/jumbo p1, "onStartEdgeLighting : RemoteException : "

    .line 126
    .line 127
    .line 128
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_1
    return-void

    .line 132
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    .line 134
    .line 135
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 136
    .line 137
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, Landroid/util/Pair;

    .line 140
    .line 141
    new-instance v2, Landroid/content/Intent;

    .line 142
    .line 143
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v3, "com.android.systemui"

    .line 147
    .line 148
    const-string v4, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 149
    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Ljava/lang/String;

    .line 156
    .line 157
    const-string/jumbo v4, "packagename"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v3, Landroid/os/Parcelable;

    .line 166
    .line 167
    const-string v4, "info"

    .line 168
    .line 169
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string/jumbo v3, "reason"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 179
    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string/jumbo v4, "startService packagename="

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p1, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p1, ",reason="

    .line 196
    .line 197
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :try_start_3
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 211
    .line 212
    iget-object p0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 215
    .line 216
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catch_3
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    :goto_2
    return-void

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
