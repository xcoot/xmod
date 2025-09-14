.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IIZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZII)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 11
    .line 12
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 13
    .line 14
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setCallScreenDisabledItems$61(IZI)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 22
    .line 23
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 26
    .line 27
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 28
    .line 29
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSettingsEnabledItems$25(IZI)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 41
    .line 42
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 43
    .line 44
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSensorDisabled$82(IZI)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 52
    .line 53
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 54
    .line 55
    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 58
    .line 59
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarIconsState$112(IIZ)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 69
    .line 70
    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 71
    .line 72
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 73
    .line 74
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAirGestureOptionState$30(IIZ)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 82
    .line 83
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 86
    .line 87
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 88
    .line 89
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSettingsHiddenState$43(IZI)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 97
    .line 98
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 99
    .line 100
    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 101
    .line 102
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 103
    .line 104
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLockScreenHiddenItems$72(IIZ)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 112
    .line 113
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$1:I

    .line 114
    .line 115
    iget v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$2:I

    .line 116
    .line 117
    iget-boolean p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda19;->f$3:Z

    .line 118
    .line 119
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarClockState$111(IIZ)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
