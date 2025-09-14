.class public final synthetic Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p1

    .line 16
    check-cast p2, Landroid/util/ArraySet;

    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->writeNotifiedServiceList(ILandroid/util/ArraySet;)V

    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    check-cast p0, Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 40
    check-cast p2, Ljava/util/Set;

    .line 42
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 44
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 47
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 49
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    .line 54
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;

    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 62
    check-cast p2, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 67
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 69
    check-cast p2, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 76
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 79
    iput p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 81
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object p0

    .line 89
    const-string/jumbo v0, "notified_non_accessibility_category_services"

    .line 92
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 102
    new-instance p0, Landroid/util/ArraySet;

    .line 104
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 110
    const/16 v0, 0x3a

    .line 112
    invoke-direct {p1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 115
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 118
    new-instance p0, Landroid/util/ArraySet;

    .line 120
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p1

    .line 127
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/String;

    .line 139
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    :goto_1
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 152
    return-void

    .line 153
    :pswitch_1
    check-cast p0, Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 155
    check-cast p1, Ljava/lang/Integer;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    check-cast p2, Ljava/util/Set;

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    new-instance v0, Landroid/util/ArraySet;

    .line 167
    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 169
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 172
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 177
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 180
    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    .line 182
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    .line 187
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 192
    const/4 v2, 0x4

    .line 193
    invoke-direct {v1, v2, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 196
    invoke-static {v1, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 199
    move-result-object p1

    .line 200
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 202
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void

    .line 206
    :pswitch_2
    check-cast p0, Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 208
    check-cast p1, Ljava/lang/Integer;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 213
    move-result p1

    .line 214
    check-cast p2, Landroid/content/ComponentName;

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 218
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    .line 220
    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    .line 222
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 229
    return-void

    .line 230
    :pswitch_3
    check-cast p0, Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 232
    check-cast p1, Ljava/lang/Integer;

    .line 234
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 237
    move-result p1

    .line 238
    check-cast p2, Landroid/content/ComponentName;

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 246
    move-result-object v0

    .line 247
    const/16 v1, 0xa

    .line 249
    const/16 v2, 0x18

    .line 251
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 254
    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 256
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 259
    move-result-wide v2

    .line 260
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    .line 262
    sget-object v0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    .line 264
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 267
    move-result-object p0

    .line 268
    const/4 p1, 0x0

    .line 269
    invoke-virtual {v1, p1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 272
    return-void

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
