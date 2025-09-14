.class public final Lcom/android/server/audio/SystemServerAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SystemServerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.USER_STARTED"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    const-string v0, "android.intent.extra.user_handle"

    .line 15
    const/16 v1, -0x2710

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    move-result p2

    .line 21
    if-ne p2, v1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    const-class v0, Landroid/os/UserManager;

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/os/UserManager;

    .line 32
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    .line 41
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 49
    move-result-object v5

    .line 50
    new-instance v6, Landroid/content/IntentFilter;

    .line 52
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 54
    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    move-object v3, p1

    .line 61
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 67
    invoke-static {v1, p2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter$1;->this$0:Lcom/android/server/audio/SystemServerAdapter;

    .line 72
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Landroid/content/IntentFilter;

    .line 83
    const-string p0, "android.intent.action.HEADSET_PLUG"

    .line 85
    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v2, 0x0

    .line 91
    move-object v1, p1

    .line 92
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_3

    .line 98
    invoke-static {p0, p2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 101
    :cond_3
    return-void
.end method
