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

    .line 4
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/MasterClearReceiver;

    .line 6
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 8
    iput p3, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/MasterClearReceiver;

    .line 3
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 5
    iget v2, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 9
    sget v3, Lcom/android/server/MasterClearReceiver;->$r8$clinit:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v0, "Can\'t switch from current user %d, user will get removed when it is stopped."

    .line 16
    const-class v3, Landroid/os/UserManager;

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/os/UserManager;

    .line 24
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    .line 32
    move-result v4

    .line 33
    invoke-static {v4}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    .line 36
    move-result v4

    .line 37
    const-string v6, "MasterClear"

    .line 39
    if-nez v4, :cond_0

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 45
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    const-string v0, "Can\'t remove user %d"

    .line 51
    invoke-static {v6, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    goto/16 :goto_2

    .line 56
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

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

    .line 64
    invoke-static {v6, v7, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/16 v4, -0x2710

    .line 69
    :goto_0
    if-ne v4, v2, :cond_1

    .line 71
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_1

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v4

    .line 85
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    invoke-static {v6, v0, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    goto :goto_1

    .line 93
    :catch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v4

    .line 97
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 100
    move-result-object v4

    .line 101
    invoke-static {v6, v0, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Landroid/app/Notification$Builder;

    .line 112
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 114
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    const v2, 0x108008a

    .line 120
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 123
    move-result-object v0

    .line 124
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 132
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 135
    move-result-object v2

    .line 136
    new-instance v3, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;

    .line 138
    invoke-direct {v3, v1}, Lcom/android/server/MasterClearReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v4, "Core.WORK_PROFILE_DELETED_TITLE"

    .line 143
    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 154
    move-result-object v0

    .line 155
    const v2, 0x106001c

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 165
    move-result-object v0

    .line 166
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 168
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 171
    invoke-virtual {v2, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 182
    move-result-object p0

    .line 183
    const-class v0, Landroid/app/NotificationManager;

    .line 185
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/app/NotificationManager;

    .line 191
    const/16 v1, 0x3e9

    .line 193
    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 196
    :cond_2
    const/4 v5, 0x1

    .line 197
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 200
    move-result-object p0

    .line 201
    return-object p0
.end method
