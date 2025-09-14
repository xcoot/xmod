.class public final Lcom/android/server/devicepolicy/RemoteBugreportManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

.field public final mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

.field public final mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRemoteBugreportTimeoutRunnable:Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

.field public final mRng:Ljava/security/SecureRandom;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRng:Ljava/security/SecureRandom;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    .line 37
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    .line 39
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;I)V

    .line 45
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 47
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;I)V

    .line 53
    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 55
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 57
    iput-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 59
    iget-object p2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 63
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method


# virtual methods
.method public final notify(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 6
    move-result-object v0

    .line 7
    new-instance v3, Landroid/content/Intent;

    .line 9
    const-string v1, "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

    .line 11
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const v1, 0x10008000

    .line 17
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    const-string v1, "android.app.extra.bugreport_notification_type"

    .line 22
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x100000

    .line 33
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 36
    move-result-object v1

    .line 37
    const-string v7, "DevicePolicyManager"

    .line 39
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "Failed to resolve intent for remote bugreport dialog"

    .line 51
    invoke-static {v7, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 56
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 58
    const/high16 v4, 0x4000000

    .line 60
    const/4 v5, 0x0

    .line 61
    move v2, p1

    .line 62
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Landroid/app/Notification$Builder;

    .line 68
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 70
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 72
    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    const v3, 0x1080b7e

    .line 78
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 81
    move-result-object v2

    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 97
    const v4, 0x106001c

    .line 100
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 103
    move-result v2

    .line 104
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 107
    move-result-object v1

    .line 108
    new-instance v2, Landroid/app/Notification$TvExtender;

    .line 110
    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 113
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    .line 116
    move-result-object v1

    .line 117
    const v2, 0x28700e57

    .line 120
    const/4 v4, 0x2

    .line 121
    const/4 v5, 0x0

    .line 122
    if-ne p1, v4, :cond_1

    .line 124
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 126
    const p1, 0x1040e5f

    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v5, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 140
    goto/16 :goto_1

    .line 142
    :cond_1
    if-ne p1, v3, :cond_2

    .line 144
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 146
    const p1, 0x1040f16

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0, v5, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 160
    goto :goto_1

    .line 161
    :cond_2
    const/4 v3, 0x3

    .line 162
    if-ne p1, v3, :cond_3

    .line 164
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 166
    new-instance v3, Landroid/content/Intent;

    .line 168
    const-string/jumbo v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 171
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    const/high16 v4, 0x14000000

    .line 176
    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 179
    move-result-object p1

    .line 180
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 182
    new-instance v5, Landroid/content/Intent;

    .line 184
    const-string/jumbo v6, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 187
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v3, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 193
    move-result-object v3

    .line 194
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 196
    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 198
    const v6, 0x1040438

    .line 201
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-direct {v4, v6, v5, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 209
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 216
    move-result-object v3

    .line 217
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 219
    iget-object v5, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 221
    const v8, 0x1040e59

    .line 224
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    move-result-object v5

    .line 228
    invoke-direct {v4, v6, v5, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 231
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 238
    move-result-object p1

    .line 239
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 241
    const v4, 0x1040e5b

    .line 244
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 251
    move-result-object p1

    .line 252
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 254
    const v4, 0x1040e5a

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 264
    move-result-object p1

    .line 265
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 267
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 270
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {v3, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 283
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 286
    move-result-object p0

    .line 287
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 289
    invoke-virtual {v0, v7, v2, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 292
    return-void
.end method

.method public final registerRemoteBugreportReceivers()V
    .locals 5

    .line 1
    const-string v0, "application/vnd.android.bugreport"

    .line 3
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    const-string v2, "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

    .line 7
    invoke-direct {v1, v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 12
    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    const-string v2, "DevicePolicyManager"

    .line 26
    const-string v3, "Failed to set type %s"

    .line 28
    invoke-static {v2, v1, v3, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :goto_0
    const-string/jumbo v0, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 34
    const-string/jumbo v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 37
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    .line 45
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public final shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendBugreportToDeviceOwner(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    invoke-virtual {v1, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 27
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 30
    throw p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catch_0
    :try_start_2
    new-instance p1, Landroid/os/Bundle;

    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string p2, "android.app.extra.BUGREPORT_FAILURE_REASON"

    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string p2, "android.app.action.BUGREPORT_FAILED"

    .line 44
    invoke-virtual {v1, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    return-void

    .line 49
    :goto_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    invoke-virtual {v1, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    throw p1
.end method
