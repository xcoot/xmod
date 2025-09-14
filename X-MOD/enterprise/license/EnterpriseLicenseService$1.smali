.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_2

    .line 26
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 28
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 34
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 36
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetLicenseByAdmin(Ljava/lang/String;)Z

    .line 39
    :cond_1
    const-string/jumbo p2, "packageName"

    .line 42
    invoke-static {p2, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/Thread;

    .line 48
    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    .line 54
    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 60
    :cond_2
    return-void

    .line 61
    :cond_3
    :goto_0
    const-string p0, "EnterpriseLicenseService"

    .line 63
    const-string/jumbo p1, "intent or getData are null. Skip."

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
