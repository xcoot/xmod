.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

.field public final key:Ljava/lang/String;

.field public final licenseKey:Ljava/lang/String;

.field public final recordMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 2
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    .line 8
    iput-object p5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "binderDied() key = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "EnterpriseLicenseService"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
