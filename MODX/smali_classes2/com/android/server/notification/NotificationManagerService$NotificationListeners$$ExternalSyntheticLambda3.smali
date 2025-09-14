.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, v0

    .line 13
    check-cast v3, Landroid/service/notification/StatusBarNotification;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, v0

    .line 23
    check-cast v5, Landroid/service/notification/NotificationStats;

    .line 24
    .line 25
    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    .line 26
    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Landroid/os/UserHandle;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 46
    .line 47
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-boolean v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 53
    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v6, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(ILjava/lang/String;Ljava/util/Set;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    :cond_0
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 77
    .line 78
    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 79
    .line 80
    :try_start_0
    invoke-interface {v5, v2, v3, v4, p0}, Landroid/service/notification/INotificationListener;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v3, "unable to notify listener (channel group changed): "

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    return-void

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, Landroid/os/UserHandle;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Landroid/app/NotificationChannel;

    .line 121
    .line 122
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda3;->f$5:I

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-boolean v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 128
    .line 129
    if-nez v5, :cond_4

    .line 130
    .line 131
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    iget-object v6, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 143
    .line 144
    const/4 v8, 0x0

    .line 145
    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(ILjava/lang/String;Ljava/util/Set;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_4

    .line 150
    .line 151
    iget-object v6, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 152
    .line 153
    iget-object v7, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v7

    .line 156
    :try_start_1
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    if-nez v6, :cond_2

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v5, v6}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_3

    .line 170
    .line 171
    const/4 v8, 0x1

    .line 172
    :cond_3
    :goto_1
    monitor-exit v7

    .line 173
    if-eqz v8, :cond_5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception p0

    .line 177
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    throw p0

    .line 179
    :cond_4
    :goto_2
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 180
    .line 181
    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 182
    .line 183
    :try_start_2
    invoke-interface {v5, v2, v3, v4, p0}, Landroid/service/notification/INotificationListener;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_1
    move-exception p0

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string/jumbo v3, "unable to notify listener (channel changed): "

    .line 191
    .line 192
    .line 193
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_3
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
