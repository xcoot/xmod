.class public final Lcom/android/server/autofill/ui/AutoFillUI;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mContext:Landroid/content/Context;

.field public mContextForResources:Landroid/content/Context;

.field public mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

.field public mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

.field public mFillUi:Lcom/android/server/autofill/ui/FillUi;

.field public final mHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

.field public mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 25
    .line 26
    const-class v0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 42
    .line 43
    return-void
.end method

.method public static getContextForResources(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string/jumbo v0, "display"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public final destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 2
    .line 3
    const-string v1, "AutofillUI"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "destroySaveUiUiThread(): already destroyed"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v2, "destroySaveUiUiThread(): "

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    :try_start_0
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 48
    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const-string v5, "SaveUi"

    .line 52
    .line 53
    const-string/jumbo v6, "destroy()"

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_4

    .line 62
    :cond_3
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    .line 63
    .line 64
    if-nez v5, :cond_8

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 67
    .line 68
    .line 69
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    :try_start_1
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    const-string/jumbo p2, "destroySaveUiUiThread(): notifying client"

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 107
    .line 108
    iget p1, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-interface {p2, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :goto_2
    const-string p2, "Error notifying client to set save UI state to hidden: "

    .line 116
    .line 117
    invoke-static {p2, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 121
    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    const-string/jumbo p1, "start the pending fill UI request.."

    .line 129
    .line 130
    .line 131
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 142
    .line 143
    :cond_7
    return-void

    .line 144
    :cond_8
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    const-string/jumbo p1, "cannot interact with a destroyed instance"

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Autofill UI"

    .line 6
    .line 7
    const-string v3, "  "

    .line 8
    .line 9
    const-string v4, "Night mode: "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 24
    .line 25
    const-string v4, " (dark)"

    .line 26
    .line 27
    const-string v5, " (light)"

    .line 28
    .line 29
    const-string v6, "(UNKNOWN_MODE)"

    .line 30
    .line 31
    const-string/jumbo v7, "theme id: "

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    const-string v10, "    "

    .line 37
    .line 38
    if-eqz v2, :cond_b

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "showsFillUi: true"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v11, "mCallback: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 64
    .line 65
    if-eqz v11, :cond_0

    .line 66
    .line 67
    move v11, v8

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v11, v9

    .line 70
    :goto_0
    const-string/jumbo v12, "mFullScreen: "

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    iget-boolean v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 77
    .line 78
    const-string/jumbo v12, "mVisibleDatasetsMaxCount: "

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 85
    .line 86
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 87
    .line 88
    .line 89
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v11, :cond_1

    .line 92
    .line 93
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v11, "mHeader: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 108
    .line 109
    if-eqz v11, :cond_2

    .line 110
    .line 111
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v11, "mListView: "

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 121
    .line 122
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v11, :cond_3

    .line 128
    .line 129
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v11, "mFooter: "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 144
    .line 145
    if-eqz v11, :cond_4

    .line 146
    .line 147
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v12, "mAdapter: "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v11, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v11, "mFilterText: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 173
    .line 174
    if-nez v11, :cond_5

    .line 175
    .line 176
    const-string/jumbo v11, "null"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 188
    .line 189
    .line 190
    const-string v11, "_chars"

    .line 191
    .line 192
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    :goto_1
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v11, "mContentWidth: "

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 205
    .line 206
    const-string/jumbo v12, "mContentHeight: "

    .line 207
    .line 208
    .line 209
    invoke-static {v11, v1, v10, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 213
    .line 214
    const-string/jumbo v12, "mDestroyed: "

    .line 215
    .line 216
    .line 217
    invoke-static {v11, v1, v10, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-boolean v11, v2, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 221
    .line 222
    const-string/jumbo v12, "mContext: "

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 240
    .line 241
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    .line 243
    .line 244
    const v12, 0x103042d

    .line 245
    .line 246
    .line 247
    if-eq v11, v12, :cond_8

    .line 248
    .line 249
    const v12, 0x103043b

    .line 250
    .line 251
    .line 252
    if-eq v11, v12, :cond_7

    .line 253
    .line 254
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_7
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_8
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :goto_2
    iget-object v2, v2, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 266
    .line 267
    if-eqz v2, :cond_c

    .line 268
    .line 269
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v11, "mWindow: "

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 279
    .line 280
    .line 281
    const-string v11, "      "

    .line 282
    .line 283
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string/jumbo v12, "showing: "

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-boolean v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 293
    .line 294
    const-string/jumbo v13, "view: "

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v11, v13, v12}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    .line 299
    .line 300
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 301
    .line 302
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 306
    .line 307
    if-eqz v12, :cond_9

    .line 308
    .line 309
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string/jumbo v12, "params: "

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 319
    .line 320
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string/jumbo v11, "screen coordinates: "

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 333
    .line 334
    if-nez v2, :cond_a

    .line 335
    .line 336
    const-string v2, "N/A"

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    aget v11, v2, v9

    .line 347
    .line 348
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 349
    .line 350
    .line 351
    const-string/jumbo v11, "x"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    aget v2, v2, v8

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string/jumbo v2, "showsFillUi: false"

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_c
    :goto_3
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 373
    .line 374
    const-string/jumbo v11, "destroyed: "

    .line 375
    .line 376
    .line 377
    const-string/jumbo v15, "coordinates: "

    .line 378
    .line 379
    .line 380
    const v12, 0x103043c

    .line 381
    .line 382
    .line 383
    const v8, 0x103042f

    .line 384
    .line 385
    .line 386
    const-string v13, "app: "

    .line 387
    .line 388
    const-string/jumbo v9, "service: "

    .line 389
    .line 390
    .line 391
    if-eqz v2, :cond_f

    .line 392
    .line 393
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    const-string/jumbo v2, "showsSaveUi: true"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    const-string/jumbo v14, "title: "

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 417
    .line 418
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    const-string/jumbo v14, "subtitle: "

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 431
    .line 432
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string/jumbo v14, "pendingUi: "

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 445
    .line 446
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {v1, v14, v10, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 461
    .line 462
    invoke-virtual {v14}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v14

    .line 466
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    const-string/jumbo v14, "compat mode: "

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-boolean v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 479
    .line 480
    invoke-static {v1, v10, v7, v14}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    .line 482
    .line 483
    iget v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 484
    .line 485
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 486
    .line 487
    .line 488
    if-eq v14, v8, :cond_e

    .line 489
    .line 490
    if-eq v14, v12, :cond_d

    .line 491
    .line 492
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto :goto_4

    .line 496
    :cond_d
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto :goto_4

    .line 500
    :cond_e
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :goto_4
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 504
    .line 505
    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    invoke-virtual {v14}, Landroid/view/View;->getLocationOnScreen()[I

    .line 514
    .line 515
    .line 516
    move-result-object v19

    .line 517
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    const/16 v12, 0x28

    .line 524
    .line 525
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 526
    .line 527
    .line 528
    const/16 v18, 0x0

    .line 529
    .line 530
    aget v8, v19, v18

    .line 531
    .line 532
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 533
    .line 534
    .line 535
    const/16 v8, 0x2c

    .line 536
    .line 537
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 538
    .line 539
    .line 540
    const/16 v17, 0x1

    .line 541
    .line 542
    aget v8, v19, v17

    .line 543
    .line 544
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 545
    .line 546
    .line 547
    const/16 v8, 0x29

    .line 548
    .line 549
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 553
    .line 554
    .line 555
    aget v12, v19, v18

    .line 556
    .line 557
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 558
    .line 559
    .line 560
    move-result v16

    .line 561
    add-int v12, v16, v12

    .line 562
    .line 563
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 564
    .line 565
    .line 566
    const/16 v12, 0x2c

    .line 567
    .line 568
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 569
    .line 570
    .line 571
    aget v12, v19, v17

    .line 572
    .line 573
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 574
    .line 575
    .line 576
    move-result v14

    .line 577
    add-int/2addr v14, v12

    .line 578
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-boolean v2, v2, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 593
    .line 594
    .line 595
    goto :goto_5

    .line 596
    :cond_f
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const-string/jumbo v2, "showsSaveUi: false"

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    :goto_5
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 606
    .line 607
    if-eqz v2, :cond_12

    .line 608
    .line 609
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string/jumbo v2, "showsFillDialog: true"

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 630
    .line 631
    invoke-static {v1, v2, v10, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 635
    .line 636
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 650
    .line 651
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 652
    .line 653
    .line 654
    const v3, 0x103042f

    .line 655
    .line 656
    .line 657
    if-eq v2, v3, :cond_11

    .line 658
    .line 659
    const v3, 0x103043c

    .line 660
    .line 661
    .line 662
    if-eq v2, v3, :cond_10

    .line 663
    .line 664
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    goto :goto_6

    .line 668
    :cond_10
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    goto :goto_6

    .line 672
    :cond_11
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    :goto_6
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 676
    .line 677
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const/16 v4, 0x28

    .line 696
    .line 697
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 698
    .line 699
    .line 700
    const/4 v5, 0x0

    .line 701
    aget v6, v3, v5

    .line 702
    .line 703
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 704
    .line 705
    .line 706
    const/16 v6, 0x2c

    .line 707
    .line 708
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 709
    .line 710
    .line 711
    const/4 v7, 0x1

    .line 712
    aget v8, v3, v7

    .line 713
    .line 714
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 715
    .line 716
    .line 717
    const/16 v8, 0x29

    .line 718
    .line 719
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 723
    .line 724
    .line 725
    aget v4, v3, v5

    .line 726
    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 728
    .line 729
    .line 730
    move-result v5

    .line 731
    add-int/2addr v5, v4

    .line 732
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 736
    .line 737
    .line 738
    aget v3, v3, v7

    .line 739
    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    add-int/2addr v2, v3

    .line 745
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    iget-boolean v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    .line 758
    .line 759
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 760
    .line 761
    .line 762
    goto :goto_7

    .line 763
    :cond_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    const-string/jumbo v0, "showsFillDialog: false"

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    :goto_7
    return-void
.end method

.method public final hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v1, p1, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "AutofillUI"

    .line 24
    .line 25
    const-string/jumbo v2, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 8
    .line 9
    if-ne p1, v1, :cond_3

    .line 10
    .line 11
    :cond_0
    iget-object p1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :try_start_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, "DialogFillUi"

    .line 19
    .line 20
    const-string/jumbo v3, "destroy()"

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string/jumbo v0, "cannot interact with a destroyed instance"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    :goto_2
    return-void
.end method

.method public final hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 8
    .line 9
    if-ne p1, v1, :cond_4

    .line 10
    .line 11
    :cond_0
    iget-boolean p1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 12
    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDestroy()V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 31
    .line 32
    iget-object p2, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 41
    .line 42
    check-cast p2, Lcom/android/server/autofill/Session;

    .line 43
    .line 44
    iget-object v1, p2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p2, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 48
    .line 49
    iget v3, p2, Lcom/android/server/autofill/Session;->id:I

    .line 50
    .line 51
    invoke-interface {v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    :try_start_1
    const-string v3, "AutofillSession"

    .line 59
    .line 60
    const-string v4, "Error requesting to hide fill UI"

    .line 61
    .line 62
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object p2, p2, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_2
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string/jumbo p1, "cannot interact with a destroyed instance"

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_4
    :goto_3
    return-void
.end method

.method public final hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "hideSaveUiUiThread(): mSaveUi="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", callback="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mCallback="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "AutofillUI"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 50
    .line 51
    if-ne p0, p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public final showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "showError(): "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AutofillUI"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    .line 24
    .line 25
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
