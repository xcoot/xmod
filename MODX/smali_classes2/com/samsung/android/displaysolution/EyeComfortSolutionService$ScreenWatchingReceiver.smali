.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

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
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "action  :  "

    .line 12
    .line 13
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v2, "EyeComfortSolutionService"

    .line 24
    .line 25
    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_d

    .line 35
    .line 36
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v2, 0x2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    iput-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 59
    .line 60
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 80
    .line 81
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    .line 82
    .line 83
    int-to-long v3, p0

    .line 84
    add-long/2addr v0, v3

    .line 85
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void

    .line 89
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 99
    .line 100
    iput-boolean v0, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 101
    .line 102
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 107
    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 111
    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 122
    .line 123
    const/4 p2, 0x3

    .line 124
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 130
    .line 131
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    .line 133
    .line 134
    :cond_3
    return-void

    .line 135
    :cond_4
    const-string p2, "android.intent.action.USER_PRESENT"

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_5

    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    const-string p2, "android.intent.action.TIME_TICK"

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    const/4 v1, 0x4

    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 154
    .line 155
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 156
    .line 157
    if-eqz p2, :cond_6

    .line 158
    .line 159
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 160
    .line 161
    if-eqz p2, :cond_6

    .line 162
    .line 163
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 169
    .line 170
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    .line 174
    .line 175
    :cond_6
    return-void

    .line 176
    :cond_7
    const-string p2, "android.intent.action.TIME_SET"

    .line 177
    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_9

    .line 183
    .line 184
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 185
    .line 186
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 187
    .line 188
    if-eqz p2, :cond_8

    .line 189
    .line 190
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 191
    .line 192
    if-eqz p2, :cond_8

    .line 193
    .line 194
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 202
    .line 203
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    .line 205
    .line 206
    :cond_8
    return-void

    .line 207
    :cond_9
    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_b

    .line 214
    .line 215
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 216
    .line 217
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 218
    .line 219
    if-eqz p2, :cond_a

    .line 220
    .line 221
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 222
    .line 223
    if-eqz p2, :cond_a

    .line 224
    .line 225
    iget-object p1, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 226
    .line 227
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 231
    .line 232
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    .line 236
    .line 237
    :cond_a
    return-void

    .line 238
    :cond_b
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_c

    .line 245
    .line 246
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 247
    .line 248
    iget-object p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    const-string v1, "HqmManagerService"

    .line 251
    .line 252
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    check-cast p2, Landroid/os/SemHqmManager;

    .line 257
    .line 258
    iput-object p2, p1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 259
    .line 260
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 261
    .line 262
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 263
    .line 264
    if-eqz p0, :cond_c

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    :cond_c
    return-void

    .line 273
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 274
    .line 275
    invoke-static {p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 276
    .line 277
    .line 278
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    return-void
.end method
