.class public final Lcom/android/server/display/mode/SyntheticModeManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSynthetic60HzModesEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 20
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    .line 21
    .line 22
    return-void
.end method
