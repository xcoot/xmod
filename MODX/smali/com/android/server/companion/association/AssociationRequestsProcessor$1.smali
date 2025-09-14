.class public final Lcom/android/server/companion/association/AssociationRequestsProcessor$1;
.super Landroid/os/ResultReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string p0, "Unknown result code:"

    .line 5
    const-string p2, "CDM_AssociationRequestsProcessor"

    .line 7
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_0
    const-string p1, "association_request"

    .line 13
    const-class v0, Landroid/companion/AssociationRequest;

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    move-object v5, p1

    .line 20
    check-cast v5, Landroid/companion/AssociationRequest;

    .line 22
    const-string p1, "application_callback"

    .line 24
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    .line 31
    move-result-object v6

    .line 32
    const-string/jumbo p1, "result_receiver"

    .line 35
    const-class v0, Landroid/os/ResultReceiver;

    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    move-object v7, p1

    .line 42
    check-cast v7, Landroid/os/ResultReceiver;

    .line 44
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 59
    const/4 p1, 0x0

    .line 60
    :goto_0
    move-object v4, p1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string/jumbo p1, "mac_address"

    .line 65
    const-class v0, Landroid/net/MacAddress;

    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/net/MacAddress;

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v5}, Landroid/companion/AssociationRequest;->getUserId()I

    .line 89
    move-result v2

    .line 90
    iget-object p0, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 92
    const-wide/16 p1, 0x0

    .line 94
    invoke-virtual {p0, v3, p1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 97
    move-result p0

    .line 98
    :try_start_0
    iget-object p1, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p1, v5, p0}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    new-instance p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    .line 105
    move-object v0, p0

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 109
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception p0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-interface {v6, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :catch_1
    :goto_2
    return-void
.end method
