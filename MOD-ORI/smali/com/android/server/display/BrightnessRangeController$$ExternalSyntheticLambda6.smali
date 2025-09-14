.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p0, v2, :cond_0

    .line 13
    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    :goto_0
    const/4 v4, 0x3

    .line 18
    if-ne p0, v4, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    iput-boolean v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    iget-boolean p0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 31
    .line 32
    if-ne v3, p0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    sget-boolean p0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v2, "setAutoBrightnessEnabled( "

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " )"

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v2, "HighBrightnessModeController"

    .line 60
    .line 61
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_3
    iput-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_2
    return-void
.end method
