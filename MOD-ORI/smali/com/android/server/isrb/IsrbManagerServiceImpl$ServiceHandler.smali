.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "IsrbManagerServiceImpl"

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 7
    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    const-string/jumbo v2, "persist.sys.enable_isrb"

    .line 11
    .line 12
    .line 13
    const-string v3, "Set ISRB Disabled"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-eq p1, v4, :cond_5

    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    if-eq p1, v5, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    const/4 v3, 0x3

    .line 23
    if-eq p1, v3, :cond_1

    .line 24
    .line 25
    if-eq p1, v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    const-string p1, "SetupwizardFinished, show ISRB alert."

    .line 30
    .line 31
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "com.samsung.isrb.SYSTEM_UPDATE"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;-><init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mReceiver:Lcom/android/server/isrb/IsrbManagerServiceImpl$1;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    const-string p1, "Timer is running, waiting for SetupwizardFinished."

    .line 68
    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string/jumbo v1, "device_provisioned"

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eq p1, v4, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string/jumbo v1, "user_setup_complete"

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-ne p1, v4, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 104
    .line 105
    const-wide/16 v0, 0x7530

    .line 106
    .line 107
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mHandler:Lcom/android/server/isrb/IsrbManagerServiceImpl$ServiceHandler;

    .line 112
    .line 113
    const-wide/16 v0, 0x3a98

    .line 114
    .line 115
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const/4 p1, 0x7

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string/jumbo v0, "persist.sys.rescue_level"

    .line 138
    .line 139
    .line 140
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :try_start_0
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    const-string p1, "RescueParty"

    .line 146
    .line 147
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catchall_0
    const-string p0, "RecoverySystem Exception"

    .line 152
    .line 153
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    const-string/jumbo p0, "sys.isrblevel.callreboot"

    .line 161
    .line 162
    .line 163
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_7

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    const-string p1, "Fake time Check it in Handler thread"

    .line 178
    .line 179
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const-string/jumbo p1, "ro.build.date.utc"

    .line 183
    .line 184
    .line 185
    const-wide/32 v1, 0x5e0b7080

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    const-wide/16 v3, 0x3e8

    .line 193
    .line 194
    mul-long/2addr v1, v3

    .line 195
    iput-wide v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mBuildtime:J

    .line 196
    .line 197
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string v1, "auto_time"

    .line 207
    .line 208
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p1, "auto_time_zone"

    .line 218
    .line 219
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    .line 221
    .line 222
    :cond_7
    :goto_1
    return-void
.end method
