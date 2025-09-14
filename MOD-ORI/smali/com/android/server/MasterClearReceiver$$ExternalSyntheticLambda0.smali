.class public final synthetic Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/MasterClearReceiver;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/MasterClearReceiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/MasterClearReceiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    sget v3, Lcom/android/server/MasterClearReceiver;->$r8$clinit:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "Can\'t switch from current user %d, user will get removed when it is stopped."

    .line 15
    .line 16
    const-class v3, Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/os/UserManager;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {v4}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const-string v6, "MasterClear"

    .line 38
    .line 39
    if-nez v4, :cond_0

    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "Can\'t remove user %d"

    .line 50
    .line 51
    invoke-static {v6, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 57
    .line 58
    .line 59
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v4

    .line 62
    const-string v7, "Can\'t get current user"

    .line 63
    .line 64
    invoke-static {v6, v7, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    const/16 v4, -0x2710

    .line 68
    .line 69
    :goto_0
    if-ne v4, v2, :cond_1

    .line 70
    .line 71
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_1

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v6, v0, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v6, v0, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    new-instance v0, Landroid/app/Notification$Builder;

    .line 111
    .line 112
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const v2, 0x108008a

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    new-instance v3, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;

    .line 137
    .line 138
    invoke-direct {v3, v1}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    const-string v4, "Core.WORK_PROFILE_DELETED_TITLE"

    .line 142
    .line 143
    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const v2, 0x106001c

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 167
    .line 168
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-class v0, Landroid/app/NotificationManager;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/app/NotificationManager;

    .line 190
    .line 191
    const/16 v1, 0x3e9

    .line 192
    .line 193
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 194
    .line 195
    .line 196
    :cond_2
    const/4 v5, 0x1

    .line 197
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0
.end method
