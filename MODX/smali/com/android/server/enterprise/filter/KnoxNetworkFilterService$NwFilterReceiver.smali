.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_9

    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    const-string/jumbo v2, "new_install_or_update"

    .line 25
    const-string/jumbo v3, "package"

    .line 28
    const-string/jumbo v4, "uid"

    .line 31
    const-string v5, "android.intent.extra.UID"

    .line 33
    const-string v6, "android.intent.extra.REPLACING"

    .line 35
    const/4 v7, -0x1

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 49
    move-result-object v9

    .line 50
    :cond_0
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 53
    move-result p1

    .line 54
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    move-result p2

    .line 58
    if-le p2, v7, :cond_9

    .line 60
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 71
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 75
    goto/16 :goto_0

    .line 77
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 94
    move-result-object v9

    .line 95
    :cond_2
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 98
    move-result p1

    .line 99
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 102
    move-result p2

    .line 103
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 114
    const/4 p1, 0x2

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 131
    move-result-object p1

    .line 132
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 134
    const/4 p2, 0x3

    .line 135
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 138
    goto :goto_0

    .line 139
    :cond_4
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_5

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 150
    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 153
    const/4 p2, 0x4

    .line 154
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 169
    move-result-object p1

    .line 170
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 172
    const/4 p2, 0x5

    .line 173
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 176
    goto :goto_0

    .line 177
    :cond_6
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_7

    .line 185
    const-string/jumbo p1, "state"

    .line 188
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_9

    .line 194
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 196
    const/4 p1, 0x6

    .line 197
    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 200
    goto :goto_0

    .line 201
    :cond_7
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_8

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 213
    move-result-object p1

    .line 214
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 216
    const/4 p2, 0x7

    .line 217
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 220
    goto :goto_0

    .line 221
    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_9

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 232
    move-result-object p1

    .line 233
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    .line 235
    const/16 p2, 0xc

    .line 237
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V

    .line 240
    :cond_9
    :goto_0
    return-void
.end method
