.class public final Lcom/android/server/locksettings/LockSettingsService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const-string p1, "LockSettingsService.SDP"

    .line 20
    const-string/jumbo v0, "onReceive :: android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string/jumbo p1, "cred"

    .line 29
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    const-string/jumbo p1, "token"

    .line 35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    const-string/jumbo p1, "urid"

    .line 41
    const/4 v0, -0x1

    .line 42
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 47
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    const-string p0, "SyntheticPasswordDump_SDP"

    .line 54
    const-string p1, "Dump not supported for this device"

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    const-string v0, "android.intent.action.USER_ADDED"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    const-string v0, "android.intent.extra.user_handle"

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    move-result p0

    .line 79
    sget-boolean p1, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 81
    if-nez p1, :cond_5

    .line 83
    invoke-static {p0}, Landroid/security/AndroidKeyStoreMaintenance;->onUserAdded(I)I

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string p1, "android.intent.action.USER_STARTING"

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 102
    move-result p1

    .line 103
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 105
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_5

    .line 123
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 125
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 127
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p1

    .line 135
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_5

    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 147
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 149
    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 151
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 158
    move-result-object v0

    .line 159
    const-string/jumbo v2, "notification"

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/app/NotificationManager;

    .line 168
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 171
    move-result-object v0

    .line 172
    array-length v2, v0

    .line 173
    move v3, v1

    .line 174
    :goto_1
    if-ge v3, v2, :cond_3

    .line 176
    aget-object v4, v0, v3

    .line 178
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 181
    move-result v4

    .line 182
    const/16 v5, 0x9

    .line 184
    if-ne v4, v5, :cond_4

    .line 186
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 188
    const-string/jumbo v0, "locale changed"

    .line 191
    invoke-virtual {p0, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    .line 194
    goto :goto_0

    .line 195
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 197
    goto :goto_1

    .line 198
    :cond_5
    :goto_2
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
