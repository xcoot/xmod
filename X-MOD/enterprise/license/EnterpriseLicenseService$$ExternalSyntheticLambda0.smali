.class public final synthetic Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 12
    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 14
    const-string/jumbo v1, "packageRemovedInternal"

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 24
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 28
    const-string/jumbo v1, "licenseValidationInternal"

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 38
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 42
    const-string v1, "KLMRegistrationInternal"

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    return-void

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 51
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 53
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 55
    const-string v1, "ELMRegistrationInternal"

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    return-void

    .line 62
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 64
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 66
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 68
    const-string v1, "KLMDeactivationInternal"

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
