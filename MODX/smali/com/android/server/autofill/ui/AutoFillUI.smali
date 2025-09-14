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

    .line 4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 12
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 17
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    .line 21
    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 26
    const-class v0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 34
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getContextForResources(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string/jumbo v0, "display"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 13
    if-nez v0, :cond_1

    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_2

    .line 22
    return-object p0

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

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

    .line 3
    const-string v1, "AutofillUI"

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo p0, "destroySaveUiUiThread(): already destroyed"

    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 20
    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "destroySaveUiUiThread(): "

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 42
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 44
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 46
    const/4 v4, 0x1

    .line 47
    :try_start_0
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 49
    if-eqz v5, :cond_3

    .line 51
    const-string v5, "SaveUi"

    .line 53
    const-string/jumbo v6, "destroy()"

    .line 56
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 64
    if-nez v5, :cond_8

    .line 66
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 69
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 71
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 76
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 79
    iput-boolean v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 84
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 87
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 89
    if-eqz p1, :cond_5

    .line 91
    if-eqz p2, :cond_5

    .line 93
    :try_start_1
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 95
    if-eqz p2, :cond_4

    .line 97
    const-string/jumbo p2, "destroySaveUiUiThread(): notifying client"

    .line 100
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 108
    iget p1, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-interface {p2, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    goto :goto_3

    .line 115
    :goto_2
    const-string p2, "Error notifying client to set save UI state to hidden: "

    .line 117
    invoke-static {p2, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 120
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 122
    if-eqz p1, :cond_7

    .line 124
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 126
    if-eqz p1, :cond_6

    .line 128
    const-string/jumbo p1, "start the pending fill UI request.."

    .line 131
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 136
    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 143
    :cond_7
    return-void

    .line 144
    :cond_8
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 146
    const-string/jumbo p1, "cannot interact with a destroyed instance"

    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_4
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 156
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "Autofill UI"

    .line 7
    const-string v3, "  "

    .line 9
    const-string v4, "Night mode: "

    .line 11
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 16
    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 23
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 25
    const-string v4, " (dark)"

    .line 27
    const-string v5, " (light)"

    .line 29
    const-string v6, "(UNKNOWN_MODE)"

    .line 31
    const-string/jumbo v7, "theme id: "

    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, 0x0

    .line 36
    const-string v10, "    "

    .line 38
    if-eqz v2, :cond_b

    .line 40
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "showsFillUi: true"

    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v11, "mCallback: "

    .line 60
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 65
    if-eqz v11, :cond_0

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

    .line 73
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    iget-boolean v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 78
    const-string/jumbo v12, "mVisibleDatasetsMaxCount: "

    .line 81
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 86
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 89
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 91
    if-eqz v11, :cond_1

    .line 93
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v11, "mHeader: "

    .line 99
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 104
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    :cond_1
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 109
    if-eqz v11, :cond_2

    .line 111
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v11, "mListView: "

    .line 117
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 122
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    :cond_2
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 127
    if-eqz v11, :cond_3

    .line 129
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v11, "mFooter: "

    .line 135
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 140
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    :cond_3
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 145
    if-eqz v11, :cond_4

    .line 147
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v12, "mAdapter: "

    .line 153
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 159
    :cond_4
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 161
    if-eqz v11, :cond_6

    .line 163
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v11, "mFilterText: "

    .line 169
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 174
    if-nez v11, :cond_5

    .line 176
    const-string/jumbo v11, "null"

    .line 179
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 186
    move-result v11

    .line 187
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 190
    const-string v11, "_chars"

    .line 192
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    :cond_6
    :goto_1
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v11, "mContentWidth: "

    .line 201
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 206
    const-string/jumbo v12, "mContentHeight: "

    .line 209
    invoke-static {v11, v1, v10, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 214
    const-string/jumbo v12, "mDestroyed: "

    .line 217
    invoke-static {v11, v1, v10, v12}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-boolean v11, v2, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 222
    const-string/jumbo v12, "mContext: "

    .line 225
    invoke-static {v1, v10, v12, v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    iget-object v11, v2, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget v11, v2, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 241
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const v12, 0x103042d

    .line 247
    if-eq v11, v12, :cond_8

    .line 249
    const v12, 0x103043b

    .line 252
    if-eq v11, v12, :cond_7

    .line 254
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    goto :goto_2

    .line 258
    :cond_7
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    goto :goto_2

    .line 262
    :cond_8
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :goto_2
    iget-object v2, v2, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 267
    if-eqz v2, :cond_c

    .line 269
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v11, "mWindow: "

    .line 275
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 281
    const-string v11, "      "

    .line 283
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v12, "showing: "

    .line 289
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-boolean v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 294
    const-string/jumbo v13, "view: "

    .line 297
    invoke-static {v1, v11, v13, v12}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 302
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 305
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 307
    if-eqz v12, :cond_9

    .line 309
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v12, "params: "

    .line 315
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v12, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 320
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 323
    :cond_9
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v11, "screen coordinates: "

    .line 329
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-object v2, v2, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 334
    if-nez v2, :cond_a

    .line 336
    const-string v2, "N/A"

    .line 338
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    goto :goto_3

    .line 342
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    .line 345
    move-result-object v2

    .line 346
    aget v11, v2, v9

    .line 348
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 351
    const-string/jumbo v11, "x"

    .line 354
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    aget v2, v2, v8

    .line 359
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 362
    goto :goto_3

    .line 363
    :cond_b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v2, "showsFillUi: false"

    .line 369
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    :cond_c
    :goto_3
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 374
    const-string/jumbo v11, "destroyed: "

    .line 377
    const-string/jumbo v15, "coordinates: "

    .line 380
    const v12, 0x103043c

    .line 383
    const v8, 0x103042f

    .line 386
    const-string v13, "app: "

    .line 388
    const-string/jumbo v9, "service: "

    .line 391
    if-eqz v2, :cond_f

    .line 393
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v2, "showsSaveUi: true"

    .line 399
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 404
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v14, "title: "

    .line 413
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 418
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v14, "subtitle: "

    .line 427
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 432
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v14, "pendingUi: "

    .line 441
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 446
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 457
    invoke-static {v1, v14, v10, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 462
    invoke-virtual {v14}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 465
    move-result-object v14

    .line 466
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string/jumbo v14, "compat mode: "

    .line 475
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-boolean v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 480
    invoke-static {v1, v10, v7, v14}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    iget v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 485
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 488
    if-eq v14, v8, :cond_e

    .line 490
    if-eq v14, v12, :cond_d

    .line 492
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    goto :goto_4

    .line 496
    :cond_d
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    goto :goto_4

    .line 500
    :cond_e
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    :goto_4
    iget-object v14, v2, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 505
    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 508
    move-result-object v14

    .line 509
    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 512
    move-result-object v14

    .line 513
    invoke-virtual {v14}, Landroid/view/View;->getLocationOnScreen()[I

    .line 516
    move-result-object v19

    .line 517
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    const/16 v12, 0x28

    .line 525
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 528
    const/16 v18, 0x0

    .line 530
    aget v8, v19, v18

    .line 532
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 535
    const/16 v8, 0x2c

    .line 537
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 540
    const/16 v17, 0x1

    .line 542
    aget v8, v19, v17

    .line 544
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 547
    const/16 v8, 0x29

    .line 549
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 552
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 555
    aget v12, v19, v18

    .line 557
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 560
    move-result v16

    .line 561
    add-int v12, v16, v12

    .line 563
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    const/16 v12, 0x2c

    .line 568
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 571
    aget v12, v19, v17

    .line 573
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    .line 576
    move-result v14

    .line 577
    add-int/2addr v14, v12

    .line 578
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 581
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 584
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    iget-boolean v2, v2, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    .line 592
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 595
    goto :goto_5

    .line 596
    :cond_f
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v2, "showsSaveUi: false"

    .line 602
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    :goto_5
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 607
    if-eqz v2, :cond_12

    .line 609
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    const-string/jumbo v2, "showsFillDialog: true"

    .line 615
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    .line 631
    invoke-static {v1, v2, v10, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    .line 636
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    .line 651
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 654
    const v3, 0x103042f

    .line 657
    if-eq v2, v3, :cond_11

    .line 659
    const v3, 0x103043c

    .line 662
    if-eq v2, v3, :cond_10

    .line 664
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    goto :goto_6

    .line 668
    :cond_10
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    goto :goto_6

    .line 672
    :cond_11
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    :goto_6
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 677
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 680
    move-result-object v2

    .line 681
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 684
    move-result-object v2

    .line 685
    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    const/16 v4, 0x28

    .line 697
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 700
    const/4 v5, 0x0

    .line 701
    aget v6, v3, v5

    .line 703
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 706
    const/16 v6, 0x2c

    .line 708
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 711
    const/4 v7, 0x1

    .line 712
    aget v8, v3, v7

    .line 714
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 717
    const/16 v8, 0x29

    .line 719
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 722
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 725
    aget v4, v3, v5

    .line 727
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 730
    move-result v5

    .line 731
    add-int/2addr v5, v4

    .line 732
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 735
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 738
    aget v3, v3, v7

    .line 740
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 743
    move-result v2

    .line 744
    add-int/2addr v2, v3

    .line 745
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 748
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 751
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    iget-boolean v0, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z

    .line 759
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 762
    goto :goto_7

    .line 763
    :cond_12
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    const-string/jumbo v0, "showsFillDialog: false"

    .line 769
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 14
    iget v1, p1, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 16
    const/4 v2, 0x4

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v1, "AutofillUI"

    .line 25
    const-string/jumbo v2, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 34
    :cond_1
    return-void
.end method

.method public final hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 9
    if-ne p1, v1, :cond_3

    .line 11
    :cond_0
    iget-object p1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 13
    const/4 v1, 0x1

    .line 14
    :try_start_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    const-string v2, "DialogFillUi"

    .line 20
    const-string/jumbo v3, "destroy()"

    .line 23
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 31
    if-nez v2, :cond_2

    .line 33
    iget-object v2, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 35
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 38
    iput-boolean v1, v0, Lcom/android/server/autofill/ui/DialogFillUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    const-string/jumbo v0, "cannot interact with a destroyed instance"

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

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

    .line 3
    if-eqz v0, :cond_4

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 9
    if-ne p1, v1, :cond_4

    .line 11
    :cond_0
    iget-boolean p1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 13
    if-nez p1, :cond_3

    .line 15
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 23
    :cond_1
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 25
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDestroy()V

    .line 28
    if-eqz p2, :cond_2

    .line 30
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 32
    iget-object p2, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 34
    iget-object p2, p2, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 36
    if-eqz p2, :cond_2

    .line 38
    iget-object p1, p1, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 40
    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 42
    check-cast p2, Lcom/android/server/autofill/Session;

    .line 44
    iget-object v1, p2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p2, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 49
    iget v3, p2, Lcom/android/server/autofill/Session;->id:I

    .line 51
    invoke-interface {v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUiWhenDestroyed(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 60
    const-string v4, "Error requesting to hide fill UI"

    .line 62
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_0
    iget-object p2, p2, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 67
    invoke-virtual {p2, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

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

    .line 77
    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 83
    const-string/jumbo p1, "cannot interact with a destroyed instance"

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "hideSaveUiUiThread(): mSaveUi="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", callback="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", mCallback="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "AutofillUI"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 51
    if-ne p0, p1, :cond_1

    .line 53
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

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

    .line 3
    const-string/jumbo v1, "showError(): "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AutofillUI"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    .line 25
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method
