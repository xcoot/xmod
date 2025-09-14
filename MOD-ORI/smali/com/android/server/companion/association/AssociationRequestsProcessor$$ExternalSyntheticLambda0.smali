.class public final synthetic Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/MacAddress;

.field public final synthetic f$4:Landroid/companion/AssociationRequest;

.field public final synthetic f$5:Landroid/companion/IAssociationRequestCallback;

.field public final synthetic f$6:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/net/MacAddress;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/companion/AssociationRequest;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:Landroid/companion/IAssociationRequestCallback;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Landroid/os/ResultReceiver;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$3:Landroid/net/MacAddress;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$4:Landroid/companion/AssociationRequest;

    .line 10
    .line 11
    iget-object v8, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$5:Landroid/companion/IAssociationRequestCallback;

    .line 12
    .line 13
    iget-object v9, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;->f$6:Landroid/os/ResultReceiver;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v4}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v4}, Landroid/companion/AssociationRequest;->getAssociatedDevice()Landroid/companion/AssociatedDevice;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v4}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move-object v4, p0

    .line 35
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
