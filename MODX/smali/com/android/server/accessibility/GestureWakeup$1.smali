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

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;->getUserID()I

    .line 12
    move-result v0

    .line 13
    iget-object p1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne p1, v2, :cond_5

    .line 22
    const-string/jumbo p1, "onSContextChanged() Approach, userId : "

    .line 25
    const-string v3, " , currentUser : "

    .line 27
    const-string v4, ", setting : "

    .line 29
    invoke-static {v0, v1, p1, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p1

    .line 33
    iget-object v3, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 35
    iget-object v4, v3, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 40
    move-result v3

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v3, "GestureWakeup"

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 55
    iget-object v4, p1, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1, v4}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 63
    if-ne v0, v1, :cond_5

    .line 65
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-string/jumbo p1, "launchGestureWakeup()+"

    .line 73
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 78
    const-string/jumbo v0, "desktopmode"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 87
    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo p0, "launchGestureWakeup() :: No action in Desktop mode+"

    .line 98
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    goto/16 :goto_1

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 105
    const-string/jumbo v0, "phone"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x2

    .line 119
    if-eq v0, v1, :cond_4

    .line 121
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 124
    move-result v0

    .line 125
    if-ne v0, v2, :cond_1

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_2

    .line 142
    const-string p1, "..Cover is closed .."

    .line 144
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 154
    if-nez p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 158
    const-string/jumbo v0, "power"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/os/PowerManager;

    .line 167
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup;->mPM:Landroid/os/PowerManager;

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 174
    move-result-wide v0

    .line 175
    const/4 v2, 0x7

    .line 176
    const-string v3, "WAKE_UP_REASON_GESTURE"

    .line 178
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 186
    move-result-object p1

    .line 187
    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 189
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_5

    .line 195
    new-instance p1, Landroid/content/ContentValues;

    .line 197
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 200
    const-string v0, "app_id"

    .line 202
    const-string/jumbo v1, "com.samsung.android.app.airwakeupview"

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "feature"

    .line 211
    const-string v1, "ACC3"

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    .line 218
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v1, "data"

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    const-string/jumbo p1, "com.samsung.android.providers.context"

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    goto :goto_1

    .line 243
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 245
    const-string v0, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    .line 247
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 253
    move-result p1

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p0

    .line 261
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_5
    :goto_1
    return-void
.end method
