.class public final Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnDismiss:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;)V
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;-><init>()V

    .line 5
    .line 6
    .line 7
    move-object v1, p1

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    .line 9
    .line 10
    .line 11
    move-object/from16 v0, p3

    .line 12
    .line 13
    iput-object v0, v12, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    .line 14
    .line 15
    new-instance v4, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;

    .line 16
    .line 17
    move-object/from16 v0, p2

    .line 18
    .line 19
    invoke-direct {v4, v0}, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    .line 23
    .line 24
    iget-object v1, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    .line 30
    .line 31
    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-class v3, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-class v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 53
    .line 54
    iput-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 55
    .line 56
    const-string v3, "[Service]"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-class v2, Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 68
    .line 69
    iput-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 70
    .line 71
    const-class v2, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 78
    .line 79
    iput-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 80
    .line 81
    new-instance v11, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;

    .line 82
    .line 83
    invoke-direct {v11}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    .line 87
    .line 88
    iget-object v3, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 89
    .line 90
    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 94
    .line 95
    new-instance v3, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 96
    .line 97
    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 98
    .line 99
    iget-object v5, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 100
    .line 101
    invoke-direct {v3, v0, v2, v5, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;

    .line 105
    .line 106
    iget-object v5, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    iget-object v6, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v5, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    iput-object v12, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 116
    .line 117
    iput-object v0, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 118
    .line 119
    iput-object v3, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    .line 120
    .line 121
    iput-object v1, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/samsung/android/globalactions/presentation/features/Features;

    .line 122
    .line 123
    iput-object v6, v2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 124
    .line 125
    iput-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    .line 128
    .line 129
    .line 130
    new-instance v13, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 131
    .line 132
    iget-object v2, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 133
    .line 134
    const-class v1, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    move-object v5, v1

    .line 141
    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 142
    .line 143
    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object v6, v1

    .line 150
    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    .line 151
    .line 152
    iget-object v7, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 153
    .line 154
    iget-object v8, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 155
    .line 156
    const-class v1, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object v9, v1

    .line 163
    check-cast v9, Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 164
    .line 165
    const-class v1, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    move-object v10, v0

    .line 172
    check-cast v10, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    .line 173
    .line 174
    move-object v0, v13

    .line 175
    move-object v1, p0

    .line 176
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 177
    .line 178
    .line 179
    iput-object v13, v12, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 180
    .line 181
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final showDialog()V
    .locals 13

    .line 1
    new-instance v12, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 18
    .line 19
    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    .line 20
    .line 21
    iget-boolean v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    .line 22
    .line 23
    move-object v0, v12

    .line 24
    move-object v2, p0

    .line 25
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v12, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    .line 29
    .line 30
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
