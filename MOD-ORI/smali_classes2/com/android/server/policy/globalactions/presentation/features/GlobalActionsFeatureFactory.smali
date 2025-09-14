.class public final Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field public mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mContext:Landroid/content/Context;

.field public mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

.field public mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;


# virtual methods
.method public final createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v2, "emergency"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v2, "restart"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string/jumbo v2, "power"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    new-instance p1, Lcom/samsung/android/globalactions/features/SktStrategy;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 61
    .line 62
    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/samsung/android/globalactions/util/ToastController;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 71
    .line 72
    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 73
    .line 74
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 81
    .line 82
    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 83
    .line 84
    invoke-interface {p0, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 89
    .line 90
    invoke-direct {p1, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :goto_1
    return-object v0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x65e8905 -> :sswitch_2
        0x416a9e0f -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 7
    .line 8
    const-string v1, "DATA_MODE"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 29
    .line 30
    const-string v1, "LOCKDOWN_MODE"

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 43
    .line 44
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    return-object p1
.end method

.method public final createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "emergency"

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 15
    .line 16
    const-string v1, "SAFETY_CARE"

    .line 17
    .line 18
    invoke-interface {p2, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 29
    .line 30
    const-class v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 31
    .line 32
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 37
    .line 38
    invoke-direct {p2, p1, v1, v2}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 45
    .line 46
    const-string p2, "DESKTOP_MODE"

    .line 47
    .line 48
    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 61
    .line 62
    const-class v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 71
    .line 72
    invoke-direct {p1, p2, v1, v2, v3}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 79
    .line 80
    const-string p2, "RESERVE_BATTERY_MODE"

    .line 81
    .line 82
    invoke-interface {p1, p2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    new-instance p1, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    return-object v0
.end method

.method public final createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 7
    .line 8
    const-string v1, "DESKTOP_MODE"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 23
    .line 24
    const-class v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 25
    .line 26
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object p1
.end method

.method public final createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 7
    .line 8
    const-string v2, "DESKTOP_MODE"

    .line 9
    .line 10
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 23
    .line 24
    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 25
    .line 26
    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 41
    .line 42
    const-string v2, "SAFETY_CARE"

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 55
    .line 56
    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 57
    .line 58
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 63
    .line 64
    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 71
    .line 72
    const-string v2, "KNOX_CONTAINER"

    .line 73
    .line 74
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 83
    .line 84
    invoke-direct {v1, p1, p0}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    return-object v0
.end method

.method public final createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "restart"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 20
    .line 21
    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/samsung/android/globalactions/util/SystemController;

    .line 28
    .line 29
    invoke-direct {p2, v0, v1}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 40
    .line 41
    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    .line 42
    .line 43
    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/samsung/android/globalactions/util/SystemController;

    .line 48
    .line 49
    invoke-direct {p2, v0, p0}, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    return-object p1
.end method

.method public final createViewInflateStrategy()Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 7
    .line 8
    const-string v1, "NAV_BAR"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/Features;->isEnabled(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p1
.end method

.method public final createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
