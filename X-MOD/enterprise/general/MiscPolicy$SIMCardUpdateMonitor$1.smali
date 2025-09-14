.class public final Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "SIMCardUpdateMonitor "

    .line 8
    const-string v0, " SIM Card State :"

    .line 10
    const-string v1, " state Extra is : "

    .line 12
    const-string v2, " action is : "

    .line 14
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 46
    const-string/jumbo v2, "ss"

    .line 49
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v1, "ABSENT"

    .line 75
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 82
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.SIM_CHANGE_INFO"

    .line 85
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.SIM_CARD_CHANGED"

    .line 88
    const-string v5, ""

    .line 90
    const-string v6, "SimChangeTime"

    .line 92
    const-string v7, "SimChangeOperation"

    .line 94
    const-string v8, "/data/system/SimCard.dat"

    .line 96
    if-eqz v1, :cond_0

    .line 98
    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 110
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->name()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 121
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v0

    .line 133
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    invoke-static {v6, p2, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string p2, "1"

    .line 148
    invoke-static {v7, p2, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p2, Ljava/io/File;

    .line 153
    invoke-direct {p2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    move-result-object p2

    .line 160
    const/16 v0, 0x1a0

    .line 162
    const/4 v1, -0x1

    .line 163
    invoke-static {p2, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 166
    new-instance p2, Landroid/content/Intent;

    .line 168
    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 173
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 175
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 180
    move-result v4

    .line 181
    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 193
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 195
    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 198
    goto/16 :goto_2

    .line 200
    :catch_0
    move-exception p2

    .line 201
    goto :goto_1

    .line 202
    :cond_0
    const-string v0, "LOADED"

    .line 204
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_2

    .line 210
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    const-string p2, " SIM Card State : LOADED"

    .line 217
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 222
    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->-$$Nest$msaveSimState(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    move-result-wide v0

    .line 234
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p2

    .line 244
    invoke-static {v6, p2, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string p2, "PreviousSimSerialNumber"

    .line 249
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    move-result-object p2

    .line 253
    const-string v0, "CurrentSimSerialNumber"

    .line 255
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 264
    move-result p2

    .line 265
    if-nez p2, :cond_1

    .line 267
    const-string p2, "2"

    .line 269
    invoke-static {v7, p2, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    goto :goto_0

    .line 273
    :cond_1
    const-string p2, "3"

    .line 275
    invoke-static {v7, p2, v8}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 280
    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 285
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 287
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 292
    move-result v4

    .line 293
    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 305
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 307
    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    goto :goto_2

    .line 311
    :goto_1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "SIMCardBroadcastReceiver Ex:"

    .line 320
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object p0

    .line 330
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    :goto_2
    return-void

    .line 334
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 337
    move-result-object p1

    .line 338
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_3

    .line 347
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 350
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 354
    move-result p1

    .line 355
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;->this$1:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 357
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 359
    sget-object p2, Lcom/android/server/enterprise/general/MiscPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor$2(I)V

    .line 364
    :cond_3
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
