.class public final Lcom/android/server/am/PreBootBroadcaster$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController$Injector$1;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$Injector$1;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/UserController$Injector$1;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/UserController$Injector$1;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 7
    const-class v1, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/NotificationManager;

    .line 15
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 17
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    const/16 v4, 0xd

    .line 23
    const-string v5, "PreBootBroadcaster"

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eq p1, v6, :cond_1

    .line 28
    const/4 v0, 0x2

    .line 29
    if-eq p1, v0, :cond_0

    .line 31
    goto/16 :goto_1

    .line 33
    :cond_0
    iget p0, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 35
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, v5, v4, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const p1, 0x10401c1

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 49
    move-result-object p1

    .line 50
    new-instance v7, Landroid/content/Intent;

    .line 52
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 55
    const-string/jumbo v8, "com.android.settings"

    .line 58
    const-string/jumbo v9, "com.android.settings.HelpTrampoline"

    .line 61
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v8, "android.intent.extra.TEXT"

    .line 66
    const-string/jumbo v9, "help_url_upgrading"

    .line 69
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    move-result-object v8

    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 80
    move-result-object v8

    .line 81
    if-eqz v8, :cond_2

    .line 83
    const/high16 v8, 0x4000000

    .line 85
    invoke-static {v0, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 88
    move-result-object v7

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 v7, 0x0

    .line 91
    :goto_0
    new-instance v8, Landroid/app/Notification$Builder;

    .line 93
    iget-object v10, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 95
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 97
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    .line 99
    invoke-direct {v8, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    const v10, 0x1080b7e

    .line 105
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 108
    move-result-object v8

    .line 109
    const-wide/16 v10, 0x0

    .line 111
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 122
    move-result-object v8

    .line 123
    const v10, 0x106001c

    .line 126
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    .line 129
    move-result v0

    .line 130
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v2, v3, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 153
    move-result-object p1

    .line 154
    iget p0, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 156
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {v1, v5, v4, p1, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 163
    :goto_1
    return-void
.end method
