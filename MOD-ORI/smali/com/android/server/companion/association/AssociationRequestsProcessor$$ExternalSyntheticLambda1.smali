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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:Landroid/companion/AssociationInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Landroid/companion/IAssociationRequestCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/os/ResultReceiver;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$1:Landroid/companion/AssociationInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$2:Landroid/companion/IAssociationRequestCallback;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;->f$3:Landroid/os/ResultReceiver;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const-string v3, "CDM_AssociationRequestsProcessor"

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "Added "

    .line 25
    .line 26
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v4, " role to userId="

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, ", packageName="

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object p1, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2, p0}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "Failed to add u"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, "\\"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " to the list of "

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " holders."

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    invoke-static {p1, v2, p0}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->sendCallbackAndFinish(Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void
.end method
