.class public final Lcom/android/server/location/gnss/GnssLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, -0x1

    .line 2
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->$r8$classId:I

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "receive broadcast intent, action: "

    .line 14
    const-string v1, "GnssLocationProvider"

    .line 16
    invoke-static {v0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    if-nez p2, :cond_0

    .line 21
    goto/16 :goto_3

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_4

    .line 32
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 40
    goto/16 :goto_3

    .line 42
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 45
    move-result p2

    .line 46
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 48
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 50
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result p2

    .line 54
    invoke-virtual {v2, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 62
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 65
    move-result p2

    .line 66
    iput p2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    const-string v2, "Get sim slot ID : "

    .line 72
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 77
    iget v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 79
    invoke-static {p2, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 82
    :cond_2
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 84
    iget p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 86
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 89
    move-result p2

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    const-string/jumbo v2, "persist.sys.gps.dds.subId"

    .line 97
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 102
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-direct {v2, v3, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p2, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 111
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 113
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result p2

    .line 119
    const/16 v2, 0x1e

    .line 121
    if-le p2, v2, :cond_3

    .line 123
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 125
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_3
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 132
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "\n"

    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v3, ": sim slot changed to "

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 160
    iget v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    const-string/jumbo p2, "received SIM related action: "

    .line 180
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 185
    const-string/jumbo v2, "phone"

    .line 188
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 194
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 196
    const-string/jumbo v3, "carrier_config"

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 205
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 208
    move-result v3

    .line 209
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_5

    .line 215
    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 218
    move-result-object p2

    .line 219
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 222
    move-result-object p2

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    move-result v4

    .line 227
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 229
    if-nez v4, :cond_a

    .line 231
    const-string v4, "SIM MCC/MNC is available: "

    .line 233
    invoke-static {v4, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz v2, :cond_7

    .line 238
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_6

    .line 244
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 247
    move-result-object p2

    .line 248
    goto :goto_0

    .line 249
    :cond_6
    const/4 p2, 0x0

    .line 250
    :goto_0
    if-eqz p2, :cond_7

    .line 252
    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    .line 255
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 258
    move-result p2

    .line 259
    goto :goto_1

    .line 260
    :cond_7
    move p2, v0

    .line 261
    :goto_1
    const-string/jumbo v1, "persist.sys.gps.lpp"

    .line 264
    if-eqz p2, :cond_8

    .line 266
    invoke-virtual {v5, p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(IZ)V

    .line 269
    iget-object p1, v5, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 271
    const-string p2, "LPP_PROFILE"

    .line 273
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_9

    .line 279
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    goto :goto_2

    .line 283
    :cond_8
    const-string p1, ""

    .line 285
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 291
    goto :goto_3

    .line 292
    :cond_a
    const-string p0, "SIM MCC/MNC is still not available"

    .line 294
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v5, p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(IZ)V

    .line 300
    :goto_3
    return-void

    .line 301
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 304
    move-result p2

    .line 305
    if-ne p2, p1, :cond_b

    .line 307
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 309
    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 315
    :cond_b
    return-void

    .line 316
    nop

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
