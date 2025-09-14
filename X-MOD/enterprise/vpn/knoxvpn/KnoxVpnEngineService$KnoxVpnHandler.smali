.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "KnoxVpnEngineService"

    .line 7
    const-string/jumbo v3, "vpn handle : Message received"

    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    check-cast v2, Landroid/os/Bundle;

    .line 17
    iget v3, v1, Landroid/os/Message;->what:I

    .line 19
    const/16 v4, -0x2710

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    packed-switch v3, :pswitch_data_0

    .line 26
    :pswitch_0
    goto/16 :goto_10

    .line 28
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    const-string v0, "android.intent.extra.UID"

    .line 33
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    move-result v3

    .line 52
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 63
    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_1

    .line 71
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 74
    move-result v4

    .line 75
    if-lez v4, :cond_1

    .line 77
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 79
    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v4

    .line 89
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_1

    .line 95
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 101
    if-eqz v5, :cond_0

    .line 103
    iget-object v6, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    .line 105
    if-eqz v6, :cond_0

    .line 107
    iget-object v6, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    .line 109
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_0

    .line 115
    iget v4, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 117
    const-string v5, "KnoxVpnEngineService"

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string/jumbo v7, "binding to vpn client after end-user cleared the data for client "

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, " with uid "

    .line 135
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->bindKnoxVpnInterface(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    monitor-exit v1

    .line 155
    goto/16 :goto_10

    .line 157
    :goto_1
    monitor-exit v1

    .line 158
    throw v0

    .line 159
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 161
    monitor-enter v1

    .line 162
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 164
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_5

    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 175
    move-result v0

    .line 176
    if-lez v0, :cond_5

    .line 178
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 180
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 189
    move-result-object v0

    .line 190
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_5

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    move-result-object v3

    .line 200
    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 202
    iget v4, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    .line 204
    if-ne v4, v6, :cond_2

    .line 206
    iget-object v0, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceName:Ljava/lang/String;

    .line 208
    const-string/jumbo v4, "bundle_usb_status"

    .line 211
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 214
    move-result v2

    .line 215
    if-nez v2, :cond_3

    .line 217
    goto :goto_3

    .line 218
    :cond_3
    if-ne v2, v6, :cond_5

    .line 220
    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_4

    .line 228
    iget-object v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 230
    iget v4, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    .line 232
    invoke-virtual {v2, v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesForUsbTethering(ILjava/lang/String;)V

    .line 235
    goto :goto_2

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    goto :goto_4

    .line 238
    :cond_4
    :goto_2
    iget v0, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isUsbTetheringAuthEnabled:I

    .line 240
    if-ne v0, v6, :cond_5

    .line 242
    const-string v0, "KnoxVpnTetherAuthentication"

    .line 244
    const-string/jumbo v2, "usb tether auth process is going to be stopped after usb or usb tethering is disabled"

    .line 247
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 252
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->stopTetheringAuthProcess(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    goto :goto_3

    .line 256
    :catch_0
    :try_start_2
    const-string v0, "KnoxVpnEngineService"

    .line 258
    const-string v2, "Exception occured while trying to enable usb tethering after the usb cable is attached"

    .line 260
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :cond_5
    :goto_3
    monitor-exit v1

    .line 264
    goto/16 :goto_10

    .line 266
    :goto_4
    monitor-exit v1

    .line 267
    throw v0

    .line 268
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 271
    move-result-object v1

    .line 272
    const-string/jumbo v2, "message"

    .line 275
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v1

    .line 279
    const-string v2, "KnoxVpnEngineService"

    .line 281
    const-string/jumbo v3, "case MSG_SHOW_TOAST: - START"

    .line 284
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v1, :cond_6

    .line 289
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 291
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 293
    if-eqz v2, :cond_6

    .line 295
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 297
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 299
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 301
    const v3, 0x103012b

    .line 304
    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 307
    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    :cond_6
    const-string v0, "KnoxVpnEngineService"

    .line 316
    const-string/jumbo v1, "case MSG_SHOW_TOAST: - END"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    goto/16 :goto_10

    .line 324
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 326
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleCaptivePortal(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 329
    goto/16 :goto_10

    .line 331
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 333
    iget-boolean v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isDeviceBootCompleted:Z

    .line 335
    if-eqz v1, :cond_1f

    .line 337
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mstartVpnConnectionForAllClients(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 340
    goto/16 :goto_10

    .line 342
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 344
    monitor-enter v1

    .line 345
    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 347
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 349
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 352
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 353
    if-nez v0, :cond_7

    .line 355
    monitor-exit v1

    .line 356
    goto/16 :goto_10

    .line 358
    :cond_7
    :try_start_4
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 360
    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 362
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 365
    move-result-object v3

    .line 366
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 369
    move-result v3

    .line 370
    if-lez v3, :cond_18

    .line 372
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 374
    iget-object v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 376
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 379
    move-result-object v3

    .line 380
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 383
    move-result-object v3

    .line 384
    move v4, v5

    .line 385
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    move-result v7

    .line 389
    if-eqz v7, :cond_b

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    move-result-object v7

    .line 395
    check-cast v7, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 397
    iget v8, v7, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 399
    iget-object v7, v7, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 401
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 404
    move-result-object v7

    .line 405
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 408
    move-result-object v7

    .line 409
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_a

    .line 415
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    move-result-object v9

    .line 419
    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 421
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 423
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    .line 429
    move-result v10

    .line 430
    if-eqz v10, :cond_9

    .line 432
    if-ne v8, v6, :cond_9

    .line 434
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 436
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    .line 439
    move-result-object v9

    .line 440
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    .line 446
    move-result v9

    .line 447
    if-nez v9, :cond_9

    .line 449
    move v4, v6

    .line 450
    :cond_a
    if-eqz v4, :cond_8

    .line 452
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 455
    move-result-object v3

    .line 456
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 459
    move-result v4

    .line 460
    const/16 v15, 0x3f8

    .line 462
    const/4 v14, 0x3

    .line 463
    if-eqz v4, :cond_e

    .line 465
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    move-result-object v4

    .line 469
    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 471
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 473
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 475
    iget-object v9, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 477
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getuserIdListForProfile(Ljava/lang/String;)Ljava/util/List;

    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeInputFilterDropRulesForInterface(ILjava/util/List;)V

    .line 484
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 486
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 488
    iget-object v9, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 490
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getuidListForProfile(Ljava/lang/String;)Ljava/util/List;

    .line 493
    move-result-object v8

    .line 494
    invoke-virtual {v7, v5, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeInputFilterDropRulesForInterface(ILjava/util/List;)V

    .line 497
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 499
    iget-object v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 501
    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isNativeVpnClient(Ljava/lang/String;)Z

    .line 504
    move-result v7

    .line 505
    if-eqz v7, :cond_d

    .line 507
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 509
    invoke-virtual {v7, v15, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRulesForExemptedUid(II)V

    .line 512
    goto :goto_5

    .line 513
    :cond_d
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 515
    iget v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 517
    invoke-virtual {v7, v8, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRulesForExemptedUid(II)V

    .line 520
    :goto_5
    iget-object v7, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 522
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 525
    move-result-object v15

    .line 526
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    move-result v7

    .line 530
    if-eqz v7, :cond_c

    .line 532
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 535
    move-result-object v7

    .line 536
    check-cast v7, Ljava/lang/Integer;

    .line 538
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 541
    move-result v13

    .line 542
    iget-object v9, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 544
    const/4 v14, 0x3

    .line 545
    const/4 v10, 0x0

    .line 546
    const/4 v11, 0x0

    .line 547
    const/4 v8, 0x0

    .line 548
    const/4 v12, 0x2

    .line 549
    move-object v7, v1

    .line 550
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateRulesToExemptUid(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 553
    goto :goto_6

    .line 554
    :cond_e
    iget-object v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 556
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getuserIdForExemptedUids()Ljava/util/HashSet;

    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 563
    move-result-object v4

    .line 564
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 567
    move-result v7

    .line 568
    if-eqz v7, :cond_f

    .line 570
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 573
    move-result-object v7

    .line 574
    check-cast v7, Ljava/lang/Integer;

    .line 576
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 579
    move-result v7

    .line 580
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 582
    const-string/jumbo v9, "com.android.providers.downloads"

    .line 585
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    invoke-static {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 591
    move-result v7

    .line 592
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 594
    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeExemptRulesForDownloadManagerUid(I)V

    .line 597
    goto :goto_7

    .line 598
    :cond_f
    const-string/jumbo v4, "noConnectivity"

    .line 601
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 604
    move-result v4

    .line 605
    if-eqz v4, :cond_10

    .line 607
    const-string v0, "KnoxVpnEngineService"

    .line 609
    const-string v2, "Default Ethernet Network lost connectivity"

    .line 611
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 614
    monitor-exit v1

    .line 615
    goto/16 :goto_10

    .line 617
    :cond_10
    :try_start_5
    const-string/jumbo v4, "state"

    .line 620
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    move-result-object v2

    .line 624
    const-string v4, "DISCONNECTED"

    .line 626
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 629
    move-result v2

    .line 630
    if-eqz v2, :cond_11

    .line 632
    const-string v0, "KnoxVpnEngineService"

    .line 634
    const-string v2, "Default Ethernet Network is disconnected"

    .line 636
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 639
    monitor-exit v1

    .line 640
    goto/16 :goto_10

    .line 642
    :cond_11
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 645
    move-result-object v2

    .line 646
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getActiveNetworkInterface()Ljava/lang/String;

    .line 652
    move-result-object v2

    .line 653
    const-string v4, "KnoxVpnEngineService"

    .line 655
    new-instance v7, Ljava/lang/StringBuilder;

    .line 657
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    const-string v8, "Default Ethernet Network interface Name is "

    .line 662
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    move-result-object v7

    .line 672
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 678
    move-result-object v0

    .line 679
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 682
    move-result v4

    .line 683
    if-eqz v4, :cond_17

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 688
    move-result-object v4

    .line 689
    check-cast v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 691
    iget v7, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 693
    iget-object v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 695
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 698
    move-result-object v8

    .line 699
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 702
    move-result-object v8

    .line 703
    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    move-result v9

    .line 707
    if-eqz v9, :cond_13

    .line 709
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    move-result-object v9

    .line 713
    check-cast v9, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 715
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 717
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageForAddAllPackages(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;)Z

    .line 723
    move-result v10

    .line 724
    if-eqz v10, :cond_12

    .line 726
    if-ne v7, v6, :cond_12

    .line 728
    iget-object v10, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 730
    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getPackageName()Ljava/lang/String;

    .line 733
    move-result-object v9

    .line 734
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    .line 740
    move-result v9

    .line 741
    if-nez v9, :cond_12

    .line 743
    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->blockIncomingICMPPackets(Z)V

    .line 746
    :cond_13
    if-ne v7, v6, :cond_16

    .line 748
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 750
    iget-object v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorPkgName:Ljava/lang/String;

    .line 752
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 755
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getRegularPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 758
    move-result-object v7

    .line 759
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 761
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 763
    iget-object v10, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 765
    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getuserIdListForProfile(Ljava/lang/String;)Ljava/util/List;

    .line 768
    move-result-object v9

    .line 769
    invoke-virtual {v8, v7, v2, v6, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addInputFilterDropRulesForInterface(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 772
    iget-object v8, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 774
    iget-object v9, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 776
    iget-object v10, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 778
    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getuidListForProfile(Ljava/lang/String;)Ljava/util/List;

    .line 781
    move-result-object v9

    .line 782
    invoke-virtual {v8, v7, v2, v5, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addInputFilterDropRulesForInterface(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 785
    iget v7, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 787
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getChainingEnabledForProfile(I)I

    .line 790
    move-result v7

    .line 791
    if-eq v7, v6, :cond_15

    .line 793
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 795
    iget-object v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 797
    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isNativeVpnClient(Ljava/lang/String;)Z

    .line 800
    move-result v7

    .line 801
    if-eqz v7, :cond_14

    .line 803
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 805
    invoke-virtual {v7, v15, v14, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRulesForExemptedUid(IILjava/lang/String;)V

    .line 808
    goto :goto_9

    .line 809
    :cond_14
    iget-object v7, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 811
    iget v8, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 813
    invoke-virtual {v7, v8, v14, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addIpRulesForExemptedUid(IILjava/lang/String;)V

    .line 816
    :cond_15
    :goto_9
    iget-object v7, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 818
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 821
    move-result-object v16

    .line 822
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 825
    move-result v7

    .line 826
    if-eqz v7, :cond_16

    .line 828
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    move-result-object v7

    .line 832
    check-cast v7, Ljava/lang/Integer;

    .line 834
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 837
    move-result v13

    .line 838
    iget-object v9, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 840
    const/4 v8, 0x1

    .line 841
    const/4 v12, 0x2

    .line 842
    const/16 v17, 0x3

    .line 844
    const/4 v10, 0x0

    .line 845
    move-object v7, v1

    .line 846
    move-object v11, v2

    .line 847
    move/from16 v18, v14

    .line 849
    move/from16 v14, v17

    .line 851
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateRulesToExemptUid(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 854
    move/from16 v14, v18

    .line 856
    goto :goto_a

    .line 857
    :cond_16
    move/from16 v18, v14

    .line 859
    move/from16 v14, v18

    .line 861
    goto/16 :goto_8

    .line 863
    :cond_17
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 866
    move-result-object v0

    .line 867
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 870
    move-result v3

    .line 871
    if-eqz v3, :cond_18

    .line 873
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 876
    move-result-object v3

    .line 877
    check-cast v3, Ljava/lang/Integer;

    .line 879
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 882
    move-result v3

    .line 883
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 885
    const-string/jumbo v5, "com.android.providers.downloads"

    .line 888
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    invoke-static {v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 894
    move-result v3

    .line 895
    iget-object v4, v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 897
    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addExemptRulesForDownloadManagerUid(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 900
    goto :goto_b

    .line 901
    :catchall_2
    :try_start_7
    const-string v0, "KnoxVpnEngineService"

    .line 903
    const-string v2, "Exception occured while trying to apply iptable rule for user 0 during connectivity change of ethernet network"

    .line 905
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 908
    :cond_18
    monitor-exit v1

    .line 909
    goto/16 :goto_10

    .line 911
    :catchall_3
    move-exception v0

    .line 912
    monitor-exit v1

    .line 913
    throw v0

    .line 914
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 916
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleActionMobileChanged(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 919
    goto/16 :goto_10

    .line 921
    :pswitch_8
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 923
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleActionWifiChanged(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 926
    goto/16 :goto_10

    .line 928
    :pswitch_9
    const-string/jumbo v1, "uid"

    .line 931
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 934
    move-result v1

    .line 935
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 937
    monitor-enter v2

    .line 938
    :try_start_8
    iget-object v0, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 940
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 942
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 945
    move-result-object v0

    .line 946
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 949
    move-result-object v0

    .line 950
    :cond_19
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 953
    move-result v3

    .line 954
    if-eqz v3, :cond_1d

    .line 956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 959
    move-result-object v3

    .line 960
    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 962
    iget v4, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 964
    if-eq v4, v1, :cond_1a

    .line 966
    goto :goto_c

    .line 967
    :cond_1a
    iget-object v4, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 969
    const-string v5, "KnoxVpnEngineService"

    .line 971
    new-instance v6, Ljava/lang/StringBuilder;

    .line 973
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    const-string/jumbo v7, "stopping the vpn connection for the profile due to system restriction"

    .line 979
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string/jumbo v7, "vpnClient: "

    .line 988
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    move-result-object v6

    .line 998
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v3, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 1003
    if-nez v3, :cond_1b

    .line 1005
    goto :goto_c

    .line 1006
    :cond_1b
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;

    .line 1009
    move-result-object v3

    .line 1010
    if-eqz v3, :cond_19

    .line 1012
    invoke-interface {v3, v4}, Lcom/samsung/android/knox/net/vpn/serviceprovider/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    .line 1015
    move-result v3

    .line 1016
    if-eqz v3, :cond_1c

    .line 1018
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1021
    move-result v8

    .line 1022
    const-string v9, "KnoxVpnEngineService"

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1026
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    const-string v5, "Error occurred trying to stop vpn connection from profile "

    .line 1031
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    move-result-object v10

    .line 1041
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1044
    move-result v11

    .line 1045
    const/4 v5, 0x3

    .line 1046
    const/4 v6, 0x5

    .line 1047
    const/4 v7, 0x0

    .line 1048
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1051
    goto :goto_c

    .line 1052
    :catchall_4
    move-exception v0

    .line 1053
    goto :goto_e

    .line 1054
    :catch_1
    move-exception v0

    .line 1055
    goto :goto_d

    .line 1056
    :cond_1c
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1059
    move-result v6

    .line 1060
    const-string v7, "KnoxVpnEngineService"

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1064
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1067
    const-string v5, "Connection with vpn vendor service stopped for profile "

    .line 1069
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    move-result-object v8

    .line 1079
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1082
    move-result v9

    .line 1083
    const/4 v3, 0x5

    .line 1084
    const/4 v4, 0x5

    .line 1085
    const/4 v5, 0x1

    .line 1086
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1089
    goto/16 :goto_c

    .line 1091
    :goto_d
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1094
    move-result v6

    .line 1095
    const-string v7, "KnoxVpnEngineService"

    .line 1097
    const-string v3, "Exception stopping vpn connection for client with uid %d"

    .line 1099
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    move-result-object v4

    .line 1103
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 1106
    move-result-object v4

    .line 1107
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1110
    move-result-object v8

    .line 1111
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1114
    move-result v9

    .line 1115
    const/4 v3, 0x3

    .line 1116
    const/4 v4, 0x5

    .line 1117
    const/4 v5, 0x0

    .line 1118
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1121
    const-string v1, "KnoxVpnEngineService"

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    const-string v4, "Exception occured while trying to stopping the vpn connection due to system restriction"

    .line 1130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1136
    move-result-object v0

    .line 1137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    move-result-object v0

    .line 1144
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1147
    :cond_1d
    monitor-exit v2

    .line 1148
    goto/16 :goto_10

    .line 1150
    :goto_e
    monitor-exit v2

    .line 1151
    throw v0

    .line 1152
    :pswitch_a
    const-string/jumbo v1, "uid"

    .line 1155
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1158
    move-result v1

    .line 1159
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1161
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mstartVpnConnectionForClient(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 1164
    goto/16 :goto_10

    .line 1166
    :pswitch_b
    const-string/jumbo v1, "reason"

    .line 1169
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1172
    move-result v1

    .line 1173
    const/4 v2, 0x5

    .line 1174
    if-ne v1, v2, :cond_1f

    .line 1176
    const-string v1, "KnoxVpnEngineService"

    .line 1178
    const-string/jumbo v2, "ultra power saving mode has been disabled"

    .line 1181
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1186
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mstartVpnConnectionForAllClients(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 1189
    goto/16 :goto_10

    .line 1191
    :pswitch_c
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1193
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnPacProcessor()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 1196
    move-result-object v0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1200
    const-string v0, "KnoxVpnPacProcessor"

    .line 1202
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyServiceList:Ljava/util/HashMap;

    .line 1204
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1207
    move-result-object v1

    .line 1208
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1211
    move-result-object v1

    .line 1212
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1215
    move-result v2

    .line 1216
    if-eqz v2, :cond_1f

    .line 1218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1221
    move-result-object v2

    .line 1222
    check-cast v2, Ljava/lang/Integer;

    .line 1224
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1227
    move-result v2

    .line 1228
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1230
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1233
    const-string/jumbo v4, "trying to see if authentication dialog is needed after screenlock in user "

    .line 1236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1245
    move-result-object v3

    .line 1246
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getProxyService(I)Lcom/android/net/IProxyService;

    .line 1252
    move-result-object v2

    .line 1253
    invoke-interface {v2}, Lcom/android/net/IProxyService;->handleScreenunlock()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1256
    goto :goto_f

    .line 1257
    :catch_2
    const-string v1, "Failed to show the proxy auth screen on screen unlock; might be the proxy server has not started yet"

    .line 1259
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    goto/16 :goto_10

    .line 1264
    :pswitch_d
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1266
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mstopVpnConnectionForAirplaneMode(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 1269
    goto/16 :goto_10

    .line 1271
    :pswitch_e
    const-string/jumbo v1, "uid"

    .line 1274
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1277
    move-result v1

    .line 1278
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1280
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->stopVpnConnectionAfterAdminRemoval(I)V

    .line 1283
    goto/16 :goto_10

    .line 1285
    :pswitch_f
    const-string/jumbo v1, "profileName"

    .line 1288
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1291
    move-result-object v1

    .line 1292
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1294
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 1296
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    const-string v0, "_servercert_pwd"

    .line 1301
    const-string v2, "_cacert_pwd"

    .line 1303
    const-string v3, "_captivecert_pwd"

    .line 1305
    const-string v4, "_proxy-password"

    .line 1307
    const-string v5, "_proxy-username"

    .line 1309
    :try_start_b
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 1312
    move-result-object v6

    .line 1313
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1315
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1318
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1327
    move-result-object v5

    .line 1328
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1331
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 1337
    move-result-object v5

    .line 1338
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1340
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1343
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1352
    move-result-object v4

    .line 1353
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1356
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 1362
    move-result-object v4

    .line 1363
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1365
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1377
    move-result-object v3

    .line 1378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1381
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1384
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 1387
    move-result-object v3

    .line 1388
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1390
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1402
    move-result-object v2

    .line 1403
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V

    .line 1409
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getKnoxVpnCredentialHandler()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 1412
    move-result-object v2

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1415
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1427
    move-result-object v0

    .line 1428
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1431
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteCredentialsFromKeystore(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1434
    goto/16 :goto_10

    .line 1436
    :catch_3
    move-exception v0

    .line 1437
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->DBG:Z

    .line 1439
    if-eqz v1, :cond_1f

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1443
    const-string v2, "Exception occured while removing the profile credentials "

    .line 1445
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1448
    const-string v2, "FW-KnoxVpnHelper"

    .line 1450
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1453
    goto/16 :goto_10

    .line 1455
    :pswitch_10
    const-string v1, "android.intent.extra.user_handle"

    .line 1457
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1460
    move-result v1

    .line 1461
    if-nez v1, :cond_1e

    .line 1463
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1465
    iput-boolean v6, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->isDeviceBootCompleted:Z

    .line 1467
    :cond_1e
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1469
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 1471
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1474
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1476
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 1478
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1481
    move-result v2

    .line 1482
    if-nez v2, :cond_1f

    .line 1484
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1486
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$minitializeVpnVendorForUserAfterBootComplete(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 1489
    goto :goto_10

    .line 1490
    :pswitch_11
    const-string v1, "android.intent.extra.user_handle"

    .line 1492
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1495
    move-result v1

    .line 1496
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1498
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 1500
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1503
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1505
    iget-object v2, v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;

    .line 1507
    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1510
    move-result v2

    .line 1511
    if-nez v2, :cond_1f

    .line 1513
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1515
    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleActionLockBootCompleted(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 1518
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1520
    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$minitializeVpnVendorForUserAfterLockBootComplete(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;I)V

    .line 1523
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1525
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mregisterNetworkCallback(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    .line 1528
    goto :goto_10

    .line 1529
    :pswitch_12
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1531
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleActionAdminChanged(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 1534
    goto :goto_10

    .line 1535
    :pswitch_13
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1537
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleActionUserRemoved(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 1540
    goto :goto_10

    .line 1541
    :pswitch_14
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1543
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleConnectivityAction(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 1546
    goto :goto_10

    .line 1547
    :pswitch_15
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1549
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageRemoved$1(Landroid/os/Bundle;)V

    .line 1552
    goto :goto_10

    .line 1553
    :pswitch_16
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1555
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->handleActionPackageAdded$1(Landroid/os/Bundle;)V

    .line 1558
    goto :goto_10

    .line 1559
    :pswitch_17
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1561
    invoke-static {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->-$$Nest$mhandleVpnInterfaceState(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    .line 1564
    :cond_1f
    :goto_10
    return-void

    .line 1565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
