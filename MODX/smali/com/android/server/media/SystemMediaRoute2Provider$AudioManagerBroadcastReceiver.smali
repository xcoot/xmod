.class public final Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 16
    const-string/jumbo p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 19
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    move-result p1

    .line 23
    const-string/jumbo v2, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 26
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne v2, v3, :cond_3

    .line 33
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 35
    if-ne p1, v3, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    iget-object p1, v2, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;

    .line 43
    const-string v3, "MUSIC_SHARE"

    .line 45
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-string/jumbo p1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 65
    const-string/jumbo p1, "state"

    .line 68
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    move-result p1

    .line 72
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 74
    if-ne p1, v0, :cond_2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move v0, v1

    .line 78
    :goto_1
    iget-object p1, v2, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;

    .line 82
    const-string v3, "SCREEN_MIRRORING"

    .line 84
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Z)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_3
    :goto_2
    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_4

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_4

    .line 114
    return-void

    .line 115
    :cond_4
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 117
    const/4 v0, -0x1

    .line 118
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 121
    move-result p1

    .line 122
    const/4 p2, 0x3

    .line 123
    if-eq p1, p2, :cond_5

    .line 125
    return-void

    .line 126
    :cond_5
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_6

    .line 132
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 134
    iget-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance p2, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;

    .line 138
    const/4 v0, 0x3

    .line 139
    invoke-direct {p2, p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;I)V

    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    goto :goto_3

    .line 146
    :cond_6
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 151
    :goto_3
    return-void
.end method
