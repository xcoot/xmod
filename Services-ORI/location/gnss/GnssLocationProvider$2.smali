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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
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

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "receive broadcast intent, action: "

    .line 12
    .line 13
    .line 14
    const-string v1, "GnssLocationProvider"

    .line 15
    .line 16
    invoke-static {v0, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_4

    .line 31
    .line 32
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 49
    .line 50
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {v2, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput p2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Get sim slot ID : "

    .line 71
    .line 72
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 76
    .line 77
    iget v2, v2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 78
    .line 79
    invoke-static {p2, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 83
    .line 84
    iget p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 85
    .line 86
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string/jumbo v2, "persist.sys.gps.dds.subId"

    .line 95
    .line 96
    .line 97
    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 101
    .line 102
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-direct {v2, v3, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->postWithWakeLockHeld(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 112
    .line 113
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    const/16 v2, 0x1e

    .line 120
    .line 121
    if-le p2, v2, :cond_3

    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 124
    .line 125
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 131
    .line 132
    iget-object p2, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mSecGpsSimHistoryDump:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "\n"

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->getTimestamp()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v3, ": sim slot changed to "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 159
    .line 160
    iget v3, v3, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const-string/jumbo p2, "received SIM related action: "

    .line 178
    .line 179
    .line 180
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    const-string/jumbo v2, "phone"

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    const-string/jumbo v3, "carrier_config"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 204
    .line 205
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_5

    .line 214
    .line 215
    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 228
    .line 229
    if-nez v4, :cond_a

    .line 230
    .line 231
    const-string v4, "SIM MCC/MNC is available: "

    .line 232
    .line 233
    invoke-static {v4, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    if-eqz v2, :cond_7

    .line 237
    .line 238
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_6

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 245
    .line 246
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

    .line 251
    .line 252
    const-string/jumbo v1, "gps.persist_lpp_mode_bool"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 256
    .line 257
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

    .line 262
    .line 263
    .line 264
    if-eqz p2, :cond_8

    .line 265
    .line 266
    invoke-virtual {v5, p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig(IZ)V

    .line 267
    .line 268
    .line 269
    iget-object p1, v5, Lcom/android/server/location/gnss/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 270
    .line 271
    const-string p2, "LPP_PROFILE"

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_9

    .line 278
    .line 279
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_8
    const-string p1, ""

    .line 284
    .line 285
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_a
    const-string p0, "SIM MCC/MNC is still not available"

    .line 293
    .line 294
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, p1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(IZ)V

    .line 298
    .line 299
    .line 300
    :goto_3
    return-void

    .line 301
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    if-ne p2, p1, :cond_b

    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 308
    .line 309
    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 313
    .line 314
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
