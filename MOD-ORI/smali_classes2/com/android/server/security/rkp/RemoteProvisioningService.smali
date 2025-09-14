.class public final Lcom/android/server/security/rkp/RemoteProvisioningService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/security/rkp/RemoteProvisioningService;->CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService;->mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "remote_provisioning"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService;->mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
