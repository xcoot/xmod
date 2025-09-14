.class public final Lcom/android/server/accessibility/GestureWakeup$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/GestureWakeup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;->getUserID()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v2, :cond_5

    .line 21
    .line 22
    const-string/jumbo p1, "onSContextChanged() Approach, userId : "

    .line 23
    .line 24
    .line 25
    const-string v3, " , currentUser : "

    .line 26
    .line 27
    const-string v4, ", setting : "

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 34
    .line 35
    iget-object v4, v3, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v3, "GestureWakeup"

    .line 49
    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 54
    .line 55
    iget-object v4, p1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    if-ne v0, v1, :cond_5

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string/jumbo p1, "launchGestureWakeup()+"

    .line 71
    .line 72
    .line 73
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string/jumbo v0, "desktopmode"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    const-string/jumbo p0, "launchGestureWakeup() :: No action in Desktop mode+"

    .line 96
    .line 97
    .line 98
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const-string/jumbo v0, "phone"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x2

    .line 119
    if-eq v0, v1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-ne v0, v2, :cond_1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_2

    .line 141
    .line 142
    const-string p1, "..Cover is closed .."

    .line 143
    .line 144
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 153
    .line 154
    if-nez p1, :cond_3

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const-string/jumbo v0, "power"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/os/PowerManager;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 168
    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 170
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    const/4 v2, 0x7

    .line 176
    const-string v3, "WAKE_UP_REASON_GESTURE"

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    new-instance p1, Landroid/content/ContentValues;

    .line 196
    .line 197
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v0, "app_id"

    .line 201
    .line 202
    const-string/jumbo v1, "com.samsung.android.app.airwakeupview"

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo v0, "feature"

    .line 209
    .line 210
    .line 211
    const-string v1, "ACC3"

    .line 212
    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Landroid/content/Intent;

    .line 217
    .line 218
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    const-string/jumbo v1, "data"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    const-string/jumbo p1, "com.samsung.android.providers.context"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v0, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    .line 246
    .line 247
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_5
    :goto_1
    return-void
.end method
