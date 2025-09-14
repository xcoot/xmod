.class public final synthetic Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;

.field public final synthetic f$2:Landroid/companion/IAssociationRequestCallback;

.field public final synthetic f$3:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:Landroid/companion/AssociationInfo;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Landroid/companion/IAssociationRequestCallback;

    .line 10
    iput-object p4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/os/ResultReceiver;

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 3
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:Landroid/companion/AssociationInfo;

    .line 5
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Landroid/companion/IAssociationRequestCallback;

    .line 7
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/os/ResultReceiver;

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    const-string v3, "CDM_AssociationRequestsProcessor"

    .line 20
    if-eqz p1, :cond_0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "Added "

    .line 26
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, " role to userId="

    .line 38
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v4, ", packageName="

    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 69
    invoke-virtual {p1, v1}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 72
    invoke-static {v1, v2, p0}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "Failed to add u"

    .line 80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "\\"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, " to the list of "

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, " holders."

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-static {p1, v2, p0}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 130
    :goto_0
    return-void
.end method
