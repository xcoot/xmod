.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$1:I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v1, p1, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 16
    .line 17
    if-ne v1, p0, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$1:I

    .line 38
    .line 39
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(ILjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 55
    .line 56
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    .line 68
    .line 69
    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 74
    .line 75
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;->f$1:I

    .line 76
    .line 77
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget v1, p1, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 83
    .line 84
    if-eq p0, v1, :cond_2

    .line 85
    .line 86
    iput p0, p1, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 87
    .line 88
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 89
    .line 90
    if-eqz p0, :cond_2

    .line 91
    .line 92
    iget-object p0, p1, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
