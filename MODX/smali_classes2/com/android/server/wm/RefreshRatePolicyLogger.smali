.class public final Lcom/android/server/wm/RefreshRatePolicyLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRefreshRateHistories:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    const/4 v2, 0x3

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v1, v4, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v1, v4, :cond_0

    .line 27
    .line 28
    const-string v4, "Unknown_"

    .line 29
    .line 30
    invoke-static {v1, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v4, "Max"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string v4, "Min"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v4, "ModeId"

    .line 42
    .line 43
    :goto_1
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v5, -0x1

    .line 47
    iput v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    .line 48
    .line 49
    const/high16 v5, -0x40800000    # -1.0f

    .line 50
    .line 51
    iput v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    .line 52
    .line 53
    iput-object v4, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mTag:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v5, Lcom/samsung/android/core/SystemHistory;

    .line 56
    .line 57
    const/16 v6, 0xf

    .line 58
    .line 59
    invoke-direct {v5, v6, v4}, Lcom/samsung/android/core/SystemHistory;-><init>(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v5, v3, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    .line 63
    .line 64
    invoke-virtual {v5, v0}, Lcom/samsung/android/core/SystemHistory;->enableLog(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method
