.class public final Lcom/android/server/MmsServiceBroker$BinderService;
.super Lcom/android/internal/telephony/IMms$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/telephony/IMms$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 27
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 27
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final adjustUriForUserAndGrantPermission(IILandroid/net/Uri;)Landroid/net/Uri;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    const-string v2, "android.service.carrier.CarrierMessagingService"

    .line 7
    new-instance v9, Landroid/content/Intent;

    .line 9
    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    move/from16 v3, p1

    .line 17
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v10

    .line 24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-static {v1, v3}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 33
    move-result-object v1

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    move-result-wide v11

    .line 38
    :try_start_0
    const-class v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 40
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    move-object v13, v3

    .line 45
    check-cast v13, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 47
    const-string/jumbo v6, "com.android.phone"

    .line 50
    move-object v3, v13

    .line 51
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v4, v9

    .line 56
    move v5, v10

    .line 57
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 60
    move-result-object v3

    .line 61
    move-object v14, v13

    .line 62
    check-cast v14, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 64
    const/4 v15, 0x0

    .line 65
    invoke-virtual {v14, v3, v15}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 68
    new-instance v3, Landroid/content/Intent;

    .line 70
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v2, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 75
    iget-object v2, v2, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v4, "phone"

    .line 80
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 86
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 88
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 90
    const-string/jumbo v4, "telephony_subscription_service"

    .line 93
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 99
    const/4 v4, -0x1

    .line 100
    if-nez v0, :cond_1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    move/from16 v5, p2

    .line 105
    invoke-virtual {v0, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 115
    move-result v4

    .line 116
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 125
    move-result v2

    .line 126
    const/4 v3, 0x1

    .line 127
    if-ne v2, v3, :cond_3

    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    move-object v6, v0

    .line 135
    check-cast v6, Ljava/lang/String;

    .line 137
    move-object v3, v13

    .line 138
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v7, 0x0

    .line 142
    move-object v4, v9

    .line 143
    move v5, v10

    .line 144
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v14, v0, v15}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    return-object v1

    .line 158
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw v0
.end method

.method public final archiveStoredConversation(Ljava/lang/String;JZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 26
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final deleteStoredConversation(Ljava/lang/String;J)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 26
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 26
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    const-string/jumbo v1, "downloadMessage() by "

    .line 6
    const-string v8, "MmsServiceBroker"

    .line 8
    invoke-static {v1, p2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 13
    iget-object v1, v1, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 15
    const-string v2, "android.permission.RECEIVE_MMS"

    .line 17
    const-string v3, "Download MMS message"

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 24
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    move-result v3

    .line 32
    const/4 v6, 0x0

    .line 33
    const/16 v2, 0x12

    .line 35
    move-object v4, p2

    .line 36
    move-object/from16 v5, p9

    .line 38
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " is not allowed to call downloadMessage()"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x3

    .line 66
    move v2, p1

    .line 67
    move-object v3, p4

    .line 68
    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(IILandroid/net/Uri;)Landroid/net/Uri;

    .line 71
    move-result-object v4

    .line 72
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 74
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 77
    move-result-object v0

    .line 78
    move v1, p1

    .line 79
    move-object v2, p2

    .line 80
    move-object v3, p3

    .line 81
    move-object v5, p5

    .line 82
    move-object/from16 v6, p6

    .line 84
    move-wide/from16 v7, p7

    .line 86
    move-object/from16 v9, p9

    .line 88
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public final getAutoPersisting()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 27
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 30
    move-result-object v0

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p2

    .line 33
    move-object v3, p3

    .line 34
    move-wide v4, p4

    .line 35
    move v6, p6

    .line 36
    move v7, p7

    .line 37
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 4
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 7
    move-result-object v2

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/16 v3, 0xf

    .line 16
    move-object v5, p1

    .line 17
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 28
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 31
    move-result-object v1

    .line 32
    move-object v2, p1

    .line 33
    move-object v3, p2

    .line 34
    move v4, p3

    .line 35
    move-object v5, p4

    .line 36
    move-wide v6, p5

    .line 37
    move/from16 v8, p7

    .line 39
    move/from16 v9, p8

    .line 41
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-object v8, p2

    .line 4
    const-string/jumbo v2, "sendMessage() by "

    .line 7
    const-string v9, "MmsServiceBroker"

    .line 9
    invoke-static {v2, p2, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 14
    iget-object v2, v2, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 16
    const-string v3, "android.permission.SEND_SMS"

    .line 18
    const-string v4, "Send MMS message"

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 25
    iget-object v2, v2, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkSubscriptionAssociatedWithUser(Landroid/content/Context;ILandroid/os/UserHandle;)Z

    .line 34
    move-result v2

    .line 35
    const/4 v10, 0x1

    .line 36
    if-nez v2, :cond_1

    .line 38
    iget-object v2, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v3

    .line 47
    :try_start_0
    iget-object v2, v2, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 49
    const-class v5, Landroid/telephony/SubscriptionManager;

    .line 51
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 57
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    .line 62
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v2, :cond_0

    .line 65
    move v2, v10

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    if-eqz v2, :cond_1

    .line 75
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 77
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 82
    move-result v2

    .line 83
    invoke-static {v0, p1, v2, p2}, Lcom/android/internal/telephony/util/TelephonyUtils;->showSwitchToManagedProfileDialogIfAppropriate(Landroid/content/Context;IILjava/lang/String;)V

    .line 86
    return-void

    .line 87
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    throw v0

    .line 91
    :cond_1
    iget-object v2, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 93
    invoke-static {v2}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 96
    move-result-object v2

    .line 97
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 100
    move-result v4

    .line 101
    const/4 v7, 0x0

    .line 102
    const/16 v3, 0x14

    .line 104
    move-object v5, p2

    .line 105
    move-object/from16 v6, p9

    .line 107
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, " is not allowed to call sendMessage()"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 134
    :cond_2
    move-object v2, p3

    .line 135
    invoke-virtual {p0, v10, p1, p3}, Lcom/android/server/MmsServiceBroker$BinderService;->adjustUriForUserAndGrantPermission(IILandroid/net/Uri;)Landroid/net/Uri;

    .line 138
    move-result-object v3

    .line 139
    iget-object v0, v0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 141
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 144
    move-result-object v0

    .line 145
    move v1, p1

    .line 146
    move-object v2, p2

    .line 147
    move-object v4, p4

    .line 148
    move-object/from16 v5, p5

    .line 150
    move-object/from16 v6, p6

    .line 152
    move-wide/from16 v7, p7

    .line 154
    move-object/from16 v9, p9

    .line 156
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public final sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0x14

    .line 15
    move-object v4, p2

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 25
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 28
    move-result-object v0

    .line 29
    move v1, p1

    .line 30
    move-object v2, p2

    .line 31
    move-object v3, p3

    .line 32
    move-object v4, p4

    .line 33
    move-object v5, p5

    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 37
    return-void
.end method

.method public final setAutoPersisting(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 25
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public final updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 3
    invoke-static {v0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v2, 0xf

    .line 15
    move-object v4, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker$BinderService;->this$0:Lcom/android/server/MmsServiceBroker;

    .line 26
    invoke-static {p0}, Lcom/android/server/MmsServiceBroker;->-$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method
