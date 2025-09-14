.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v1, Landroid/content/Intent;

    .line 17
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 20
    const/high16 v2, 0x50800000

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const-string/jumbo v2, "com.samsung.android.mdm"

    .line 28
    const-string/jumbo v3, "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

    .line 31
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v2, "proxy"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 42
    const/4 v2, 0x0

    .line 43
    const/high16 v3, 0x14000000

    .line 45
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 48
    move-result-object p0

    .line 49
    new-instance v1, Landroid/app/Notification$Builder;

    .line 51
    iget-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 53
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    .line 55
    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iget-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v2

    .line 64
    const v3, 0x1040b67

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 74
    move-result-object v1

    .line 75
    const v2, 0x108008a

    .line 78
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 98
    move-result-object p0

    .line 99
    iget-object v0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 101
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 103
    const-string v2, "LocalProxyManager"

    .line 105
    const/16 v3, 0x3e1

    .line 107
    invoke-virtual {v0, v2, v3, p0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 110
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 113
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 115
    check-cast p0, Landroid/net/ProxyInfo;

    .line 117
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 127
    return-void

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
