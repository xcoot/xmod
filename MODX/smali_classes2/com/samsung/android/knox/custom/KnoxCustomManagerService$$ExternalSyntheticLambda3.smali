.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    iput-object p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAppBlockDownloadNamespaces$55(ILjava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 22
    .line 23
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 24
    .line 25
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHomeActivity$16(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 35
    .line 36
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 37
    .line 38
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUnlockSimPin$93(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 46
    .line 47
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setVolumeKeyAppsList$26(ILjava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 61
    .line 62
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 63
    .line 64
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setFavoriteApp$131(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 74
    .line 75
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 76
    .line 77
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSystemRingtone$85(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 87
    .line 88
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 89
    .line 90
    sget-object v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$startTcpDump$156(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
