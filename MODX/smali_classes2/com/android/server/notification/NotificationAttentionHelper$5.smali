.class public final Lcom/android/server/notification/NotificationAttentionHelper$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 52
    .line 53
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v1, "state"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput-boolean p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_2
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUserPresent:Z

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    .line 88
    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const-string p2, "android.intent.action.USER_ADDED"

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_6

    .line 102
    .line 103
    const-string p2, "android.intent.action.USER_REMOVED"

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_6

    .line 110
    .line 111
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_6

    .line 118
    .line 119
    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_4

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 137
    .line 138
    iget-object p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 139
    .line 140
    const-string v0, "NotifAttentionHelper"

    .line 141
    .line 142
    const-string v1, "NotificationManagerService"

    .line 143
    .line 144
    if-nez p2, :cond_5

    .line 145
    .line 146
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 149
    .line 150
    iget-object v3, v2, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    const-string/jumbo v4, "noti_muted"

    .line 153
    .line 154
    .line 155
    filled-new-array {v4}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-object v2, v2, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 160
    .line 161
    invoke-direct {p2, v3, v1, v4, v2}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 165
    .line 166
    const-string/jumbo p1, "mNotiSemGoodCatchManager is created"

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_5
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 173
    .line 174
    if-nez p1, :cond_7

    .line 175
    .line 176
    new-instance p1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 179
    .line 180
    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    const-string/jumbo v2, "playback"

    .line 183
    .line 184
    .line 185
    filled-new-array {v2}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    .line 190
    .line 191
    invoke-direct {p1, p2, v1, v2, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 192
    .line 193
    .line 194
    sput-object p1, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 195
    .line 196
    const-string p0, "SemAudioGoodCatchManager is created"

    .line 197
    .line 198
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/server/notification/Flags;->crossAppPoliteNotifications()Z

    .line 208
    .line 209
    .line 210
    return-void
.end method
