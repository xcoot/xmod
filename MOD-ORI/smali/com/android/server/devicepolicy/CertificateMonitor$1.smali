.class public final Lcom/android/server/devicepolicy/CertificateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/CertificateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "android.intent.extra.user_handle"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
