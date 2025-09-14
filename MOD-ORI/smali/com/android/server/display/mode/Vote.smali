.class public interface abstract Lcom/android/server/display/mode/Vote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/display/mode/CombinedVote;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 9
    .line 10
    cmpl-float p0, p0, p1

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-direct {v2, p0}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/display/mode/CombinedVote;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static forPolicyRate(FF)Lcom/android/server/display/mode/Vote;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/SupportedRefreshRatesVote;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/display/config/SupportedModeData;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    .line 31
    .line 32
    iget v3, v1, Lcom/android/server/display/config/SupportedModeData;->refreshRate:F

    .line 33
    .line 34
    iget v1, v1, Lcom/android/server/display/config/SupportedModeData;->vsyncRate:F

    .line 35
    .line 36
    invoke-direct {v2, v3, v1}, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/android/server/display/mode/SupportedRefreshRatesVote;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "PRIORITY_UDFPS"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "PRIORITY_PROXIMITY"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "PRIORITY_SKIN_TEMPERATURE"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "PRIORITY_LOW_POWER_MODE_RENDER_RATE"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "PRIORITY_LOW_POWER_MODE_MODES"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "PRIORITY_SYSTEM_REQUESTED_MODES"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, "PRIORITY_LAYOUT_LIMITED_FRAME_RATE"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    const-string p0, "PRIORITY_AUTH_OPTIMIZER_RENDER_FRAME_RATE"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    const-string p0, "PRIORITY_LIMIT_MODE"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    const-string p0, "PRIORITY_SYNCHRONIZED_REFRESH_RATE"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    const-string p0, "PRIORITY_USER_SETTING_PEAK_RENDER_FRAME_RATE"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    const-string p0, "PRIORITY_RESOLUTION"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    const-string p0, "PRIORITY_REFRESH_RATE_MODE"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    const-string p0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    const-string p0, "PRIORITY_APP_REQUEST_SIZE"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    const-string p0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    const-string p0, "PRIORITY_APP_REQUEST_RENDER_FRAME_RATE_RANGE"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    const-string p0, "PRIORITY_USER_SETTING_DISPLAY_PREFERRED_SIZE"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    const-string p0, "PRIORITY_USER_SETTING_MIN_RENDER_FRAME_RATE"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    const-string p0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    const-string p0, "PRIORITY_FLICKER_REFRESH_RATE"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    const-string p0, "PRIORITY_REFRESH_RATE_MIN_LIMIT"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    const-string p0, "PRIORITY_REFRESH_RATE_MAX_LIMIT"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_18
    const-string p0, "PRIORITY_DEFAULT_REFRESH_RATE"

    .line 82
    .line 83
    return-object p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
.end method
