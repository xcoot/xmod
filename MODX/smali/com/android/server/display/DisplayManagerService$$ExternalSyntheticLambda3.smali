.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 8
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 5
    iget v2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$2:I

    .line 7
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;->f$3:I

    .line 9
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 17
    move-result-object v3

    .line 18
    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v3, v4, :cond_0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 26
    iget v5, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 28
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 34
    if-nez v3, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 41
    if-nez v1, :cond_2

    .line 43
    iget-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 45
    iget-object v1, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/DisplayManagerService;->getBrightnessConfigForDisplayWithPdsFallbackLocked(ILjava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;

    .line 50
    move-result-object v1

    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Lcom/android/server/display/DisplayPowerController;

    .line 54
    invoke-virtual {v5, v1, v4}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    .line 57
    :cond_2
    iget-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 59
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 61
    if-nez v1, :cond_3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_4

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v5, 0x0

    .line 77
    iget-object v1, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v5}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_5

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v0, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness(I)F

    .line 89
    move-result v4

    .line 90
    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 99
    move-result-object p1

    .line 100
    iget v4, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 102
    :cond_6
    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    .line 104
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    move-result-object p1

    .line 108
    iget-object v0, v3, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 110
    const/16 v1, 0xc

    .line 112
    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 115
    move-result-object p0

    .line 116
    iget-object p1, v3, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 124
    move-result-wide v1

    .line 125
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 128
    :goto_1
    return-void
.end method
