.class public final Lcom/android/server/am/FreecessTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger$1;->this$0:Lcom/android/server/am/FreecessTrigger;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 14
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 16
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setScreenOnState(Z)V

    .line 21
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 23
    if-eqz p0, :cond_c

    .line 25
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 36
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 38
    const-string/jumbo p1, "screenOn"

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 47
    const-string/jumbo p1, "screenOn-widget"

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    .line 53
    :goto_0
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 55
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 57
    if-nez p1, :cond_1

    .line 59
    goto/16 :goto_2

    .line 61
    :cond_1
    const/16 p2, 0x18

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    goto/16 :goto_2

    .line 79
    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    const/4 v2, 0x0

    .line 86
    if-eqz v0, :cond_5

    .line 88
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 90
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 92
    invoke-virtual {p1, v2}, Lcom/android/server/am/FreecessController;->setScreenOnState(Z)V

    .line 95
    iget-boolean p1, p1, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 97
    if-eqz p1, :cond_3

    .line 99
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 101
    invoke-virtual {p1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 104
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FreecessTrigger$1;->this$0:Lcom/android/server/am/FreecessTrigger;

    .line 106
    iget-boolean p0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    .line 108
    if-nez p0, :cond_c

    .line 110
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 113
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 115
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 117
    if-nez p1, :cond_4

    .line 119
    goto/16 :goto_2

    .line 121
    :cond_4
    const/16 p2, 0x9

    .line 123
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 126
    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 129
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    goto/16 :goto_2

    .line 134
    :cond_5
    sget-object p0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_6

    .line 142
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 144
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 146
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 148
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 150
    if-eqz p0, :cond_c

    .line 152
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 154
    const-string p1, "CarMode"

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 159
    goto/16 :goto_2

    .line 161
    :cond_6
    const-string/jumbo p0, "sec.app.policy.UPDATE.ssrm_update_freecess"

    .line 164
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_8

    .line 170
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 172
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 174
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 176
    if-eqz p0, :cond_c

    .line 178
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 180
    iget-object p1, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 182
    if-nez p1, :cond_7

    .line 184
    goto :goto_2

    .line 185
    :cond_7
    const/16 p2, 0xc

    .line 187
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 190
    move-result-object p1

    .line 191
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 193
    const-wide/16 v0, 0x7530

    .line 195
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    goto :goto_2

    .line 199
    :cond_8
    const-string/jumbo p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result p0

    .line 206
    if-eqz p0, :cond_a

    .line 208
    const-string/jumbo p0, "reason"

    .line 211
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 214
    move-result p0

    .line 215
    const/4 p1, 0x3

    .line 216
    if-ne p0, p1, :cond_9

    .line 218
    goto :goto_1

    .line 219
    :cond_9
    move v1, v2

    .line 220
    :goto_1
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 222
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 224
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 226
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 228
    if-eqz p0, :cond_c

    .line 230
    if-eqz v1, :cond_c

    .line 232
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 234
    const-string p1, "EmeregencyMode"

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 239
    goto :goto_2

    .line 240
    :cond_a
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 242
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result p0

    .line 246
    if-nez p0, :cond_b

    .line 248
    const-string p0, "android.intent.action.REBOOT"

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_c

    .line 256
    :cond_b
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 258
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 260
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 262
    if-eqz p0, :cond_c

    .line 264
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 266
    const-string p1, "ShutDown"

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 271
    :cond_c
    :goto_2
    return-void
.end method
