.class public final synthetic Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
