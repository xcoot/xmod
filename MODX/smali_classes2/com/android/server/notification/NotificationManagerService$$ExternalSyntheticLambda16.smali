.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;ILjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 20
    .line 21
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 22
    .line 23
    :try_start_0
    invoke-interface {v2, p0}, Landroid/service/notification/INotificationListener;->onPanelRevealed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v3, "unable to notify assistant (panel revealed): "

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    .line 52
    .line 53
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-class v2, Landroid/os/PowerManager;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    const-string v4, "EDGELIGHTING:"

    .line 78
    .line 79
    invoke-static {v4, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$14;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 92
    .line 93
    move-object v6, v1

    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    .line 97
    .line 98
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 99
    .line 100
    iget-object p0, v2, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 101
    .line 102
    invoke-virtual {p0, v8}, Lcom/android/server/pm/UserManagerInternal;->isUserInitialized(I)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    iget-object p0, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 110
    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .line 113
    invoke-virtual {p0, v6, v0, v1, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const/4 v0, -0x1

    .line 118
    if-ne p0, v0, :cond_1

    .line 119
    .line 120
    const-string p0, "No uid found for "

    .line 121
    .line 122
    const-string v0, ", "

    .line 123
    .line 124
    const-string v1, "!"

    .line 125
    .line 126
    invoke-static {v8, p0, v6, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v0, "NotificationService"

    .line 131
    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-nez p0, :cond_2

    .line 143
    .line 144
    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 145
    .line 146
    sget v4, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 147
    .line 148
    const/4 v9, 0x7

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_1
    return-void

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 156
    .line 157
    move-object v1, v0

    .line 158
    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 163
    .line 164
    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;->f$2:I

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 182
    .line 183
    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 184
    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/16 v10, 0x19

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
