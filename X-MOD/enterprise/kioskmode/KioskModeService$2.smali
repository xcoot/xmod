.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "android.intent.extra.user_handle"

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(IZ)Z

    .line 18
    return-void

    .line 19
    :pswitch_0
    const-string p1, "android.intent.extra.user_handle"

    .line 21
    const/16 v0, -0x2710

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result p1

    .line 27
    const-string p2, "KioskModeService"

    .line 29
    if-ne p1, v0, :cond_0

    .line 31
    const-string/jumbo v0, "can\'t get user id"

    .line 34
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 54
    move-result-object v1

    .line 55
    const-wide/16 v2, 0x80

    .line 57
    invoke-interface {v1, v0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, " is not installed at userId : "

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 88
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 94
    iget-object v1, v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, " is disabled by admin"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    if-eqz v0, :cond_3

    .line 131
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 133
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_3

    .line 143
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 148
    :cond_3
    :goto_0
    return-void

    .line 149
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    const-string v0, "android.intent.extra.user_handle"

    .line 159
    const/16 v1, -0x2710

    .line 161
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 164
    move-result p2

    .line 165
    const-string v0, "KioskModeService"

    .line 167
    if-ne p2, v1, :cond_4

    .line 169
    const-string/jumbo p0, "can\'t get user id"

    .line 172
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 178
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_7

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_7

    .line 190
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 193
    move-result-object p1

    .line 194
    const-wide/16 v2, 0x80

    .line 196
    invoke-interface {p1, v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 199
    move-result-object p1

    .line 200
    if-nez p1, :cond_5

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, " is not installed at userId : "

    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 227
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    goto :goto_1

    .line 231
    :catch_1
    :cond_5
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 233
    iget-object p1, p1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 235
    const/4 v2, 0x0

    .line 236
    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 239
    move-result p1

    .line 240
    if-nez p1, :cond_6

    .line 242
    const-string p1, " is disabled by admin"

    .line 244
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object p1

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 253
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 256
    goto :goto_1

    .line 257
    :cond_6
    iget-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 259
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen(I)Ljava/lang/String;

    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_7

    .line 269
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 271
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk(I)V

    .line 274
    :cond_7
    :goto_1
    return-void

    .line 275
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 278
    move-result-object p1

    .line 279
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_8

    .line 288
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 295
    move-result p1

    .line 296
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarSystemUI(I)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabledAsUser(I)Z

    .line 304
    move-result p2

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setKioskModeEnabledSystemUI(IZ)V

    .line 308
    :cond_8
    return-void

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
