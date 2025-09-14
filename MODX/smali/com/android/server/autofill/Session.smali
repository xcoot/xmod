.class public final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;
.implements Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;


# static fields
.field public static final mRequestId:Lcom/android/server/autofill/RequestId;

.field public static final sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field public mActivityToken:Landroid/os/IBinder;

.field public final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field public mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

.field public mAugmentedAutofillableIds:Ljava/util/ArrayList;

.field public mAugmentedRequestsLogs:Ljava/util/ArrayList;

.field public final mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

.field public mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field public mClientState:Landroid/os/Bundle;

.field public mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mContexts:Ljava/util/ArrayList;

.field public mCurrentViewId:Landroid/view/autofill/AutofillId;

.field public final mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

.field public mDelayedFillBroadcastReceiverRegistered:Z

.field public mDelayedFillPendingIntent:Landroid/app/PendingIntent;

.field public mDestroyed:Z

.field public mDisplayId:I

.field public mFieldClassificationIdSnapshot:I

.field public final mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

.field public mFillRequestIdSnapshot:I

.field public final mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

.field public final mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasCallback:Z

.field public final mIgnoreViewStateResetToEmpty:Z

.field public final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field public final mIsPrimaryCredential:Z

.field public mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field public mLastInlineSuggestionsRequest:Landroid/util/Pair;

.field public mLatencyBaseTime:J

.field public final mLock:Ljava/lang/Object;

.field public mLogViewEntered:Z

.field public mLoggedInlineDatasetShown:Z

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

.field public mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

.field public final mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

.field public mPreviouslyFillDialogPotentiallyStarted:Z

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field public mRequestCount:I

.field public final mRequestLogs:Landroid/util/SparseArray;

.field public mResponses:Landroid/util/SparseArray;

.field public final mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

.field public mSaveOnAllViewsInvisible:Z

.field public final mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

.field public mSecondaryResponses:Landroid/util/SparseArray;

.field public mSelectedDatasetIds:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field public final mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

.field public final mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

.field public mSessionState:I

.field public final mStartTime:J

.field public final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final mUiLatencyHistory:Landroid/util/LocalLog;

.field public mUiShownTime:J

.field public mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

.field public final mViewStates:Landroid/util/ArrayMap;

.field public final mWtfHistory:Landroid/util/LocalLog;

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public static -$$Nest$maddCredentialManagerDataToClientState(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillRequest;Landroid/view/inputmethod/InlineSuggestionsRequest;I)Landroid/service/autofill/FillRequest;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Landroid/service/autofill/FillRequest;

    .line 12
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getHints()Ljava/util/List;

    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Landroid/os/Bundle;

    .line 26
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 32
    move-result v6

    .line 33
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getDelayedFillIntentSender()Landroid/content/IntentSender;

    .line 36
    move-result-object v8

    .line 37
    move-object v1, v0

    .line 38
    move-object v7, p2

    .line 39
    invoke-direct/range {v1 .. v8}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V

    .line 42
    move-object p1, v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    .line 46
    move-result-object p2

    .line 47
    const-string v0, "autofill_session_id"

    .line 49
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    .line 55
    move-result-object p2

    .line 56
    const-string p3, "autofill_request_id"

    .line 58
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 61
    move-result v0

    .line 62
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 68
    move-result p2

    .line 69
    new-instance p3, Lcom/android/server/autofill/Session$4;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-direct {p3, p0, v0, p2}, Lcom/android/server/autofill/Session$4;-><init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 79
    move-result-object p0

    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-virtual {p3, p0, p2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroid/os/ResultReceiver;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    .line 101
    move-result-object p0

    .line 102
    const-string p3, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    .line 104
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    return-object p1
.end method

.method public static -$$Nest$mcreatePendingIntent(Lcom/android/server/autofill/Session;I)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "createPendingIntent for request "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "AutofillSession"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 30
    const-string v3, "android.service.autofill.action.DELAYED_FILL"

    .line 32
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v3, "android"

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    .line 43
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    move-result-object p1

    .line 47
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 49
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 51
    const/high16 v3, 0x52000000

    .line 53
    invoke-static {v2, p0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
.end method

.method public static -$$Nest$mfillContextWithAllowedValuesLocked(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 13
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 21
    iget-object v4, v4, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 23
    aput-object v4, v1, v3

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v1}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 37
    move-result v0

    .line 38
    :goto_1
    if-ge v2, v0, :cond_5

    .line 40
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 48
    aget-object v3, p1, v2

    .line 50
    if-nez v3, :cond_1

    .line 52
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 54
    if-eqz v3, :cond_4

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v4, "fillContextWithAllowedValuesLocked(): no node for "

    .line 61
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    const-string v3, "AutofillSession"

    .line 75
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 81
    iget-object v5, v1, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 83
    new-instance v6, Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 85
    invoke-direct {v6}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 88
    if-eqz v5, :cond_2

    .line 90
    invoke-virtual {v5, v4}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 96
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 98
    :cond_2
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 100
    if-eqz v5, :cond_3

    .line 102
    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 104
    invoke-virtual {v5, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    iput-boolean v1, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 110
    if-eqz v1, :cond_3

    .line 112
    and-int/lit8 v1, p2, 0x1

    .line 114
    if-eqz v1, :cond_3

    .line 116
    iput-object v4, v6, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 118
    :cond_3
    invoke-virtual {v3, v6}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 121
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    return-void
.end method

.method public static -$$Nest$mgetTypeHintsForProvider(Lcom/android/server/autofill/Session;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 14
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 16
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    .line 18
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccProviderHints:Ljava/lang/String;

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string v0, "AutofillSession"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "TypeHints flag:"

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 53
    new-instance p0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, ","

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    move-result-object p0

    .line 69
    :goto_0
    return-object p0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public static -$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "AutofillSession"

    .line 3
    if-nez p0, :cond_0

    .line 5
    const-string p0, " Session null"

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 18
    if-eqz p0, :cond_1

    .line 20
    const-string p0, " Session destroyed, but following through"

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/autofill/RequestId;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/util/Random;

    .line 8
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 11
    const/16 v2, 0x3e7

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    add-int/2addr v1, v2

    .line 19
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 21
    if-eqz v3, :cond_0

    .line 23
    const-string v3, "RequestId(): startId= "

    .line 25
    const-string v4, "RequestId"

    .line 27
    invoke-static {v1, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 35
    iput-object v3, v0, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    sput-object v0, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 44
    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v1, p15

    move/from16 v14, p22

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v15, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v15}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v15, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v7, 0x0

    .line 3
    iput v7, v0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 4
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    const/4 v2, -0x2

    .line 5
    iput v2, v0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 6
    iput v2, v0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 7
    new-instance v2, Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 8
    iput v7, v0, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 9
    new-instance v2, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 10
    new-instance v2, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    .line 11
    new-instance v2, Lcom/android/server/autofill/Session$ClassificationState;

    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v6, v2, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 14
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 15
    new-instance v2, Lcom/android/server/autofill/Session$1;

    invoke-direct {v2, v0}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    const/4 v5, 0x0

    if-gez v11, :cond_0

    .line 16
    const-string v2, "Non-positive sessionId: %s"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    iput v11, v0, Lcom/android/server/autofill/Session;->id:I

    move/from16 v4, p20

    .line 18
    iput v4, v0, Lcom/android/server/autofill/Session;->mFlags:I

    move/from16 v3, p5

    .line 19
    iput v3, v0, Lcom/android/server/autofill/Session;->userId:I

    move/from16 v2, p8

    .line 20
    iput v2, v0, Lcom/android/server/autofill/Session;->taskId:I

    .line 21
    iput v12, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 22
    iput-object v8, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 23
    iput-object v10, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    move-object/from16 v2, p2

    .line 24
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    move-object/from16 v2, p4

    .line 25
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 26
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040316

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 28
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 29
    const-string v5, "AutofillSession"

    const-string v7, "Invalid CredentialAutofillService"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v14, :cond_4

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v7, v1

    move-object v5, v6

    goto :goto_1

    :cond_3
    move-object v5, v6

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move-object v5, v1

    move-object v7, v6

    .line 31
    :goto_1
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Primary service component name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", secondary service component name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v20, v15

    const/4 v5, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto :goto_2

    .line 32
    :cond_5
    new-instance v19, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    move-object v3, v5

    move/from16 v4, p5

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v17, v6

    move-object/from16 v20, v15

    const/4 v15, 0x1

    move/from16 v6, p18

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    move-object/from16 v5, v19

    :goto_2
    iput-object v5, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v18, :cond_6

    :goto_3
    move-object/from16 v5, v16

    goto :goto_4

    .line 33
    :cond_6
    new-instance v16, Lcom/android/server/autofill/SecondaryProviderHandler;

    new-instance v5, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p18

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/SecondaryProviderHandler;-><init>(Landroid/content/Context;IZLcom/android/server/autofill/Session$$ExternalSyntheticLambda0;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_3

    :goto_4
    iput-object v5, v0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 34
    iput-object v13, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    move/from16 v1, p12

    .line 35
    iput-boolean v1, v0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    move-object/from16 v1, p13

    .line 36
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    move-object/from16 v1, p14

    .line 37
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 38
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 39
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 40
    const-string/jumbo v2, "getDisplayId: No activity record matching token="

    .line 41
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 43
    :try_start_0
    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 44
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 46
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    const-string v3, "AutofillHelper"

    if-ne v1, v2, :cond_8

    .line 47
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_b

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v9, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 49
    const-string/jumbo v2, "getDisplayContext(): context %s already has displayId %d"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    :cond_8
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_9

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Creating context for display %d"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_9
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_a

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 54
    const-string v2, "Could not get context with displayId %d, Autofill operations will probably fail)"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 55
    :cond_a
    invoke-virtual {v9, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 56
    :cond_b
    :goto_5
    iput-object v9, v0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    move-object/from16 v1, p16

    .line 57
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move/from16 v2, p17

    .line 58
    iput-boolean v2, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 59
    iput v15, v0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 61
    iput-wide v2, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    const/4 v4, 0x0

    .line 62
    iput v4, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 63
    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger;

    invoke-direct {v5, v11, v12, v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger;-><init>(IIJ)V

    .line 64
    iput-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 65
    new-instance v2, Lcom/android/server/autofill/FillRequestEventLogger;

    invoke-direct {v2, v11}, Lcom/android/server/autofill/FillRequestEventLogger;-><init>(I)V

    .line 66
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 67
    new-instance v2, Lcom/android/server/autofill/FillResponseEventLogger;

    invoke-direct {v2, v11}, Lcom/android/server/autofill/FillResponseEventLogger;-><init>(I)V

    .line 68
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 69
    new-instance v2, Lcom/android/server/autofill/SessionCommittedEventLogger;

    invoke-direct {v2, v11}, Lcom/android/server/autofill/SessionCommittedEventLogger;-><init>(I)V

    .line 70
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 71
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 72
    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v3, v12, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 73
    iget-wide v2, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 74
    new-instance v5, Lcom/android/server/autofill/SaveEventLogger;

    invoke-direct {v5, v11, v2, v3}, Lcom/android/server/autofill/SaveEventLogger;-><init>(IJ)V

    .line 75
    iput-object v5, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 76
    iput-boolean v14, v0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 77
    invoke-static {}, Landroid/view/autofill/AutofillFeatureFlags;->shouldIgnoreViewStateResetToEmpty()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    .line 78
    monitor-enter p6

    .line 79
    :try_start_1
    new-instance v2, Lcom/android/server/autofill/Session$SessionFlags;

    .line 80
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    move/from16 v3, p19

    .line 82
    iput-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 83
    iget-object v3, v8, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mInfo:Landroid/service/autofill/AutofillServiceInfo;

    if-eqz v3, :cond_c

    .line 84
    invoke-virtual {v3}, Landroid/service/autofill/AutofillServiceInfo;->isInlineSuggestionsEnabled()Z

    move-result v7

    goto :goto_6

    :cond_c
    move v7, v4

    .line 85
    :goto_6
    iput-boolean v7, v2, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    move-object/from16 v2, p11

    .line 86
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 87
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->supportFoldableNoSubDisplay()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 89
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v2

    iput v2, v0, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 90
    :cond_d
    new-instance v2, Lcom/android/server/autofill/AutofillInlineSessionController;

    new-instance v3, Lcom/android/server/autofill/Session$2;

    invoke-direct {v3, v0}, Lcom/android/server/autofill/Session$2;-><init>(Lcom/android/server/autofill/Session;)V

    move-object/from16 p7, v2

    move-object/from16 p8, p21

    move/from16 p9, p5

    move-object/from16 p10, p16

    move-object/from16 p11, p4

    move-object/from16 p12, p6

    move-object/from16 p13, v3

    invoke-direct/range {p7 .. p13}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/Session$2;)V

    iput-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    const/16 v1, 0x38a

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 92
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x5ac

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    move-object/from16 v2, v20

    .line 93
    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 94
    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_2
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 96
    :cond_e
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 21
    iget-object v2, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 23
    check-cast v2, Ljava/util/Set;

    .line 25
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 31
    iget-object v2, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 33
    check-cast v2, Ljava/util/Map;

    .line 35
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Set;

    .line 43
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v2, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 52
    check-cast v2, Ljava/util/Map;

    .line 54
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Set;

    .line 62
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 64
    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 69
    check-cast v4, Ljava/util/Set;

    .line 71
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 76
    check-cast v4, Ljava/util/Map;

    .line 78
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v4, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 83
    check-cast v4, Ljava/util/Set;

    .line 85
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v2

    .line 92
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroid/service/autofill/Dataset;

    .line 104
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v4

    .line 112
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 124
    invoke-virtual {v5, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_3

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object v6, p1, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 133
    check-cast v6, Ljava/util/Map;

    .line 135
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 137
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Ljava/util/Set;

    .line 143
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    return-void
.end method

.method public static copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/view/autofill/AutofillValue;

    .line 14
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p9, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    instance-of p3, p1, Ljava/lang/Number;

    .line 7
    if-nez p3, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 16
    move-result p1

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    const-string p3, ", "

    .line 21
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    const/16 p2, 0x3d

    .line 29
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 35
    :cond_1
    return-void
.end method

.method public static getActivityDisplayId(Landroid/os/IBinder;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "AutofillSession"

    .line 13
    const-string v1, "Error in getActivityDisplayId"

    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public static sessionStateAsString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string v0, "UNKNOWN_SESSION_STATE_"

    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "STATE_REMOVED"

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "STATE_FINISHED"

    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "STATE_ACTIVE"

    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "STATE_UNKNOWN"

    .line 30
    return-object p0
.end method


# virtual methods
.method public final addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/metrics/LogMaker;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "addTaggedDataToRequestLogLocked(tag="

    .line 13
    const-string p3, "): no log for id "

    .line 15
    const-string v0, "AutofillSession"

    .line 17
    invoke-static {p2, p1, p0, p3, v0}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 24
    return-void
.end method

.method public final authenticate(ILandroid/content/IntentSender;Landroid/os/Bundle;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const-string v2, "Call to Session#authenticate() rejected - session: "

    .line 7
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 9
    if-eqz v3, :cond_0

    .line 11
    const-string v3, "AutofillSession"

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    const-string v5, "authenticate(): requestId="

    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v5, "; datasetIdx=65535; intentSender="

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-object/from16 v5, p2

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object/from16 v5, p2

    .line 43
    :goto_0
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v3

    .line 46
    :try_start_0
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 48
    iget-object v4, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 50
    new-instance v6, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 52
    const/4 v7, 0x2

    .line 53
    const/4 v8, 0x1

    .line 54
    invoke-direct {v6, v7, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 57
    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 60
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 62
    if-eqz v4, :cond_1

    .line 64
    const-string v1, "AutofillSession"

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, " destroyed"

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v3

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto/16 :goto_3

    .line 93
    :cond_1
    move-object/from16 v2, p3

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    .line 98
    move-result-object v6

    .line 99
    const/4 v2, 0x0

    .line 100
    if-nez v6, :cond_2

    .line 102
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 105
    monitor-exit v3

    .line 106
    return-void

    .line 107
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 110
    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    .line 112
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 114
    iget-object v15, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 116
    monitor-enter v15

    .line 117
    :try_start_1
    const-string/jumbo v8, "setAuthenticationSelected()"

    .line 120
    invoke-virtual {v3, v4, v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_3

    .line 126
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 128
    new-instance v4, Landroid/service/autofill/FillEventHistory$Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    const/16 v16, 0x0

    .line 132
    const/16 v17, 0x0

    .line 134
    const/16 v18, 0x0

    .line 136
    const/16 v19, 0x0

    .line 138
    const/16 v20, 0x0

    .line 140
    const/16 v21, 0x0

    .line 142
    const/4 v9, 0x2

    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x0

    .line 147
    move-object v8, v4

    .line 148
    move-object/from16 v22, v15

    .line 150
    move-object/from16 v15, v16

    .line 152
    move-object/from16 v16, v17

    .line 154
    move-object/from16 v17, v18

    .line 156
    move-object/from16 v18, v19

    .line 158
    move-object/from16 v19, v20

    .line 160
    move/from16 v20, v21

    .line 162
    move/from16 v21, p4

    .line 164
    :try_start_2
    invoke-direct/range {v8 .. v21}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 167
    invoke-virtual {v3, v4}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 170
    goto :goto_1

    .line 171
    :catchall_1
    move-exception v0

    .line 172
    goto :goto_2

    .line 173
    :catchall_2
    move-exception v0

    .line 174
    move-object/from16 v22, v15

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    move-object/from16 v22, v15

    .line 179
    :goto_1
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    const v3, 0xffff

    .line 183
    invoke-static {v1, v3}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    .line 186
    move-result v1

    .line 187
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v3, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;

    .line 191
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v4

    .line 198
    move/from16 v1, p4

    .line 200
    if-ne v1, v7, :cond_4

    .line 202
    const/4 v2, 0x1

    .line 203
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 206
    move-result-object v7

    .line 207
    move-object v1, v3

    .line 208
    move-object/from16 v2, p0

    .line 210
    move-object v3, v4

    .line 211
    move-object/from16 v4, p2

    .line 213
    move-object v5, v6

    .line 214
    move-object v6, v7

    .line 215
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    return-void

    .line 223
    :goto_2
    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    throw v0

    .line 225
    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    throw v0
.end method

.method public final autoFill(IILandroid/service/autofill/Dataset;ZI)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v7, p1

    .line 5
    move/from16 v8, p2

    .line 7
    move-object/from16 v9, p3

    .line 9
    const-string v1, "Call to Session#autoFill() rejected - session: "

    .line 11
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v2, "AutofillSession"

    .line 17
    const-string v3, "autoFill(): requestId="

    .line 19
    const-string v4, "; datasetIdx="

    .line 21
    const-string v5, "; dataset="

    .line 23
    invoke-static {v7, v8, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v10

    .line 40
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 42
    if-eqz v2, :cond_1

    .line 44
    const-string v2, "AutofillSession"

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, " destroyed"

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    monitor-exit v10

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_6

    .line 73
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 75
    iget-object v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 77
    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v3, v8, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 86
    iget-object v2, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 88
    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;

    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-direct {v3, v1, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    .line 94
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 97
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    .line 102
    move-result v2

    .line 103
    iget-object v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 105
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    .line 107
    const/4 v5, 0x1

    .line 108
    invoke-direct {v4, v2, v5, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;)V

    .line 111
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 117
    move-result-object v1

    .line 118
    if-nez v1, :cond_5

    .line 120
    if-eqz p4, :cond_3

    .line 122
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 127
    move-result-object v13

    .line 128
    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    .line 130
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 132
    iget-object v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 134
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    const-string/jumbo v4, "logDatasetSelected()"

    .line 138
    invoke-virtual {v1, v2, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_2

    .line 144
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 146
    new-instance v2, Landroid/service/autofill/FillEventHistory$Event;

    .line 148
    const/16 v18, 0x0

    .line 150
    const/16 v19, 0x0

    .line 152
    const/16 v20, 0x0

    .line 154
    const/16 v21, 0x0

    .line 156
    const/16 v22, 0x0

    .line 158
    const/16 v23, 0x0

    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v15, 0x0

    .line 162
    const/16 v16, 0x0

    .line 164
    const/16 v17, 0x0

    .line 166
    move-object v11, v2

    .line 167
    move/from16 v24, p5

    .line 169
    invoke-direct/range {v11 .. v24}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 175
    goto :goto_0

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    :goto_0
    monitor-exit v3

    .line 179
    goto :goto_2

    .line 180
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    :try_start_2
    throw v0

    .line 182
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 184
    if-eqz v1, :cond_4

    .line 186
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 188
    invoke-virtual {v2, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 191
    :cond_4
    invoke-virtual {v0, v9}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 194
    monitor-exit v10

    .line 195
    return-void

    .line 196
    :cond_5
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 201
    move-result-object v13

    .line 202
    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    .line 204
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 206
    iget-object v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 208
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :try_start_3
    const-string/jumbo v4, "logDatasetAuthenticationSelected()"

    .line 212
    invoke-virtual {v1, v2, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_6

    .line 218
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 220
    new-instance v2, Landroid/service/autofill/FillEventHistory$Event;

    .line 222
    const/16 v18, 0x0

    .line 224
    const/16 v19, 0x0

    .line 226
    const/16 v20, 0x0

    .line 228
    const/16 v21, 0x0

    .line 230
    const/16 v22, 0x0

    .line 232
    const/16 v23, 0x0

    .line 234
    const/4 v12, 0x1

    .line 235
    const/4 v15, 0x0

    .line 236
    const/16 v16, 0x0

    .line 238
    const/16 v17, 0x0

    .line 240
    move-object v11, v2

    .line 241
    move/from16 v24, p5

    .line 243
    invoke-direct/range {v11 .. v24}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 246
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 249
    goto :goto_3

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    goto :goto_5

    .line 252
    :cond_6
    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 253
    :try_start_4
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 255
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 257
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 259
    const/4 v3, 0x1

    .line 260
    const/4 v4, 0x1

    .line 261
    invoke-direct {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 264
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 267
    const/4 v2, 0x0

    .line 268
    const/16 v4, 0x40

    .line 270
    const/4 v5, 0x0

    .line 271
    const/4 v6, 0x1

    .line 272
    move-object/from16 v1, p0

    .line 274
    move-object/from16 v3, p3

    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    .line 282
    move-result-object v1

    .line 283
    if-eqz v1, :cond_7

    .line 285
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_7

    .line 291
    const-string v1, "AutofillSession"

    .line 293
    const-string v2, "Setting credential fill intent"

    .line 295
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getCredentialFillInIntent()Landroid/content/Intent;

    .line 301
    move-result-object v1

    .line 302
    goto :goto_4

    .line 303
    :cond_7
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 305
    invoke-virtual {v0, v7, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    .line 308
    move-result-object v1

    .line 309
    :goto_4
    const/4 v2, 0x0

    .line 310
    if-nez v1, :cond_8

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 315
    monitor-exit v10

    .line 316
    return-void

    .line 317
    :cond_8
    invoke-static/range {p1 .. p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    .line 320
    move-result v3

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 328
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    return-void

    .line 330
    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 331
    :try_start_6
    throw v0

    .line 332
    :goto_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 333
    throw v0
.end method

.method public final autoFillApp(Landroid/service/autofill/Dataset;)V
    .locals 13

    .line 1
    const-string v0, "Call to Session#autoFillApp() rejected - session: "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string p1, "AutofillSession"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, " destroyed"

    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_5

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-ne v0, v4, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 71
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 73
    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 79
    move v6, v4

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto/16 :goto_3

    .line 84
    :cond_1
    move v6, v5

    .line 85
    :goto_0
    move v7, v5

    .line 86
    :goto_1
    if-ge v5, v0, :cond_6

    .line 88
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v8

    .line 96
    if-nez v8, :cond_2

    .line 98
    goto/16 :goto_2

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 110
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v9

    .line 116
    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 118
    iget-object v10, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 120
    iget-object v10, v10, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 122
    check-cast v10, Lcom/android/server/autofill/AutofillManagerService;

    .line 124
    iget-object v11, v10, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 126
    monitor-enter v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    iget-boolean v10, v10, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    .line 129
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    if-eqz v10, :cond_3

    .line 132
    if-eqz v9, :cond_3

    .line 134
    :try_start_3
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 136
    invoke-virtual {v10}, Landroid/view/autofill/AutofillId;->getSessionId()I

    .line 139
    move-result v10

    .line 140
    iget v11, p0, Lcom/android/server/autofill/Session;->id:I

    .line 142
    if-eq v10, v11, :cond_3

    .line 144
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 146
    if-eqz v9, :cond_5

    .line 148
    const-string v9, "AutofillSession"

    .line 150
    new-instance v10, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v11, "Skipping filling view: "

    .line 157
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v8, " as it isn\'t part of the current session: "

    .line 165
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    .line 170
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v8

    .line 177
    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 187
    move-result-object v10

    .line 188
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Landroid/view/autofill/AutofillValue;

    .line 194
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    if-eqz v9, :cond_5

    .line 199
    iget v10, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 201
    const/16 v11, 0x40

    .line 203
    and-int/2addr v10, v11

    .line 204
    if-eqz v10, :cond_5

    .line 206
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 208
    if-eqz v7, :cond_4

    .line 210
    const-string v7, "AutofillSession"

    .line 212
    new-instance v10, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v12, "autofillApp(): view "

    .line 219
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    const-string v8, " waiting auth"

    .line 227
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v8

    .line 234
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_4
    invoke-virtual {v9, v11}, Lcom/android/server/autofill/ViewState;->resetState(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    move v7, v4

    .line 241
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 243
    goto/16 :goto_1

    .line 245
    :catchall_1
    move-exception p0

    .line 246
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    :try_start_5
    throw p0

    .line 248
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_c

    .line 254
    if-eqz v7, :cond_7

    .line 256
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 258
    iget-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v5, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 262
    const/4 v7, 0x3

    .line 263
    invoke-direct {v5, v0, p0, v7}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 266
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_7
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 271
    if-eqz v0, :cond_8

    .line 273
    const-string v0, "AutofillSession"

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string v5, "Total views to be autofilled: "

    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 288
    move-result v5

    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 296
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 301
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 303
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    .line 305
    const/4 v5, 0x2

    .line 306
    invoke-direct {v4, v5, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 309
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 312
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 314
    if-eqz v0, :cond_9

    .line 316
    const-string v0, "AutofillSession"

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const-string v5, "autoFillApp(): the buck is on the app: "

    .line 325
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v4

    .line 335
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 340
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    .line 342
    invoke-interface {v0, v4, v2, v3, v6}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 345
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 349
    if-eqz v0, :cond_b

    .line 351
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 353
    if-nez v0, :cond_a

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    .line 357
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 362
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_b
    const/4 v3, 0x0

    .line 372
    const/4 v5, 0x4

    .line 373
    const/4 v6, 0x0

    .line 374
    const/4 v7, 0x1

    .line 375
    move-object v2, p0

    .line 376
    move-object v4, p1

    .line 377
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    goto :goto_4

    .line 381
    :goto_3
    :try_start_6
    const-string p1, "AutofillSession"

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    const-string v2, "Error autofilling activity: "

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object p0

    .line 400
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_c
    :goto_4
    monitor-exit v1

    .line 404
    return-void

    .line 405
    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 406
    throw p0
.end method

.method public final callSaveLocked()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AutofillSession"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "Call to Session#callSaveLocked() rejected - session: "

    .line 12
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 17
    const-string v4, " destroyed"

    .line 19
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 24
    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 26
    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 28
    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 42
    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 46
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v0

    .line 52
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x0

    .line 57
    const-string/jumbo v3, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    .line 60
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 65
    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 67
    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 69
    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 75
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 80
    return-void

    .line 81
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 83
    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v3, "callSaveLocked("

    .line 90
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "): mViewStates="

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 117
    if-nez v0, :cond_3

    .line 119
    const-string/jumbo v0, "callSaveLocked(): no contexts"

    .line 122
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 127
    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 129
    new-instance v2, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 131
    invoke-direct {v2, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 139
    invoke-virtual {p0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 142
    return-void

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 149
    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 156
    iget-object v1, v1, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 158
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 160
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 166
    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 180
    if-nez v2, :cond_4

    .line 182
    new-instance v2, Landroid/os/Bundle;

    .line 184
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 196
    move-result-object v1

    .line 197
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    const-string/jumbo v1, "detections"

    .line 203
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 206
    :cond_5
    new-instance v1, Landroid/service/autofill/SaveRequest;

    .line 208
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 210
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 212
    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 215
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;

    .line 222
    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 228
    move-result-object v0

    .line 229
    const-wide/16 v1, 0x1388

    .line 231
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;

    .line 239
    invoke-direct {v1, p0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 245
    return-void
.end method

.method public final cancelAugmentedAutofillLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "AutofillSession"

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string/jumbo p0, "cancelAugmentedAutofillLocked(): no service for user"

    .line 14
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void

    .line 18
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v3, "cancelAugmentedAutofillLocked() on "

    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    new-instance p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 50
    return-void
.end method

.method public final cancelCurrentRequestLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v0

    .line 13
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string/jumbo v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    .line 21
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    .line 28
    move-result v0

    .line 29
    const/high16 v1, -0x80000000

    .line 31
    if-eq v0, v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 35
    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v1

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 43
    :goto_0
    if-ltz v1, :cond_3

    .line 45
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/service/autofill/FillContext;

    .line 53
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getRequestId()I

    .line 56
    move-result v2

    .line 57
    if-ne v2, v0, :cond_2

    .line 59
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 61
    if-eqz v2, :cond_1

    .line 63
    const-string/jumbo v2, "cancelCurrentRequest(): id = "

    .line 66
    const-string v3, "AutofillSession"

    .line 68
    invoke-static {v0, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method public final cancelSave()V
    .locals 4

    .line 1
    const-string v0, "Call to Session#cancelSave() rejected - session: "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 8
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 11
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v2, "AutofillSession"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 24
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, " destroyed"

    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v1, v2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;-><init>(I)V

    .line 52
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void

    .line 60
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 18
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    const-string/jumbo v0, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    .line 26
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-object p2

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 32
    if-eqz v2, :cond_1

    .line 34
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    if-ne v2, p1, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 46
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    check-cast p0, Landroid/os/Parcelable;

    .line 50
    const-string p1, "android.view.autofill.extra.INLINE_SUGGESTIONS_REQUEST"

    .line 52
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    :cond_1
    const-string p0, "android.view.autofill.extra.ASSIST_STRUCTURE"

    .line 57
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const-string p0, "android.view.autofill.extra.CLIENT_STATE"

    .line 66
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public final createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/android/server/autofill/ViewState;

    .line 17
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 19
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 22
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "Adding autofillable view with id "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, " and state "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "AutofillSession"

    .line 50
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 59
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    and-int/lit8 p0, p2, 0x4

    .line 66
    if-eqz p0, :cond_2

    .line 68
    iput-object p3, v0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 70
    :cond_2
    return-object v0
.end method

.method public final createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object p2, p2, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 5
    check-cast p2, Ljava/util/Set;

    .line 7
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_7

    .line 16
    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 39
    move-result v1

    .line 40
    and-int/lit8 v1, v1, 0x4

    .line 42
    if-eqz v1, :cond_0

    .line 44
    goto/16 :goto_4

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 51
    iget-object v2, v2, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 53
    if-eqz v2, :cond_6

    .line 55
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 61
    goto/16 :goto_2

    .line 63
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    .line 65
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 68
    invoke-virtual {p2}, Landroid/service/autofill/SaveInfo;->getType()I

    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_2

    .line 74
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v2

    .line 82
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/util/Set;

    .line 94
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    invoke-static {v4}, Lcom/android/server/autofill/HintsHelper;->getHintsForSaveType(I)Ljava/util/Set;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v2

    .line 112
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_4

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/lang/String;

    .line 130
    move-object v7, v4

    .line 131
    check-cast v7, Landroid/util/ArraySet;

    .line 133
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_3

    .line 139
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Ljava/util/Collection;

    .line 145
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_5

    .line 155
    monitor-exit v1

    .line 156
    goto :goto_4

    .line 157
    :cond_5
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 160
    move-result v2

    .line 161
    new-array v2, v2, [Landroid/view/autofill/AutofillId;

    .line 163
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 165
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 167
    new-instance v4, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 169
    const/4 v5, 0x1

    .line 170
    invoke-direct {v4, v5}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 173
    invoke-virtual {p0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 176
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 179
    invoke-static {p2, v2}, Landroid/service/autofill/SaveInfo;->copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;

    .line 182
    move-result-object p2

    .line 183
    monitor-exit v1

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    :goto_2
    monitor-exit v1

    .line 186
    goto :goto_4

    .line 187
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    throw p0

    .line 189
    :cond_7
    :goto_4
    invoke-static {p1, v0, p2}, Landroid/service/autofill/FillResponse;->shallowCopy(Landroid/service/autofill/FillResponse;Ljava/util/List;Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse;

    .line 192
    move-result-object p0

    .line 193
    return-object p0
.end method

.method public final destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 5
    const-string v2, "AutofillSession"

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "destroyLocked for session: "

    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 19
    invoke-static {v1, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    :cond_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v3, "logAllEvents("

    .line 31
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, "): commitReason: 5"

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 53
    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 55
    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 57
    const/4 v4, 0x5

    .line 58
    const/4 v5, 0x1

    .line 59
    invoke-direct {v3, v4, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 65
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 67
    iget v3, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 69
    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 71
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 77
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 80
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    move-result-wide v3

    .line 86
    iget-wide v5, v0, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 88
    sub-long/2addr v3, v5

    .line 89
    iget-object v1, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 91
    new-instance v5, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;

    .line 93
    invoke-direct {v5, v3, v4}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda1;-><init>(J)V

    .line 96
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 99
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 101
    invoke-virtual {v1}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 104
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 106
    invoke-virtual {v1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 109
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 111
    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 114
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 116
    invoke-virtual {v1}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 119
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 121
    iget-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 123
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 126
    move-result v3

    .line 127
    const-string v4, "SessionCommittedEventLogger"

    .line 129
    if-nez v3, :cond_2

    .line 131
    const-string v1, "Shouldn\'t be logging AutofillSessionCommitted again for same session."

    .line 133
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto/16 :goto_0

    .line 138
    :cond_2
    iget-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 140
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;

    .line 146
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 148
    if-eqz v5, :cond_3

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 152
    const-string v6, "Log AutofillSessionCommitted: sessionId="

    .line 154
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    iget v6, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v6, " mComponentPackageUid="

    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v6, " mRequestCount="

    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v6, " mCommitReason="

    .line 184
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v6, " mSessionDurationMillis="

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-wide v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 199
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    const-string v6, " mServiceUid="

    .line 204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v6, " mSaveInfoCount="

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v6, " mSaveDataTypeCount="

    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const-string v6, " mLastFillResponseHasSaveInfo="

    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-boolean v6, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    .line 239
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 242
    :cond_3
    iget v9, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mComponentPackageUid:I

    .line 244
    iget v4, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mRequestCount:I

    .line 246
    int-to-long v10, v4

    .line 247
    iget v12, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mCommitReason:I

    .line 249
    iget-wide v13, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSessionDurationMillis:J

    .line 251
    iget v15, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mServiceUid:I

    .line 253
    iget v4, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveInfoCount:I

    .line 255
    iget v5, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mSaveDataTypeCount:I

    .line 257
    iget-boolean v3, v3, Lcom/android/server/autofill/SessionCommittedEventLogger$SessionCommittedEventInternal;->mLastFillResponseHasSaveInfo:Z

    .line 259
    const/16 v7, 0x25f

    .line 261
    iget v8, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mSessionId:I

    .line 263
    move/from16 v16, v4

    .line 265
    move/from16 v17, v5

    .line 267
    move/from16 v18, v3

    .line 269
    invoke-static/range {v7 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJIIIZ)V

    .line 272
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 275
    move-result-object v3

    .line 276
    iput-object v3, v1, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 278
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 280
    const/4 v3, 0x0

    .line 281
    if-eqz v1, :cond_4

    .line 283
    return-object v3

    .line 284
    :cond_4
    const-string/jumbo v1, "clearPendingIntentLocked"

    .line 287
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    .line 292
    if-nez v1, :cond_5

    .line 294
    goto :goto_1

    .line 295
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 298
    move-result-wide v4

    .line 299
    :try_start_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;

    .line 301
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 304
    iput-object v3, v0, Lcom/android/server/autofill/Session;->mDelayedFillPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 315
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 317
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 319
    iget-object v5, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 321
    new-instance v6, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    .line 323
    const/4 v7, 0x1

    .line 324
    invoke-direct {v6, v1, v4, v0, v7}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 327
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 332
    iget-object v4, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 334
    new-instance v5, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 336
    const/4 v6, 0x4

    .line 337
    invoke-direct {v5, v1, v0, v6}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 340
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 345
    if-eqz v1, :cond_7

    .line 347
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 349
    iget-object v5, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 351
    if-eqz v5, :cond_6

    .line 353
    new-instance v6, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 355
    invoke-direct {v6, v1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 358
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 361
    iget-object v1, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 363
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    .line 366
    iput-object v3, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 368
    :cond_6
    iput-object v3, v4, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 370
    :cond_7
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 372
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 375
    move-result-object v1

    .line 376
    if-eqz v1, :cond_8

    .line 378
    iget v3, v0, Lcom/android/server/autofill/Session;->userId:I

    .line 380
    iget v4, v0, Lcom/android/server/autofill/Session;->id:I

    .line 382
    invoke-virtual {v1, v3, v4}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 385
    :cond_8
    iput-boolean v7, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 387
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 389
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 392
    move-result v1

    .line 393
    const-string/jumbo v3, "destroyLocked(): logging "

    .line 396
    const/4 v4, 0x0

    .line 397
    if-lez v1, :cond_a

    .line 399
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 401
    if-eqz v5, :cond_9

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    .line 405
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string v6, " requests"

    .line 413
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v5

    .line 420
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_9
    move v5, v4

    .line 424
    :goto_2
    if-ge v5, v1, :cond_a

    .line 426
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 428
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Landroid/metrics/LogMaker;

    .line 434
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 436
    invoke-virtual {v8, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 439
    add-int/lit8 v5, v5, 0x1

    .line 441
    goto :goto_2

    .line 442
    :cond_a
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 444
    if-nez v5, :cond_b

    .line 446
    move v5, v4

    .line 447
    goto :goto_3

    .line 448
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 451
    move-result v5

    .line 452
    :goto_3
    if-lez v5, :cond_d

    .line 454
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 456
    if-eqz v6, :cond_c

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    .line 460
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v3, " augmented requests"

    .line 468
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    move-result-object v3

    .line 475
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_c
    :goto_4
    if-ge v4, v5, :cond_d

    .line 480
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    move-result-object v2

    .line 486
    check-cast v2, Landroid/metrics/LogMaker;

    .line 488
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 490
    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 493
    add-int/lit8 v4, v4, 0x1

    .line 495
    goto :goto_4

    .line 496
    :cond_d
    const/16 v2, 0x397

    .line 498
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 501
    move-result-object v2

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    move-result-object v1

    .line 506
    const/16 v3, 0x5af

    .line 508
    invoke-virtual {v2, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 511
    move-result-object v1

    .line 512
    if-lez v5, :cond_e

    .line 514
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    move-result-object v2

    .line 518
    const/16 v3, 0x65f

    .line 520
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 523
    :cond_e
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 525
    iget-boolean v2, v2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 527
    if-eqz v2, :cond_f

    .line 529
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    move-result-object v2

    .line 533
    const/16 v3, 0x6b8

    .line 535
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 538
    :cond_f
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 540
    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 543
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 545
    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    .line 547
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw v0
.end method

.method public final fill(IILandroid/service/autofill/Dataset;I)V
    .locals 8

    .line 1
    const-string v0, "Call to Session#fill() rejected - session: "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string p1, "AutofillSession"

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, " destroyed"

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 54
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v7

    .line 60
    move-object v2, p0

    .line 61
    move-object v5, p3

    .line 62
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void

    .line 70
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_5

    .line 35
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v3

    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 43
    :goto_0
    if-ltz v3, :cond_2

    .line 45
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/service/autofill/FillContext;

    .line 53
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-direct {v5, v6, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 63
    invoke-static {v4, v5}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    .line 78
    move-result-object p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move-object p0, v2

    .line 84
    :goto_1
    if-eqz p0, :cond_4

    .line 86
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    .line 89
    move-result p1

    .line 90
    aget-object p0, p0, p1

    .line 92
    if-eqz p0, :cond_3

    .line 94
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    :cond_3
    monitor-exit v0

    .line 99
    return-object v2

    .line 100
    :cond_4
    const-string p0, "AutofillSession"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string/jumbo v3, "findByAutofillId(): no autofill options for id "

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    monitor-exit v0

    .line 124
    return-object v2

    .line 125
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 9
    const-string v1, "AutofillSession"

    .line 11
    if-nez v0, :cond_1

    .line 13
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v0, "findValueLocked(): no view state for "

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 39
    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 47
    :cond_2
    iget-object v0, v0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 49
    if-eqz v0, :cond_4

    .line 51
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 57
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 59
    if-eqz p0, :cond_3

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v2, "findValueLocked(): current value for "

    .line 66
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string p1, " is empty, using candidateSaveValue instead."

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    return-object v0

    .line 85
    :cond_4
    if-nez v2, :cond_5

    .line 87
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 89
    if-eqz v0, :cond_5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v2, "findValueLocked(): no current value for "

    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, ", checking value from previous fill contexts"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 117
    move-result-object v2

    .line 118
    :cond_5
    return-object v2
.end method

.method public final findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 28
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 30
    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v2, "findValueLocked(): looking on "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, " previous sessions for autofillId "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "AutofillSession"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v2

    .line 69
    if-ge v1, v2, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 77
    invoke-virtual {v2, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v2}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const/4 p0, 0x0

    .line 100
    return-object p0
.end method

.method public final forceRemoveFromServiceLocked(I)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    const-string v1, "AutofillSession"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "forceRemoveFromServiceLocked(): "

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v0, v3, :cond_1

    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v2

    .line 40
    :goto_0
    const/4 v3, 0x0

    .line 41
    iput-object v3, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 43
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 46
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 48
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 50
    iget-object v6, v4, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v7, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    .line 54
    invoke-direct {v7, v4, v5, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 57
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    if-nez v0, :cond_2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 64
    invoke-interface {v0, p1, v3}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    const-string v0, "Error notifying client to finish session"

    .line 71
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 76
    if-eqz p1, :cond_3

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 81
    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 83
    :cond_3
    return-void
.end method

.method public final getAutofillServiceUid()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13
    :goto_0
    return p0
.end method

.method public final getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getDetectionPreferenceForLogging()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 11
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 13
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    .line 20
    monitor-exit v0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x2

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    new-instance v2, Lcom/android/server/autofill/Session$3;

    .line 7
    invoke-direct {v2}, Lcom/android/server/autofill/Session$3;-><init>()V

    .line 10
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    const/4 v3, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x1

    .line 21
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_1

    .line 27
    goto/16 :goto_6

    .line 29
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 31
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 36
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 41
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 47
    move-result-object v9

    .line 48
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v9

    .line 52
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_c

    .line 58
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v10

    .line 62
    check-cast v10, Landroid/service/autofill/Dataset;

    .line 64
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 67
    move-result-object v11

    .line 68
    if-eqz v11, :cond_2

    .line 70
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_3

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 84
    move-result-object v11

    .line 85
    if-eqz v11, :cond_9

    .line 87
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 90
    move-result-object v11

    .line 91
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    move-result v11

    .line 95
    if-nez v11, :cond_9

    .line 97
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result v11

    .line 105
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 108
    move-result-object v12

    .line 109
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v12

    .line 113
    const/4 v13, 0x0

    .line 114
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v14

    .line 118
    if-eqz v14, :cond_5

    .line 120
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v14

    .line 124
    check-cast v14, Landroid/view/autofill/AutofillId;

    .line 126
    if-nez v14, :cond_4

    .line 128
    add-int/lit8 v11, v11, -0x1

    .line 130
    const/4 v13, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    if-nez v11, :cond_6

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    if-eqz v13, :cond_9

    .line 137
    new-instance v15, Ljava/util/ArrayList;

    .line 139
    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    new-instance v12, Ljava/util/ArrayList;

    .line 144
    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    new-instance v13, Ljava/util/ArrayList;

    .line 149
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    new-instance v14, Ljava/util/ArrayList;

    .line 154
    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .line 159
    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    .line 164
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    move/from16 v30, v3

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    .line 171
    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    const/4 v11, 0x0

    .line 175
    :goto_3
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v31, v9

    .line 181
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 184
    move-result v9

    .line 185
    if-ge v11, v9, :cond_8

    .line 187
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v9

    .line 195
    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 197
    if-eqz v9, :cond_7

    .line 199
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v9

    .line 210
    check-cast v9, Landroid/view/autofill/AutofillValue;

    .line 212
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    .line 225
    move-result-object v9

    .line 226
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 232
    move-result-object v9

    .line 233
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 239
    move-result-object v9

    .line 240
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v10, v11}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 246
    move-result-object v9

    .line 247
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 252
    move-object/from16 v9, v31

    .line 254
    goto :goto_3

    .line 255
    :cond_8
    new-instance v9, Landroid/service/autofill/Dataset;

    .line 257
    new-instance v22, Ljava/util/ArrayList;

    .line 259
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    .line 265
    move-result-object v23

    .line 266
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 269
    move-result-object v28

    .line 270
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 273
    move-result-object v29

    .line 274
    const/16 v24, 0x0

    .line 276
    const/16 v25, 0x0

    .line 278
    const/16 v26, 0x0

    .line 280
    const/16 v27, 0x0

    .line 282
    move-object v10, v14

    .line 283
    move-object v14, v9

    .line 284
    move-object/from16 v16, v12

    .line 286
    move-object/from16 v17, v13

    .line 288
    move-object/from16 v18, v10

    .line 290
    move-object/from16 v19, v4

    .line 292
    move-object/from16 v20, v6

    .line 294
    move-object/from16 v21, v3

    .line 296
    invoke-direct/range {v14 .. v29}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 299
    const/4 v3, 0x3

    .line 300
    move-object v10, v9

    .line 301
    goto :goto_4

    .line 302
    :cond_9
    move/from16 v30, v3

    .line 304
    move-object/from16 v31, v9

    .line 306
    move/from16 v3, v30

    .line 308
    :goto_4
    invoke-virtual {v10, v3}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    .line 311
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 321
    move-result-object v3

    .line 322
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_b

    .line 328
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v4

    .line 332
    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 334
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-result-object v6

    .line 341
    check-cast v6, Ljava/util/Set;

    .line 343
    if-nez v6, :cond_a

    .line 345
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 347
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 350
    :cond_a
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    goto :goto_5

    .line 357
    :cond_b
    move/from16 v3, v30

    .line 359
    move-object/from16 v9, v31

    .line 361
    goto/16 :goto_1

    .line 363
    :cond_c
    iput-object v5, v2, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 365
    iput-object v7, v2, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 367
    iput-object v8, v2, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 369
    :goto_6
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 371
    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 374
    move-result v3

    .line 375
    if-nez v3, :cond_e

    .line 377
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 379
    if-eqz v3, :cond_d

    .line 381
    const-string v3, "AutofillSession"

    .line 383
    const-string v4, "PCC classification is disabled"

    .line 385
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_d
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    .line 391
    move-result-object v0

    .line 392
    return-object v0

    .line 393
    :cond_e
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 395
    monitor-enter v3

    .line 396
    :try_start_0
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 398
    iget v5, v4, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 400
    const/4 v6, 0x4

    .line 401
    if-ne v5, v6, :cond_f

    .line 403
    iget-object v5, v4, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 405
    if-nez v5, :cond_10

    .line 407
    :cond_f
    move-object v4, v1

    .line 408
    move-object v1, v0

    .line 409
    move-object v0, v2

    .line 410
    goto/16 :goto_14

    .line 412
    :cond_10
    invoke-virtual {v4}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    .line 415
    move-result v4

    .line 416
    if-nez v4, :cond_11

    .line 418
    monitor-exit v3

    .line 419
    return-object v1

    .line 420
    :catchall_0
    move-exception v0

    .line 421
    goto/16 :goto_17

    .line 423
    :cond_11
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 426
    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 428
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 430
    iget-object v4, v3, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 432
    monitor-enter v4

    .line 433
    :try_start_1
    iget-boolean v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    .line 435
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 436
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 438
    iget-object v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 440
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 442
    iget-object v5, v4, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 444
    monitor-enter v5

    .line 445
    :try_start_2
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccUseFallbackDetection:Z

    .line 447
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 448
    if-eqz v3, :cond_13

    .line 450
    if-nez v4, :cond_13

    .line 452
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 454
    if-eqz v3, :cond_12

    .line 456
    const-string v3, "AutofillSession"

    .line 458
    const-string/jumbo v4, "preferAutofillProvider but no fallback"

    .line 461
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    .line 467
    move-result-object v0

    .line 468
    return-object v0

    .line 469
    :cond_13
    new-instance v5, Lcom/android/server/autofill/Session$3;

    .line 471
    invoke-direct {v5}, Lcom/android/server/autofill/Session$3;-><init>()V

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 477
    move-result-object v7

    .line 478
    if-nez v7, :cond_14

    .line 480
    move-object/from16 v28, v2

    .line 482
    move/from16 v29, v4

    .line 484
    goto/16 :goto_11

    .line 486
    :cond_14
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 488
    monitor-enter v8

    .line 489
    :try_start_3
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 491
    iget-object v9, v9, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 493
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 495
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 498
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 500
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 503
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 505
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 508
    const/4 v13, 0x0

    .line 509
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 512
    move-result v14

    .line 513
    if-ge v13, v14, :cond_20

    .line 515
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v14

    .line 519
    check-cast v14, Landroid/service/autofill/Dataset;

    .line 521
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 524
    move-result-object v15

    .line 525
    if-eqz v15, :cond_15

    .line 527
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 530
    move-result-object v15

    .line 531
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 534
    move-result v15

    .line 535
    if-eqz v15, :cond_16

    .line 537
    :cond_15
    move-object/from16 v28, v2

    .line 539
    move/from16 v29, v4

    .line 541
    move-object/from16 v26, v7

    .line 543
    goto/16 :goto_10

    .line 545
    :cond_16
    new-instance v31, Ljava/util/ArrayList;

    .line 547
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 550
    new-instance v32, Ljava/util/ArrayList;

    .line 552
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 555
    new-instance v33, Ljava/util/ArrayList;

    .line 557
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 560
    new-instance v34, Ljava/util/ArrayList;

    .line 562
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v35, Ljava/util/ArrayList;

    .line 567
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 570
    new-instance v36, Ljava/util/ArrayList;

    .line 572
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 575
    new-instance v37, Ljava/util/ArrayList;

    .line 577
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 580
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 582
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 585
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 587
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 590
    move-object/from16 v26, v7

    .line 592
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 594
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 597
    move-object/from16 v28, v2

    .line 599
    const/4 v1, 0x0

    .line 600
    const/4 v2, 0x4

    .line 601
    const/16 v27, 0x0

    .line 603
    :goto_8
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 606
    move-result-object v16

    .line 607
    move-object/from16 v17, v15

    .line 609
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 612
    move-result v15

    .line 613
    if-ge v1, v15, :cond_1d

    .line 615
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 618
    move-result-object v15

    .line 619
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    move-result-object v15

    .line 623
    if-nez v15, :cond_19

    .line 625
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 628
    move-result-object v15

    .line 629
    if-eqz v15, :cond_17

    .line 631
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 634
    move-result-object v15

    .line 635
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    move-result-object v15

    .line 639
    if-eqz v15, :cond_17

    .line 641
    const/4 v2, 0x5

    .line 642
    goto :goto_9

    .line 643
    :catchall_1
    move-exception v0

    .line 644
    goto/16 :goto_13

    .line 646
    :cond_17
    :goto_9
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 649
    move-result-object v15

    .line 650
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    move-result-object v15

    .line 654
    check-cast v15, Landroid/view/autofill/AutofillId;

    .line 656
    move/from16 v29, v2

    .line 658
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 660
    iget-object v2, v2, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    .line 662
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 665
    move-result v2

    .line 666
    if-nez v2, :cond_18

    .line 668
    invoke-interface {v7, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-interface {v6, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    move-object/from16 v2, v17

    .line 676
    move-object/from16 v17, v15

    .line 678
    move-object v15, v14

    .line 679
    move/from16 v16, v1

    .line 681
    move-object/from16 v18, v31

    .line 683
    move-object/from16 v19, v32

    .line 685
    move-object/from16 v20, v33

    .line 687
    move-object/from16 v21, v34

    .line 689
    move-object/from16 v22, v35

    .line 691
    move-object/from16 v23, v36

    .line 693
    move-object/from16 v24, v37

    .line 695
    invoke-static/range {v15 .. v24}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 698
    goto :goto_a

    .line 699
    :cond_18
    move-object/from16 v2, v17

    .line 701
    :goto_a
    move-object v0, v2

    .line 702
    move/from16 v2, v29

    .line 704
    move/from16 v29, v4

    .line 706
    goto/16 :goto_d

    .line 708
    :cond_19
    move-object/from16 v15, v17

    .line 710
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAutofillDatatypes()Ljava/util/ArrayList;

    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 717
    move-result-object v0

    .line 718
    check-cast v0, Ljava/lang/String;

    .line 720
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 723
    move-result v16

    .line 724
    if-eqz v16, :cond_1c

    .line 726
    move/from16 v29, v4

    .line 728
    new-instance v4, Ljava/util/ArrayList;

    .line 730
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    move-result-object v0

    .line 734
    check-cast v0, Ljava/util/Collection;

    .line 736
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_1a

    .line 745
    :goto_b
    move-object v0, v15

    .line 746
    goto :goto_d

    .line 747
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 750
    move-result-object v0

    .line 751
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 754
    move-result v4

    .line 755
    if-eqz v4, :cond_1b

    .line 757
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 760
    move-result-object v4

    .line 761
    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 763
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    move-object/from16 v27, v0

    .line 771
    move-object v0, v15

    .line 772
    move-object v15, v14

    .line 773
    move/from16 v16, v1

    .line 775
    move-object/from16 v17, v4

    .line 777
    move-object/from16 v18, v31

    .line 779
    move-object/from16 v19, v32

    .line 781
    move-object/from16 v20, v33

    .line 783
    move-object/from16 v21, v34

    .line 785
    move-object/from16 v22, v35

    .line 787
    move-object/from16 v23, v36

    .line 789
    move-object/from16 v24, v37

    .line 791
    invoke-static/range {v15 .. v24}, Lcom/android/server/autofill/Session;->copyFieldsFromDataset(Landroid/service/autofill/Dataset;ILandroid/view/autofill/AutofillId;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 794
    move-object v15, v0

    .line 795
    move-object/from16 v0, v27

    .line 797
    goto :goto_c

    .line 798
    :cond_1b
    move-object v0, v15

    .line 799
    const/16 v27, 0x1

    .line 801
    goto :goto_d

    .line 802
    :cond_1c
    move/from16 v29, v4

    .line 804
    goto :goto_b

    .line 805
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 807
    move-object v15, v0

    .line 808
    move/from16 v4, v29

    .line 810
    move-object/from16 v0, p0

    .line 812
    goto/16 :goto_8

    .line 814
    :cond_1d
    move/from16 v29, v4

    .line 816
    move-object/from16 v0, v17

    .line 818
    if-eqz v27, :cond_1f

    .line 820
    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 823
    invoke-interface {v12, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 826
    new-instance v1, Landroid/service/autofill/Dataset;

    .line 828
    new-instance v38, Ljava/util/ArrayList;

    .line 830
    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 833
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    .line 836
    move-result-object v39

    .line 837
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 840
    move-result-object v44

    .line 841
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 844
    move-result-object v45

    .line 845
    const/16 v40, 0x0

    .line 847
    const/16 v41, 0x0

    .line 849
    const/16 v42, 0x0

    .line 851
    const/16 v43, 0x0

    .line 853
    move-object/from16 v30, v1

    .line 855
    invoke-direct/range {v30 .. v45}, Landroid/service/autofill/Dataset;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ClipData;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 858
    invoke-virtual {v1, v2}, Landroid/service/autofill/Dataset;->setEligibleReasonReason(I)V

    .line 861
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 867
    move-result-object v0

    .line 868
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 871
    move-result v2

    .line 872
    if-eqz v2, :cond_1f

    .line 874
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 877
    move-result-object v2

    .line 878
    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 880
    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 883
    move-result v4

    .line 884
    if-eqz v4, :cond_1e

    .line 886
    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    move-result-object v4

    .line 890
    check-cast v4, Ljava/util/Set;

    .line 892
    goto :goto_f

    .line 893
    :cond_1e
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 895
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 898
    :goto_f
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    goto :goto_e

    .line 905
    :cond_1f
    :goto_10
    add-int/lit8 v13, v13, 0x1

    .line 907
    move-object/from16 v0, p0

    .line 909
    move-object/from16 v1, p1

    .line 911
    move-object/from16 v7, v26

    .line 913
    move-object/from16 v2, v28

    .line 915
    move/from16 v4, v29

    .line 917
    const/4 v6, 0x4

    .line 918
    goto/16 :goto_7

    .line 920
    :cond_20
    move-object/from16 v28, v2

    .line 922
    move/from16 v29, v4

    .line 924
    iput-object v12, v5, Lcom/android/server/autofill/Session$3;->val$response:Ljava/lang/Object;

    .line 926
    iput-object v11, v5, Lcom/android/server/autofill/Session$3;->val$focusedId:Ljava/lang/Object;

    .line 928
    iput-object v10, v5, Lcom/android/server/autofill/Session$3;->this$0:Ljava/lang/Object;

    .line 930
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 931
    :goto_11
    if-eqz v3, :cond_22

    .line 933
    move-object/from16 v0, v28

    .line 935
    if-eqz v29, :cond_21

    .line 937
    invoke-static {v0, v5}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V

    .line 940
    :cond_21
    move-object/from16 v1, p0

    .line 942
    move-object/from16 v4, p1

    .line 944
    move-object v2, v0

    .line 945
    goto :goto_12

    .line 946
    :cond_22
    move-object/from16 v0, v28

    .line 948
    if-eqz v29, :cond_23

    .line 950
    invoke-static {v5, v0}, Lcom/android/server/autofill/Session;->addFallbackDatasets(Lcom/android/server/autofill/Session$3;Lcom/android/server/autofill/Session$3;)V

    .line 953
    :cond_23
    move-object/from16 v1, p0

    .line 955
    move-object/from16 v4, p1

    .line 957
    move-object v2, v5

    .line 958
    :goto_12
    invoke-virtual {v1, v4, v2}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    .line 961
    move-result-object v0

    .line 962
    return-object v0

    .line 963
    :goto_13
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 964
    throw v0

    .line 965
    :catchall_2
    move-exception v0

    .line 966
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 967
    throw v0

    .line 968
    :catchall_3
    move-exception v0

    .line 969
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 970
    throw v0

    .line 971
    :goto_14
    :try_start_7
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 973
    if-eqz v2, :cond_26

    .line 975
    const-string v2, "AutofillSession"

    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    .line 979
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    const-string v6, "PCC classification no last response:"

    .line 984
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v6, v1, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 989
    iget-object v6, v6, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 991
    if-nez v6, :cond_24

    .line 993
    const/4 v6, 0x1

    .line 994
    goto :goto_15

    .line 995
    :cond_24
    const/4 v6, 0x0

    .line 996
    :goto_15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 999
    const-string v6, " ,ineligible state="

    .line 1001
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-object v6, v1, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 1006
    iget v6, v6, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 1008
    const/4 v7, 0x4

    .line 1009
    if-eq v6, v7, :cond_25

    .line 1011
    const/4 v6, 0x1

    .line 1012
    goto :goto_16

    .line 1013
    :cond_25
    const/4 v6, 0x0

    .line 1014
    :goto_16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    move-result-object v5

    .line 1021
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_26
    invoke-virtual {v1, v4, v0}, Lcom/android/server/autofill/Session;->createShallowCopy(Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/Session$3;)Landroid/service/autofill/FillResponse;

    .line 1027
    move-result-object v0

    .line 1028
    monitor-exit v3

    .line 1029
    return-object v0

    .line 1030
    :goto_17
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1031
    throw v0
.end method

.method public final getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/service/autofill/FillContext;

    .line 22
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    .line 25
    move-result v4

    .line 26
    if-ne v4, p1, :cond_1

    .line 28
    return-object v3

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-object v1
.end method

.method public final getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v1

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 26
    const-string v2, "AutofillSession"

    .line 28
    if-nez v0, :cond_2

    .line 30
    if-eqz p1, :cond_1

    .line 32
    const-string p0, ": no contexts"

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    return-object v1

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 44
    if-nez v0, :cond_4

    .line 46
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 48
    if-eqz p0, :cond_3

    .line 50
    if-eqz p1, :cond_3

    .line 52
    const-string p0, ": no responses on session"

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    return-object v1

    .line 62
    :cond_4
    const/4 v3, -0x1

    .line 63
    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_5

    .line 71
    goto/16 :goto_4

    .line 73
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    move v6, v5

    .line 86
    :goto_1
    if-ge v6, v4, :cond_6

    .line 88
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 93
    move-result v7

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v4

    .line 108
    const/4 v6, 0x1

    .line 109
    if-ne v4, v6, :cond_7

    .line 111
    move v3, v5

    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move v4, v5

    .line 114
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result v7

    .line 118
    sub-int/2addr v7, v6

    .line 119
    if-ge v4, v7, :cond_9

    .line 121
    add-int/lit8 v7, v4, 0x1

    .line 123
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Ljava/lang/Integer;

    .line 129
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result v8

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v9

    .line 137
    check-cast v9, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 142
    move-result v9

    .line 143
    sub-int/2addr v8, v9

    .line 144
    const/16 v9, 0x1388

    .line 146
    if-le v8, v9, :cond_8

    .line 148
    move v3, v4

    .line 149
    move v5, v6

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    move v4, v7

    .line 152
    goto :goto_2

    .line 153
    :cond_9
    :goto_3
    if-nez v5, :cond_a

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v0

    .line 159
    add-int/lit8 v3, v0, -0x1

    .line 161
    :cond_a
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 163
    if-eqz v0, :cond_b

    .line 165
    const-string/jumbo v0, "getLastRequestIdIndex(): latestRequestIdIndex = "

    .line 168
    const-string v4, "RequestId"

    .line 170
    invoke-static {v3, v0, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_b
    :goto_4
    const-string v0, ", mViewStates="

    .line 175
    if-gez v3, :cond_d

    .line 177
    if-eqz p1, :cond_c

    .line 179
    const-string v3, ": did not get last response. mResponses="

    .line 181
    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-result-object p1

    .line 185
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 202
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_c
    return-object v1

    .line 206
    :cond_d
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 208
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 214
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 216
    if-eqz v3, :cond_e

    .line 218
    if-eqz p1, :cond_e

    .line 220
    const-string v3, ": mResponses="

    .line 222
    invoke-static {p1, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    move-result-object p1

    .line 226
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 228
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    const-string v3, ", mContexts="

    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 246
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object p0

    .line 253
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_e
    return-object v1
.end method

.method public final getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 3
    if-nez p3, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 14
    if-nez p0, :cond_1

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 20
    :goto_0
    if-nez v0, :cond_4

    .line 22
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/service/autofill/InternalSanitizer;

    .line 28
    if-nez p1, :cond_2

    .line 30
    return-object p3

    .line 31
    :cond_2
    invoke-virtual {p1, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 34
    move-result-object v0

    .line 35
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 37
    if-eqz p1, :cond_3

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "Value for "

    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p2, "("

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string p2, ") sanitized to "

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    const-string p2, "AutofillSession"

    .line 71
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    if-eqz p0, :cond_4

    .line 76
    iput-object v0, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 78
    :cond_4
    return-object v0

    .line 79
    :cond_5
    :goto_1
    return-object p3
.end method

.method public final getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getIconResourceId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 10
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 12
    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 24
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, p1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object p1, v0

    .line 34
    :goto_0
    if-nez p1, :cond_2

    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 38
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 40
    if-nez p1, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v0

    .line 57
    :goto_1
    move-object p1, v0

    .line 58
    :cond_2
    return-object p1
.end method

.method public final getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 6
    iget-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 8
    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v3, v1, p0, v4}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/service/autofill/FillContext;

    .line 19
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, v3, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-static {v1, v2}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    .line 38
    move-result-object v1

    .line 39
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 41
    if-eqz v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v3, "getValueFromContexts("

    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, "/"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v3, ") at "

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, ": "

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    const-string v3, "AutofillSession"

    .line 86
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_1

    .line 97
    return-object v1

    .line 98
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 p0, 0x0

    .line 102
    return-object p0
.end method

.method public final isEmptyResponse(Landroid/service/autofill/FillResponse;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_3

    .line 37
    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 49
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {v1}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 62
    move-result v1

    .line 63
    and-int/lit8 v1, v1, 0x4

    .line 65
    if-nez v1, :cond_3

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_1
    monitor-exit p0

    .line 80
    return v0

    .line 81
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1
.end method

.method public final logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "aug:id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " u="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 20
    const-string v2, " m="

    .line 22
    const-string v3, " a="

    .line 24
    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 27
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 29
    invoke-static {p1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, " f="

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, " s="

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, " w="

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, " i="

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 74
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 76
    check-cast p0, Lcom/android/server/autofill/AutofillManagerService;

    .line 78
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 80
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v14, p3

    .line 9
    move/from16 v15, p4

    .line 11
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 13
    const-string v4, "AutofillSession"

    .line 15
    if-eqz v3, :cond_0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v5, "logContextCommittedLocked ("

    .line 22
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    .line 27
    const-string v6, "): commit_reason:"

    .line 29
    const-string v7, " no_save_reason:"

    .line 31
    invoke-static {v5, v15, v6, v7, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 34
    invoke-static {v3, v14, v4}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    :cond_0
    const-string/jumbo v3, "logContextCommited(%s)"

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_1

    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 49
    const/4 v6, 0x1

    .line 50
    const/4 v8, 0x4

    .line 51
    if-eq v15, v6, :cond_4

    .line 53
    const/4 v9, 0x2

    .line 54
    if-eq v15, v9, :cond_3

    .line 56
    if-eq v15, v8, :cond_2

    .line 58
    const/4 v8, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v8, 0x3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v8, 0x6

    .line 63
    :cond_4
    :goto_0
    invoke-virtual {v5, v8}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 66
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 68
    invoke-virtual {v5}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 71
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 74
    move-result v3

    .line 75
    and-int/lit8 v5, v3, 0x1

    .line 77
    if-nez v5, :cond_6

    .line 79
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 81
    if-eqz v0, :cond_5

    .line 83
    const-string/jumbo v0, "logContextCommittedLocked(): ignored by flags "

    .line 86
    invoke-static {v3, v0, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_5
    return-void

    .line 90
    :cond_6
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 95
    move-result v3

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    :goto_1
    const-string/jumbo v11, "logContextCommitted() no datasets at "

    .line 102
    const-string v12, "adding ignored dataset "

    .line 104
    const-string/jumbo v13, "logContextCommitted() skipping idless dataset "

    .line 107
    if-ge v8, v3, :cond_10

    .line 109
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 111
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Landroid/service/autofill/FillResponse;

    .line 117
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 120
    move-result-object v5

    .line 121
    if-eqz v5, :cond_e

    .line 123
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 126
    move-result v17

    .line 127
    if-eqz v17, :cond_7

    .line 129
    goto :goto_6

    .line 130
    :cond_7
    const/4 v11, 0x0

    .line 131
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 134
    move-result v7

    .line 135
    if-ge v11, v7, :cond_f

    .line 137
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Landroid/service/autofill/Dataset;

    .line 143
    invoke-virtual {v7}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 147
    if-nez v6, :cond_8

    .line 149
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 151
    if-eqz v6, :cond_d

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 171
    if-eqz v7, :cond_a

    .line 173
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_9

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    :goto_3
    const/4 v10, 0x1

    .line 181
    goto :goto_5

    .line 182
    :cond_a
    :goto_4
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 184
    if-eqz v7, :cond_b

    .line 186
    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v7

    .line 190
    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_b
    if-nez v9, :cond_c

    .line 195
    new-instance v9, Landroid/util/ArraySet;

    .line 197
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 200
    :cond_c
    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    goto :goto_3

    .line 204
    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 206
    const/4 v6, 0x1

    .line 207
    goto :goto_2

    .line 208
    :cond_e
    :goto_6
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 210
    if-eqz v5, :cond_f

    .line 212
    invoke-static {v8, v11, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 217
    const/4 v6, 0x1

    .line 218
    goto :goto_1

    .line 219
    :cond_10
    move-object v6, v9

    .line 220
    const/4 v5, 0x0

    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v8, 0x0

    .line 223
    const/4 v9, 0x0

    .line 224
    :goto_7
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 226
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 229
    move-result v15

    .line 230
    if-ge v5, v15, :cond_28

    .line 232
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 234
    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 237
    move-result-object v15

    .line 238
    check-cast v15, Lcom/android/server/autofill/ViewState;

    .line 240
    iget v14, v15, Lcom/android/server/autofill/ViewState;->mState:I

    .line 242
    and-int/lit8 v19, v14, 0x8

    .line 244
    if-eqz v19, :cond_11

    .line 246
    and-int/lit16 v14, v14, 0x800

    .line 248
    if-eqz v14, :cond_16

    .line 250
    iget-object v14, v15, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 252
    if-nez v14, :cond_12

    .line 254
    new-instance v14, Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v2, "logContextCommitted(): no dataset id on "

    .line 259
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_11
    :goto_8
    move/from16 v19, v3

    .line 274
    move-object/from16 v25, v8

    .line 276
    move/from16 v21, v10

    .line 278
    move-object/from16 v22, v13

    .line 280
    goto/16 :goto_13

    .line 282
    :cond_12
    iget-object v2, v15, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 284
    iget-object v1, v15, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 286
    if-eqz v2, :cond_13

    .line 288
    invoke-virtual {v2, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_13

    .line 294
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 296
    if-eqz v1, :cond_11

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v2, "logContextCommitted(): ignoring changed "

    .line 303
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, " because it has same value that was autofilled"

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 318
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_8

    .line 322
    :cond_13
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 324
    if-eqz v1, :cond_14

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v2, "logContextCommitted() found changed state: "

    .line 331
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v1

    .line 341
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_14
    if-nez v7, :cond_15

    .line 346
    new-instance v7, Ljava/util/ArrayList;

    .line 348
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v8, Ljava/util/ArrayList;

    .line 353
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 356
    :cond_15
    iget-object v1, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 358
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    move/from16 v19, v3

    .line 366
    :goto_9
    move/from16 v21, v10

    .line 368
    move-object/from16 v22, v13

    .line 370
    goto/16 :goto_14

    .line 372
    :cond_16
    iget-object v1, v15, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 374
    if-nez v1, :cond_17

    .line 376
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 378
    if-eqz v1, :cond_11

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    .line 382
    const-string/jumbo v2, "logContextCommitted(): skipping view without current value ( "

    .line 385
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    const-string v2, ")"

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object v1

    .line 400
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    goto/16 :goto_8

    .line 405
    :cond_17
    if-eqz v10, :cond_11

    .line 407
    const/4 v2, 0x0

    .line 408
    :goto_a
    if-ge v2, v3, :cond_27

    .line 410
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 412
    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 415
    move-result-object v14

    .line 416
    check-cast v14, Landroid/service/autofill/FillResponse;

    .line 418
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 421
    move-result-object v14

    .line 422
    if-eqz v14, :cond_18

    .line 424
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 427
    move-result v19

    .line 428
    if-eqz v19, :cond_19

    .line 430
    :cond_18
    move-object/from16 v24, v1

    .line 432
    move/from16 v19, v3

    .line 434
    move-object/from16 v25, v8

    .line 436
    move/from16 v21, v10

    .line 438
    move-object/from16 v22, v13

    .line 440
    goto/16 :goto_11

    .line 442
    :cond_19
    move/from16 v19, v3

    .line 444
    move-object/from16 v20, v9

    .line 446
    const/4 v3, 0x0

    .line 447
    :goto_b
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 450
    move-result v9

    .line 451
    if-ge v3, v9, :cond_25

    .line 453
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    move-result-object v9

    .line 457
    check-cast v9, Landroid/service/autofill/Dataset;

    .line 459
    move/from16 v21, v10

    .line 461
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 464
    move-result-object v10

    .line 465
    if-nez v10, :cond_1b

    .line 467
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 469
    if-eqz v10, :cond_1a

    .line 471
    new-instance v10, Ljava/lang/StringBuilder;

    .line 473
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object v9

    .line 483
    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1a
    move-object/from16 v24, v1

    .line 488
    move-object/from16 v25, v8

    .line 490
    move-object/from16 v22, v13

    .line 492
    move-object/from16 v23, v14

    .line 494
    goto/16 :goto_10

    .line 496
    :cond_1b
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 499
    move-result-object v9

    .line 500
    move-object/from16 v22, v13

    .line 502
    move-object/from16 v23, v14

    .line 504
    const/4 v13, 0x0

    .line 505
    :goto_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 508
    move-result v14

    .line 509
    if-ge v13, v14, :cond_20

    .line 511
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    move-result-object v14

    .line 515
    check-cast v14, Landroid/view/autofill/AutofillValue;

    .line 517
    invoke-virtual {v1, v14}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 520
    move-result v14

    .line 521
    if-eqz v14, :cond_1f

    .line 523
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 525
    if-eqz v14, :cond_1c

    .line 527
    new-instance v14, Ljava/lang/StringBuilder;

    .line 529
    move-object/from16 v24, v1

    .line 531
    const-string/jumbo v1, "field "

    .line 534
    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v1, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 539
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    const-string v1, " was manually filled with value set by dataset "

    .line 544
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v1

    .line 554
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    goto :goto_d

    .line 558
    :cond_1c
    move-object/from16 v24, v1

    .line 560
    :goto_d
    if-nez v20, :cond_1d

    .line 562
    new-instance v20, Landroid/util/ArrayMap;

    .line 564
    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 567
    :cond_1d
    move-object/from16 v1, v20

    .line 569
    iget-object v14, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 571
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    move-result-object v14

    .line 575
    check-cast v14, Landroid/util/ArraySet;

    .line 577
    if-nez v14, :cond_1e

    .line 579
    new-instance v14, Landroid/util/ArraySet;

    .line 581
    move-object/from16 v25, v8

    .line 583
    const/4 v8, 0x1

    .line 584
    invoke-direct {v14, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 587
    iget-object v8, v15, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 589
    invoke-virtual {v1, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    goto :goto_e

    .line 593
    :cond_1e
    move-object/from16 v25, v8

    .line 595
    :goto_e
    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 598
    move-object/from16 v20, v1

    .line 600
    goto :goto_f

    .line 601
    :cond_1f
    move-object/from16 v24, v1

    .line 603
    move-object/from16 v25, v8

    .line 605
    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 607
    move-object/from16 v1, v24

    .line 609
    move-object/from16 v8, v25

    .line 611
    goto :goto_c

    .line 612
    :cond_20
    move-object/from16 v24, v1

    .line 614
    move-object/from16 v25, v8

    .line 616
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 618
    if-eqz v1, :cond_21

    .line 620
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 623
    move-result v1

    .line 624
    if-nez v1, :cond_24

    .line 626
    :cond_21
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 628
    if-eqz v1, :cond_22

    .line 630
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    move-result-object v1

    .line 634
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_22
    if-nez v6, :cond_23

    .line 639
    new-instance v6, Landroid/util/ArraySet;

    .line 641
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 644
    :cond_23
    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_24
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 649
    move/from16 v10, v21

    .line 651
    move-object/from16 v13, v22

    .line 653
    move-object/from16 v14, v23

    .line 655
    move-object/from16 v1, v24

    .line 657
    move-object/from16 v8, v25

    .line 659
    goto/16 :goto_b

    .line 661
    :cond_25
    move-object/from16 v24, v1

    .line 663
    move-object/from16 v25, v8

    .line 665
    move/from16 v21, v10

    .line 667
    move-object/from16 v22, v13

    .line 669
    move-object/from16 v9, v20

    .line 671
    goto :goto_12

    .line 672
    :goto_11
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 674
    if-eqz v1, :cond_26

    .line 676
    invoke-static {v2, v11, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_26
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 681
    move/from16 v3, v19

    .line 683
    move/from16 v10, v21

    .line 685
    move-object/from16 v13, v22

    .line 687
    move-object/from16 v1, v24

    .line 689
    move-object/from16 v8, v25

    .line 691
    goto/16 :goto_a

    .line 693
    :cond_27
    move/from16 v19, v3

    .line 695
    move-object/from16 v25, v8

    .line 697
    goto/16 :goto_9

    .line 699
    :goto_13
    move-object/from16 v8, v25

    .line 701
    :goto_14
    add-int/lit8 v5, v5, 0x1

    .line 703
    move-object/from16 v1, p1

    .line 705
    move-object/from16 v2, p2

    .line 707
    move/from16 v14, p3

    .line 709
    move/from16 v3, v19

    .line 711
    move/from16 v10, v21

    .line 713
    move-object/from16 v13, v22

    .line 715
    goto/16 :goto_7

    .line 717
    :cond_28
    move-object/from16 v25, v8

    .line 719
    if-eqz v9, :cond_2a

    .line 721
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 724
    move-result v1

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    .line 727
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    new-instance v3, Ljava/util/ArrayList;

    .line 732
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    const/4 v4, 0x0

    .line 736
    :goto_15
    if-ge v4, v1, :cond_29

    .line 738
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 741
    move-result-object v5

    .line 742
    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 744
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 747
    move-result-object v8

    .line 748
    check-cast v8, Landroid/util/ArraySet;

    .line 750
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v5, Ljava/util/ArrayList;

    .line 755
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 758
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v4, v4, 0x1

    .line 763
    goto :goto_15

    .line 764
    :cond_29
    move-object v9, v2

    .line 765
    move-object v10, v3

    .line 766
    goto :goto_16

    .line 767
    :cond_2a
    const/4 v9, 0x0

    .line 768
    const/4 v10, 0x0

    .line 769
    :goto_16
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 771
    iget v2, v0, Lcom/android/server/autofill/Session;->id:I

    .line 773
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 775
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 777
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 779
    iget-boolean v8, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 781
    const-string/jumbo v11, "logDatasetNotSelected()"

    .line 784
    invoke-virtual {v1, v2, v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isValidEventLocked(ILjava/lang/String;)Z

    .line 787
    move-result v11

    .line 788
    if-eqz v11, :cond_2f

    .line 790
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 792
    if-eqz v11, :cond_2b

    .line 794
    new-instance v11, Ljava/lang/StringBuilder;

    .line 796
    const-string/jumbo v12, "logContextCommitted() with FieldClassification: id="

    .line 799
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    const-string v12, ", selectedDatasets="

    .line 807
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 813
    const-string v12, ", ignoredDatasetIds="

    .line 815
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    const-string v12, ", changedAutofillIds="

    .line 823
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 829
    const-string v12, ", changedDatasetIds="

    .line 831
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    move-object/from16 v12, v25

    .line 836
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 839
    const-string v13, ", manuallyFilledFieldIds="

    .line 841
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    const-string v13, ", detectedFieldIds="

    .line 849
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    move-object/from16 v13, p1

    .line 854
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 857
    const-string v14, ", detectedFieldClassifications="

    .line 859
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    move-object/from16 v14, p2

    .line 864
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 867
    const-string v15, ", appComponentName="

    .line 869
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 875
    move-result-object v15

    .line 876
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v15, ", compatMode="

    .line 881
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 887
    const-string v15, ", saveDialogNotShowReason="

    .line 889
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    const-string v15, "AutofillManagerServiceImpl"

    .line 894
    move/from16 v0, p3

    .line 896
    invoke-static {v11, v0, v15}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 899
    goto :goto_17

    .line 900
    :cond_2b
    move-object/from16 v13, p1

    .line 902
    move-object/from16 v14, p2

    .line 904
    move/from16 v0, p3

    .line 906
    move-object/from16 v12, v25

    .line 908
    :goto_17
    if-eqz v13, :cond_2e

    .line 910
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 913
    move-result v11

    .line 914
    new-array v15, v11, [Landroid/view/autofill/AutofillId;

    .line 916
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 919
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 922
    move-result v13

    .line 923
    new-array v13, v13, [Landroid/service/autofill/FieldClassification;

    .line 925
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 928
    const/4 v14, 0x0

    .line 929
    move-object/from16 v16, v15

    .line 931
    const/4 v0, 0x0

    .line 932
    const/4 v15, 0x0

    .line 933
    :goto_18
    if-ge v0, v11, :cond_2d

    .line 935
    aget-object v18, v13, v0

    .line 937
    move-object/from16 v19, v13

    .line 939
    invoke-virtual/range {v18 .. v18}, Landroid/service/autofill/FieldClassification;->getMatches()Ljava/util/List;

    .line 942
    move-result-object v13

    .line 943
    move-object/from16 v18, v10

    .line 945
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 948
    move-result v10

    .line 949
    add-int/2addr v15, v10

    .line 950
    move/from16 p1, v15

    .line 952
    const/4 v15, 0x0

    .line 953
    :goto_19
    if-ge v15, v10, :cond_2c

    .line 955
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 958
    move-result-object v20

    .line 959
    check-cast v20, Landroid/service/autofill/FieldClassification$Match;

    .line 961
    invoke-virtual/range {v20 .. v20}, Landroid/service/autofill/FieldClassification$Match;->getScore()F

    .line 964
    move-result v20

    .line 965
    add-float v14, v20, v14

    .line 967
    add-int/lit8 v15, v15, 0x1

    .line 969
    goto :goto_19

    .line 970
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 972
    move/from16 v15, p1

    .line 974
    move-object/from16 v10, v18

    .line 976
    move-object/from16 v13, v19

    .line 978
    goto :goto_18

    .line 979
    :cond_2d
    move-object/from16 v18, v10

    .line 981
    move-object/from16 v19, v13

    .line 983
    const/high16 v0, 0x42c80000    # 100.0f

    .line 985
    mul-float/2addr v14, v0

    .line 986
    int-to-float v0, v15

    .line 987
    div-float/2addr v14, v0

    .line 988
    float-to-int v0, v14

    .line 989
    iget-object v10, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 991
    const/16 v13, 0x4f9

    .line 993
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 996
    move-result-object v14

    .line 997
    invoke-static {v13, v3, v14, v2, v8}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 1000
    move-result-object v2

    .line 1001
    invoke-virtual {v2, v11}, Landroid/metrics/LogMaker;->setCounterValue(I)Landroid/metrics/LogMaker;

    .line 1004
    move-result-object v2

    .line 1005
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1008
    move-result-object v0

    .line 1009
    const/16 v3, 0x4fa

    .line 1011
    invoke-virtual {v2, v3, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1014
    move-result-object v0

    .line 1015
    invoke-virtual {v10, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1018
    move-object/from16 v11, v16

    .line 1020
    move-object/from16 v16, v19

    .line 1022
    goto :goto_1a

    .line 1023
    :cond_2e
    move-object/from16 v18, v10

    .line 1025
    const/4 v11, 0x0

    .line 1026
    const/16 v16, 0x0

    .line 1028
    :goto_1a
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 1030
    new-instance v14, Landroid/service/autofill/FillEventHistory$Event;

    .line 1032
    const/4 v2, 0x4

    .line 1033
    const/4 v3, 0x0

    .line 1034
    move-object v1, v14

    .line 1035
    move-object v8, v12

    .line 1036
    move-object/from16 v10, v18

    .line 1038
    move-object/from16 v12, v16

    .line 1040
    move/from16 v13, p3

    .line 1042
    invoke-direct/range {v1 .. v13}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;I)V

    .line 1045
    invoke-virtual {v0, v14}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 1048
    :cond_2f
    move-object/from16 v0, p0

    .line 1050
    move/from16 v1, p3

    .line 1052
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1054
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1056
    new-instance v3, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1058
    const/4 v4, 0x1

    .line 1059
    move/from16 v5, p4

    .line 1061
    invoke-direct {v3, v5, v4}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1064
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1067
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 1069
    iget v3, v0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 1071
    iget-object v2, v2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1073
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 1075
    const/4 v5, 0x2

    .line 1076
    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 1079
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1082
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 1084
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 1087
    return-void
.end method

.method public final logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 3
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 6
    move-result v1

    .line 7
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 9
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 11
    const/4 v3, 0x6

    .line 12
    invoke-direct {v2, v1, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 20
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 22
    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v1, v2, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 31
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 33
    iget v0, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 35
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 37
    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 43
    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 46
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 48
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 54
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 56
    new-instance v1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    .line 58
    invoke-direct {v1, p1, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 64
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 66
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 68
    iget-object p1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 70
    new-instance p2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-direct {p2, v0, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 79
    return-void
.end method

.method public final mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 9
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 11
    const-string/jumbo v2, "mergeSessions("

    .line 14
    const-string v3, "AutofillSession"

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v4, "): Merging the content of "

    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v4

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v4, " sessions for task "

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    .line 47
    invoke-static {v1, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v5

    .line 60
    if-ge v4, v5, :cond_6

    .line 62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lcom/android/server/autofill/Session;

    .line 68
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 70
    if-nez v6, :cond_1

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v7, "): Not merging null contexts from "

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v5, v5, Lcom/android/server/autofill/Session;->id:I

    .line 89
    invoke-static {v6, v5, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 98
    :cond_2
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 100
    if-eqz v7, :cond_3

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v8, "): adding "

    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 120
    move-result v8

    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v8, " context from previous session #"

    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    .line 131
    invoke-static {v7, v8, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 139
    if-nez v6, :cond_5

    .line 141
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 143
    if-eqz v6, :cond_5

    .line 145
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 147
    if-eqz v6, :cond_4

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v7, "): setting client state from previous session"

    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v7, v5, Lcom/android/server/autofill/Session;->id:I

    .line 166
    invoke-static {v6, v7, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 169
    :cond_4
    iget-object v5, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 171
    iput-object v5, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 173
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 175
    goto :goto_0

    .line 176
    :cond_6
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 184
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 186
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    :goto_2
    return-object v1
.end method

.method public final newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 9
    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    .line 11
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 13
    invoke-static {p1, v1, v0, v2, p0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final notifyClientFillDialogTriggerIds(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "AutofillSession"

    .line 3
    const-string/jumbo v1, "notifyFillDialogTriggerIds(): "

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillDialogTriggerIds(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    const-string p1, "Cannot set trigger ids for fill dialog"

    .line 38
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_2
    return-void
.end method

.method public final notifyDisableAutofillToClient(Landroid/content/ComponentName;J)V
    .locals 3

    .line 1
    const-string v0, "Error notifying client disable autofill: id="

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 8
    if-nez v2, :cond_0

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 16
    invoke-interface {v2, p2, p3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    const-string p2, "AutofillSession"

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 30
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public final notifyUnavailableToClient(Ljava/util/ArrayList;I)V
    .locals 4

    .line 1
    const-string v0, "Error notifying client no fill UI: id="

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 8
    if-nez v2, :cond_0

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 16
    if-eqz v3, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 20
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 22
    invoke-interface {p1, v3, v2, p2}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eqz p2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 32
    invoke-interface {v2, p2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    :try_start_2
    const-string p2, "AutofillSession"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_2
    :goto_1
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p0
.end method

.method public final onFillRequestFailure(ILjava/lang/Throwable;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "onFillRequestFailureOrTimeout(): not showing \'"

    .line 4
    const-string/jumbo v1, "onFillRequestFailureOrTimeout(): no log for id "

    .line 7
    const-string/jumbo v2, "finishing session due to service "

    .line 10
    const-string v3, "Call to Session#onFillRequestFailureOrTimeout(req="

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    instance-of v5, p2, Ljava/util/concurrent/TimeoutException;

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v6

    .line 22
    const/4 v7, 0x1

    .line 23
    xor-int/2addr v6, v7

    .line 24
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v8

    .line 27
    :try_start_0
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 29
    invoke-virtual {v9}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 32
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 34
    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 36
    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 38
    const/4 v11, 0x5

    .line 39
    invoke-direct {v10, p1, v11}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 42
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 45
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 47
    iget v10, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 49
    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 51
    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 53
    const/4 v12, 0x2

    .line 54
    invoke-direct {v11, v10, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 57
    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 60
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 62
    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 64
    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 66
    const/4 v11, -0x1

    .line 67
    const/4 v12, 0x1

    .line 68
    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 71
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 74
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 76
    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 78
    new-instance v10, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 80
    const/4 v12, 0x6

    .line 81
    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 84
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 87
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    .line 92
    move-result v10

    .line 93
    iget-object v9, v9, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 95
    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 97
    const/4 v12, 0x4

    .line 98
    invoke-direct {v11, v10, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 101
    invoke-virtual {v9, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    move-result-wide v9

    .line 108
    iget-wide v11, p0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 110
    sub-long/2addr v9, v11

    .line 111
    iget-object v11, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 113
    long-to-int v9, v9

    .line 114
    iget-object v10, v11, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 116
    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 118
    const/4 v12, 0x7

    .line 119
    invoke-direct {v11, v9, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 122
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 128
    iget-boolean v9, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 130
    const/4 v10, 0x5

    .line 131
    if-eqz v9, :cond_0

    .line 133
    const-string p2, "AutofillSession"

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string p1, ") rejected - session: "

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget p1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string p1, " destroyed"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 167
    invoke-virtual {p1, v10}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 170
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 172
    invoke-virtual {p0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 175
    monitor-exit v8

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    goto/16 :goto_5

    .line 180
    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 182
    if-eqz v3, :cond_2

    .line 184
    const-string v3, "AutofillSession"

    .line 186
    if-eqz v5, :cond_1

    .line 188
    const-string/jumbo v9, "timeout"

    .line 191
    goto :goto_0

    .line 192
    :cond_1
    const-string/jumbo v9, "failure"

    .line 195
    :goto_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 204
    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 206
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const/4 v9, 0x0

    .line 208
    :try_start_1
    iput-object v9, v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 210
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :try_start_2
    iput-object v9, p0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 213
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Landroid/metrics/LogMaker;

    .line 221
    if-nez v2, :cond_3

    .line 223
    const-string v3, "AutofillSession"

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 237
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto :goto_2

    .line 241
    :cond_3
    if-eqz v5, :cond_4

    .line 243
    const/4 p1, 0x2

    .line 244
    goto :goto_1

    .line 245
    :cond_4
    const/16 p1, 0xb

    .line 247
    :goto_1
    invoke-virtual {v2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 250
    :goto_2
    if-eqz v6, :cond_7

    .line 252
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 254
    iget-object p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 256
    const/4 v1, 0x0

    .line 257
    if-nez p1, :cond_5

    .line 259
    move p1, v1

    .line 260
    goto :goto_3

    .line 261
    :cond_5
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 263
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 265
    :goto_3
    const/16 v3, 0x1d

    .line 267
    if-lt p1, v3, :cond_6

    .line 269
    const-string v3, "AutofillSession"

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    .line 273
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    const-string v0, "\' because service\'s targetting API "

    .line 281
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object p1

    .line 291
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move v6, v1

    .line 295
    :cond_6
    if-eqz v4, :cond_7

    .line 297
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 300
    move-result p1

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    move-result-object p1

    .line 305
    const/16 v0, 0x624

    .line 307
    invoke-virtual {v2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 310
    :cond_7
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    .line 312
    const/4 v0, 0x6

    .line 313
    if-eqz p1, :cond_8

    .line 315
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 317
    invoke-virtual {p1, v10}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 320
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 322
    const/4 p2, 0x4

    .line 323
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 326
    goto :goto_4

    .line 327
    :cond_8
    instance-of p1, p2, Landroid/os/TransactionTooLargeException;

    .line 329
    const/4 p2, 0x7

    .line 330
    if-eqz p1, :cond_9

    .line 332
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 334
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 337
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 339
    invoke-virtual {p1, v0}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 342
    goto :goto_4

    .line 343
    :cond_9
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 345
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 348
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 350
    invoke-virtual {p1, v7}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 353
    :goto_4
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 355
    invoke-virtual {p1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 358
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 360
    iget-object p2, p1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 362
    new-instance v1, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    .line 364
    const/4 v2, 0x1

    .line 365
    invoke-direct {v1, v2, p1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 368
    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 371
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 373
    invoke-virtual {p1}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 376
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    invoke-virtual {p0, v9, v0}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(Ljava/util/ArrayList;I)V

    .line 380
    if-eqz v6, :cond_a

    .line 382
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p1, v4, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 389
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 392
    return-void

    .line 393
    :catchall_1
    move-exception p0

    .line 394
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    :try_start_4
    throw p0

    .line 396
    :goto_5
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 397
    throw p0
.end method

.method public final onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p3

    .line 9
    const-string v4, "Service disabled autofill for "

    .line 11
    const-string v5, "Ignoring "

    .line 13
    const-string/jumbo v6, "onFillRequestSuccess(): no request log for id "

    .line 16
    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    .line 18
    const-string v8, "Call to Session#onFillRequestSuccess() rejected - session: "

    .line 20
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter v9

    .line 23
    :try_start_0
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 25
    invoke-virtual {v10}, Lcom/android/server/autofill/FillResponseEventLogger;->startLogForNewResponse()V

    .line 28
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 30
    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 32
    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 34
    const/4 v12, 0x5

    .line 35
    invoke-direct {v11, v1, v12}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 38
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 41
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 43
    iget v11, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 45
    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 47
    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 49
    const/4 v13, 0x2

    .line 50
    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 53
    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 56
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 58
    const/4 v11, 0x2

    .line 59
    invoke-virtual {v10, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 62
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 64
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    move-result-wide v11

    .line 71
    iput-wide v11, v10, Lcom/android/server/autofill/FillResponseEventLogger;->startResponseProcessingTimestamp:J

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    move-result-wide v10

    .line 77
    iget-wide v12, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 79
    sub-long/2addr v10, v12

    .line 80
    iget-object v12, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 82
    long-to-int v10, v10

    .line 83
    iget-object v11, v12, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 85
    new-instance v12, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 87
    const/16 v13, 0xa

    .line 89
    invoke-direct {v12, v10, v13}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 92
    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 95
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 97
    iget-object v11, v11, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 99
    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 101
    const/4 v13, 0x7

    .line 102
    invoke-direct {v12, v10, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 105
    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 108
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    .line 113
    move-result v11

    .line 114
    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 116
    new-instance v12, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 118
    const/4 v13, 0x4

    .line 119
    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 122
    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 125
    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 127
    const/4 v11, 0x5

    .line 128
    if-eqz v10, :cond_0

    .line 130
    const-string v1, "AutofillSession"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, " destroyed"

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 156
    invoke-virtual {v1, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 159
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 164
    monitor-exit v9

    .line 165
    return-void

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto/16 :goto_b

    .line 169
    :cond_0
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 171
    iget-boolean v8, v8, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 173
    if-eqz v8, :cond_1

    .line 175
    const-string v1, "AutofillSession"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, " is showing saveUi"

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 201
    invoke-virtual {v1, v11}, Lcom/android/server/autofill/FillResponseEventLogger;->maybeSetResponseStatus(I)V

    .line 204
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 206
    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 209
    monitor-exit v9

    .line 210
    return-void

    .line 211
    :cond_1
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 213
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v7

    .line 217
    check-cast v7, Landroid/metrics/LogMaker;

    .line 219
    if-eqz v7, :cond_2

    .line 221
    const/16 v6, 0xa

    .line 223
    invoke-virtual {v7, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 226
    goto :goto_0

    .line 227
    :cond_2
    const-string v8, "AutofillSession"

    .line 229
    new-instance v10, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v6

    .line 241
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    const/16 v6, 0x38d

    .line 246
    const/4 v8, 0x0

    .line 247
    if-nez v2, :cond_4

    .line 249
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 251
    iget-object v2, v2, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 253
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 255
    const/4 v5, 0x6

    .line 256
    invoke-direct {v4, v8, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 259
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 262
    if-eqz v7, :cond_3

    .line 264
    const/4 v2, -0x1

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v7, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 272
    :cond_3
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 275
    monitor-exit v9

    .line 276
    return-void

    .line 277
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    .line 280
    move-result-object v10

    .line 281
    if-eqz v10, :cond_5

    .line 283
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 285
    invoke-virtual {v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    .line 288
    move-result v11

    .line 289
    if-nez v11, :cond_5

    .line 291
    const-string v4, "AutofillSession"

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    const-string v2, " because field detection is disabled"

    .line 303
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v2

    .line 310
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 316
    monitor-exit v9

    .line 317
    return-void

    .line 318
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    .line 321
    move-result-object v1

    .line 322
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 327
    move-result v1

    .line 328
    const/4 v5, 0x4

    .line 329
    and-int/2addr v1, v5

    .line 330
    const/4 v11, 0x1

    .line 331
    if-eqz v1, :cond_6

    .line 333
    const-string v1, "AutofillSession"

    .line 335
    const-string v12, "Service requested to wait for delayed fill response."

    .line 337
    invoke-static {v1, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 342
    if-nez v1, :cond_6

    .line 344
    const-string v1, "AutofillSession"

    .line 346
    const-string/jumbo v12, "registerDelayedFillBroadcastLocked()"

    .line 349
    invoke-static {v1, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Landroid/content/IntentFilter;

    .line 354
    const-string v12, "android.service.autofill.action.DELAYED_FILL"

    .line 356
    invoke-direct {v1, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 359
    iget-object v12, v0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 361
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    .line 363
    invoke-virtual {v12, v13, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    iput-boolean v11, v0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 368
    :cond_6
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 370
    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    new-instance v13, Landroid/service/autofill/FillEventHistory;

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 380
    move-result-object v14

    .line 381
    invoke-direct {v13, v12, v14}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    .line 384
    iput-object v13, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 386
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 388
    if-eqz v1, :cond_7

    .line 390
    iput-boolean v8, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 392
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 394
    iget v12, v0, Lcom/android/server/autofill/Session;->id:I

    .line 396
    invoke-virtual {v1, v12}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(I)V

    .line 399
    :cond_7
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    .line 403
    move-result-wide v14

    .line 404
    const-wide/16 v12, 0x0

    .line 406
    cmp-long v1, v14, v12

    .line 408
    if-lez v1, :cond_8

    .line 410
    move v1, v11

    .line 411
    goto :goto_1

    .line 412
    :cond_8
    move v1, v8

    .line 413
    :goto_1
    const/4 v9, 0x0

    .line 414
    if-eqz v1, :cond_e

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 419
    move-result v12

    .line 420
    and-int/lit8 v13, v12, 0x2

    .line 422
    if-eqz v13, :cond_9

    .line 424
    move v13, v11

    .line 425
    goto :goto_2

    .line 426
    :cond_9
    move v13, v8

    .line 427
    :goto_2
    if-eqz v13, :cond_a

    .line 429
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 431
    goto :goto_3

    .line 432
    :cond_a
    move-object v5, v9

    .line 433
    :goto_3
    invoke-virtual {v0, v5, v14, v15}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(Landroid/content/ComponentName;J)V

    .line 436
    if-eqz v13, :cond_b

    .line 438
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 440
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 442
    iget v8, v0, Lcom/android/server/autofill/Session;->id:I

    .line 444
    iget-boolean v6, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 446
    move-wide/from16 v19, v14

    .line 448
    move-object v14, v5

    .line 449
    move-wide/from16 v15, v19

    .line 451
    move/from16 v17, v8

    .line 453
    move/from16 v18, v6

    .line 455
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    .line 458
    goto :goto_4

    .line 459
    :cond_b
    move-wide/from16 v19, v14

    .line 461
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 463
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 465
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 468
    move-result-object v14

    .line 469
    iget v15, v0, Lcom/android/server/autofill/Session;->id:I

    .line 471
    iget-boolean v5, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 473
    move-wide/from16 v16, v19

    .line 475
    move/from16 v18, v5

    .line 477
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;IJZ)V

    .line 480
    :goto_4
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 482
    monitor-enter v5

    .line 483
    :try_start_1
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 485
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 491
    move-result-object v6

    .line 492
    if-eqz v6, :cond_d

    .line 494
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 496
    iput-boolean v11, v1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 498
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 500
    if-eqz v1, :cond_c

    .line 502
    const-string v1, "AutofillSession"

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 506
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 511
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    const-string v0, ", but session is kept for augmented autofill only"

    .line 516
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    move-result-object v0

    .line 523
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    goto :goto_5

    .line 527
    :catchall_1
    move-exception v0

    .line 528
    goto :goto_6

    .line 529
    :cond_c
    :goto_5
    monitor-exit v5

    .line 530
    return-void

    .line 531
    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 534
    if-eqz v4, :cond_e

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    .line 538
    const-string v5, "Service disabled autofill for "

    .line 540
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 545
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    const-string v5, ": flags="

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    const-string v5, ", duration="

    .line 558
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    move-wide/from16 v5, v19

    .line 563
    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 566
    const-string v5, "AutofillSession"

    .line 568
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    move-result-object v4

    .line 572
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    goto :goto_7

    .line 576
    :goto_6
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    throw v0

    .line 578
    :cond_e
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 581
    move-result-object v4

    .line 582
    if-eqz v4, :cond_f

    .line 584
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_10

    .line 590
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 593
    move-result-object v5

    .line 594
    if-eqz v5, :cond_11

    .line 596
    :cond_10
    if-eqz v1, :cond_13

    .line 598
    :cond_11
    if-eqz v1, :cond_12

    .line 600
    const/4 v5, 0x4

    .line 601
    goto :goto_8

    .line 602
    :cond_12
    const/4 v5, 0x0

    .line 603
    :goto_8
    invoke-virtual {v0, v9, v5}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(Ljava/util/ArrayList;I)V

    .line 606
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 608
    monitor-enter v1

    .line 609
    :try_start_3
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 611
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 613
    new-instance v8, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 615
    invoke-direct {v8, v6}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 618
    iput-object v8, v5, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 620
    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 623
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 624
    :cond_13
    if-eqz v7, :cond_15

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 629
    move-result-object v1

    .line 630
    if-nez v1, :cond_14

    .line 632
    const/4 v1, 0x0

    .line 633
    goto :goto_9

    .line 634
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 637
    move-result-object v1

    .line 638
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 641
    move-result v1

    .line 642
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 645
    move-result-object v1

    .line 646
    const/16 v5, 0x38d

    .line 648
    invoke-virtual {v7, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 651
    if-eqz v10, :cond_15

    .line 653
    array-length v1, v10

    .line 654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 657
    move-result-object v1

    .line 658
    const/16 v5, 0x4f7

    .line 660
    invoke-virtual {v7, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 663
    :cond_15
    if-nez v4, :cond_16

    .line 665
    const/4 v8, 0x0

    .line 666
    goto :goto_a

    .line 667
    :cond_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 670
    move-result v8

    .line 671
    :goto_a
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 673
    monitor-enter v4

    .line 674
    :try_start_4
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 676
    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 678
    new-instance v5, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 680
    const/4 v6, 0x6

    .line 681
    invoke-direct {v5, v8, v6}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 684
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 687
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 689
    iget-object v1, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 691
    new-instance v5, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 693
    const/4 v6, 0x1

    .line 694
    invoke-direct {v5, v8, v6}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 697
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 703
    move-result-object v1

    .line 704
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 707
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 709
    iget-object v2, v1, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 711
    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    .line 713
    const/4 v5, 0x1

    .line 714
    invoke-direct {v3, v5, v1}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 717
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 720
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 722
    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 725
    monitor-exit v4

    .line 726
    return-void

    .line 727
    :catchall_2
    move-exception v0

    .line 728
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 729
    throw v0

    .line 730
    :catchall_3
    move-exception v0

    .line 731
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 732
    throw v0

    .line 733
    :goto_b
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 734
    throw v0
.end method

.method public final onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "onSaveRequestFailure(): not showing \'"

    .line 4
    const-string v1, "Call to Session#onSaveRequestFailure() rejected - session: "

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v2

    .line 10
    xor-int/lit8 v2, v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 17
    const/4 v5, 0x0

    .line 18
    iput-boolean v5, v4, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 20
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v6

    .line 29
    iget-wide v8, v4, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    .line 31
    sub-long/2addr v6, v8

    .line 32
    iget-object v4, v4, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 34
    new-instance v8, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    .line 36
    const/4 v9, 0x0

    .line 37
    invoke-direct {v8, v6, v7, v9}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    .line 40
    invoke-virtual {v4, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 43
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 45
    invoke-virtual {v4}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 48
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 50
    if-eqz v4, :cond_0

    .line 52
    const-string p1, "AutofillSession"

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, " destroyed"

    .line 66
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v3

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    if-eqz v2, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 84
    iget-object v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 86
    if-nez v1, :cond_1

    .line 88
    move v1, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 92
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 94
    :goto_0
    const/16 v4, 0x1d

    .line 96
    if-lt v1, v4, :cond_2

    .line 98
    const-string v2, "AutofillSession"

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "\' because service\'s targetting API "

    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move v2, v5

    .line 124
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 127
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 129
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 131
    const/16 v4, 0x396

    .line 133
    invoke-static {v4, v0, p1, v1, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 136
    move-result-object p1

    .line 137
    const/16 v0, 0xb

    .line 139
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 142
    move-result-object p1

    .line 143
    if-eqz p2, :cond_3

    .line 145
    move-object v0, p2

    .line 146
    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    move-result v0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v0

    .line 156
    const/16 v1, 0x624

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 166
    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1, p2, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 178
    return-void

    .line 179
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0
.end method

.method public final onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 9

    .line 1
    const-string v0, "Call to Session#onSaveRequestSuccess() rejected - session: "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 8
    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    .line 11
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 13
    iget-object v2, v2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 15
    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v3, v4}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 24
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v5

    .line 33
    iget-wide v7, v2, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    .line 35
    sub-long/2addr v5, v7

    .line 36
    iget-object v2, v2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 38
    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 49
    invoke-virtual {v2}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 52
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 54
    if-eqz v2, :cond_0

    .line 56
    const-string p1, "AutofillSession"

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string p0, " destroyed"

    .line 70
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 87
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 89
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 91
    const/16 v3, 0x396

    .line 93
    invoke-static {v3, v0, p1, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 96
    move-result-object p1

    .line 97
    if-nez p2, :cond_1

    .line 99
    const/16 v4, 0xa

    .line 101
    :cond_1
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 110
    if-eqz p2, :cond_3

    .line 112
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 114
    if-eqz p1, :cond_2

    .line 116
    const-string p1, "AutofillSession"

    .line 118
    const-string v0, "Starting intent sender on save()"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 130
    return-void

    .line 131
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    .line 3
    const-string p1, "AutofillSession"

    .line 5
    const-string/jumbo v0, "removing session because service died"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final onShown(II)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onShown(): "

    .line 4
    const-string/jumbo v1, "onShown(): "

    .line 7
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 12
    iget-object v3, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 14
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 16
    const/16 v5, 0xf

    .line 18
    invoke-direct {v4, p1, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 21
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne p1, v3, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 29
    iget-object v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 31
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;

    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-direct {v4, v0, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;I)V

    .line 37
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 40
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    .line 42
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 46
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 48
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 50
    invoke-virtual {v0, v3, p1, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(IILandroid/os/Bundle;)V

    .line 53
    const-string v0, "AutofillSession"

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string p1, ", "

    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 87
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 89
    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 91
    const/4 v4, 0x7

    .line 92
    invoke-direct {v3, p2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 95
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 106
    move-result-wide v3

    .line 107
    iget-wide v5, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 109
    sub-long/2addr v3, v5

    .line 110
    long-to-int v3, v3

    .line 111
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 113
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 115
    const/16 v5, 0x9

    .line 117
    invoke-direct {v4, v3, v5}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 120
    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 125
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    .line 127
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 129
    invoke-virtual {v1, v3, p1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(IILandroid/os/Bundle;)V

    .line 132
    const-string p0, "AutofillSession"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string p1, ", "

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_1
    monitor-exit v2

    .line 158
    return-void

    .line 159
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0
.end method

.method public final onSwitchInputMethodLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 19
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    .line 21
    if-eqz v0, :cond_2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 28
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 34
    if-eqz v0, :cond_3

    .line 36
    iget v0, v0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 38
    and-int/lit16 v0, v0, 0x1000

    .line 40
    if-eqz v0, :cond_3

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 50
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 52
    if-eqz v0, :cond_3

    .line 54
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public final processNullResponseLocked(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 4
    and-int/lit8 v0, p2, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 14
    const v2, 0x1040206

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "AutofillSession"

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "processNullResponseLocked(): no context for req "

    .line 46
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object p1, v2

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 52
    iget-object v0, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 54
    new-instance v3, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-direct {v3, v4, v5}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 66
    iget-object v3, v0, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 68
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    .line 70
    const/4 v5, 0x1

    .line 71
    invoke-direct {v4, v5, v0}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 79
    invoke-virtual {v0}, Lcom/android/server/autofill/FillResponseEventLogger;->logAndEndEvent()V

    .line 82
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 84
    iget-object v3, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter v3

    .line 87
    :try_start_0
    iput-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 89
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 96
    if-nez v0, :cond_3

    .line 98
    and-int/lit8 v0, p2, 0x4

    .line 100
    if-nez v0, :cond_3

    .line 102
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 104
    if-eqz p2, :cond_2

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v0, "canceling session "

    .line 111
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, " when service returned null and it cannot be augmented. AutofillableIds: "

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    const/4 p2, 0x2

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(Ljava/util/ArrayList;I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 141
    goto :goto_2

    .line 142
    :cond_3
    and-int/lit8 p2, p2, 0x4

    .line 144
    const-string/jumbo v0, "keeping session "

    .line 147
    if-eqz p2, :cond_5

    .line 149
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 151
    if-eqz p2, :cond_4

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 175
    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 180
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 182
    invoke-virtual {p2, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 185
    goto :goto_1

    .line 186
    :cond_5
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 188
    if-eqz p2, :cond_6

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, " when service returned null but it can be augmented. AutofillableIds: "

    .line 202
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 217
    :try_start_1
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 219
    const/16 p1, 0x20

    .line 221
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    goto :goto_2

    .line 225
    :catch_0
    move-exception p0

    .line 226
    const-string p1, "Error setting client to autofill-only"

    .line 228
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_2
    return-void

    .line 232
    :catchall_0
    move-exception p0

    .line 233
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    throw p0
.end method

.method public final processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x4

    .line 20
    const-string v1, "AutofillSession"

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-string v0, "Service did not request to wait for delayed fill response."

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unregisterDelayedFillBroadcastLocked()V

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 35
    move-result v0

    .line 36
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 38
    if-eqz v2, :cond_1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v3, "processResponseLocked(): mCurrentViewId="

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, ",flags="

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v3, ", reqId="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, ", resp="

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v3, ",newClientState="

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 94
    const/4 v2, 0x2

    .line 95
    if-nez v1, :cond_2

    .line 97
    new-instance v1, Landroid/util/SparseArray;

    .line 99
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 102
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    if-eqz p2, :cond_3

    .line 111
    move-object v0, p2

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    .line 116
    move-result-object v0

    .line 117
    :goto_0
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 119
    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x0

    .line 121
    if-eqz p2, :cond_4

    .line 123
    const-string/jumbo v3, "webview_requested_credential"

    .line 126
    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_4

    .line 132
    move p2, v0

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move p2, v1

    .line 135
    :goto_1
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 141
    iget-object v4, v4, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 143
    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 145
    const/4 v6, 0x0

    .line 146
    invoke-direct {v5, v6, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 149
    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 152
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 154
    sget-object v4, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 159
    move-result v4

    .line 160
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 162
    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 168
    invoke-virtual {p2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 171
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 173
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 175
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 177
    new-instance v5, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;

    .line 179
    invoke-direct {v5, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V

    .line 182
    invoke-virtual {p2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 185
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 187
    iget-object p2, p2, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 189
    new-instance v4, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;

    .line 191
    const/4 v5, 0x0

    .line 192
    invoke-direct {v4, v5, v3}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 195
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 198
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 201
    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 205
    move-result-object p2

    .line 206
    if-nez p2, :cond_5

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    .line 212
    move-result-object p2

    .line 213
    if-nez p2, :cond_6

    .line 215
    goto :goto_2

    .line 216
    :cond_6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 219
    move-result-object p1

    .line 220
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    .line 223
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 226
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 228
    if-nez p1, :cond_7

    .line 230
    return-void

    .line 231
    :cond_7
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 233
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    move-result-object p0

    .line 237
    check-cast p0, Lcom/android/server/autofill/ViewState;

    .line 239
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 242
    return-void
.end method

.method public final processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->isEmptyResponse(Landroid/service/autofill/FillResponse;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final removeFromService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final removeFromServiceLocked()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    const-string v1, "AutofillSession"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "removeFromServiceLocked("

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, "): "

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 39
    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "Call to Session#removeFromServiceLocked() rejected - session: "

    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 50
    const-string v2, " destroyed"

    .line 52
    invoke-static {v0, p0, v2, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 58
    if-eqz v0, :cond_2

    .line 60
    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 62
    const/4 v2, 0x2

    .line 63
    if-ne v0, v2, :cond_2

    .line 65
    const-string/jumbo p0, "removeFromServiceLocked() ignored, waiting for pending save ui"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 78
    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    .line 80
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 92
    if-eqz v0, :cond_4

    .line 94
    iget-object v0, v0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 96
    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 99
    :cond_4
    const/4 v0, 0x3

    .line 100
    iput v0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 102
    return-void
.end method

.method public final requestAssistStructureForPccLocked(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 3
    iget v0, v0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/autofill/Session;->mFillRequestIdSnapshot:I

    .line 21
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 23
    const/4 v1, 0x3

    .line 24
    iput v1, v0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 26
    :cond_2
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounterForPcc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 31
    move-result v0

    .line 32
    const/high16 v1, -0x80000000

    .line 34
    if-eq v0, v1, :cond_2

    .line 36
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 38
    const-string v2, "AutofillSession"

    .line 40
    if-eqz v1, :cond_3

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v3, "request id is "

    .line 47
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, ", requesting assist structure for pcc"

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 67
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    .line 72
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 82
    move-result-object v0

    .line 83
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mPccAssistReceiver:Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;

    .line 85
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 87
    invoke-interface {v0, v5, v1, v6, p1}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_4

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string/jumbo v0, "failed to request autofill data for "

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    goto :goto_3

    .line 123
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    :goto_3
    return-void
.end method

.method public final requestFallbackFromFillDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 4
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 9
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 23
    iget p0, p0, Lcom/android/server/autofill/Session;->mFlags:I

    .line 25
    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .locals 8

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 14
    invoke-virtual {v2}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    .line 17
    iget v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    iput v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 23
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 25
    iget v4, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 27
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 29
    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 31
    const/4 v6, 0x1

    .line 32
    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 35
    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 38
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 40
    iget v4, p0, Lcom/android/server/autofill/Session;->mFlags:I

    .line 42
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 44
    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 46
    const/4 v6, 0x4

    .line 47
    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 50
    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 55
    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 59
    const/4 v4, 0x3

    .line 60
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    and-int/lit8 v2, p3, 0x1

    .line 66
    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 70
    invoke-virtual {v2, v3}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 76
    const/4 v4, 0x4

    .line 77
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 80
    :goto_1
    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p0, v1, v3, v3, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 85
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 87
    const/4 v2, 0x5

    .line 88
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 93
    const/4 v2, 0x0

    .line 94
    iput-boolean v2, v1, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 96
    iput v3, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 98
    iget-boolean v1, v1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 100
    const-string v4, ", flags="

    .line 102
    const-string v5, "AutofillSession"

    .line 104
    if-nez v1, :cond_12

    .line 106
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 108
    if-nez v1, :cond_4

    .line 110
    goto/16 :goto_9

    .line 112
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 115
    sget-object p2, Lcom/android/server/autofill/Session;->mRequestId:Lcom/android/server/autofill/RequestId;

    .line 117
    :cond_5
    iget-object v1, p2, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 122
    move-result v1

    .line 123
    const v6, 0x8000

    .line 126
    rem-int/2addr v1, v6

    .line 127
    const/4 v6, 0x2

    .line 128
    if-ge v1, v6, :cond_6

    .line 130
    move v1, v6

    .line 131
    :cond_6
    iget-object v6, p2, Lcom/android/server/autofill/RequestId;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 136
    rem-int/lit8 v6, v1, 0x2

    .line 138
    if-ne v6, v3, :cond_7

    .line 140
    move v6, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    move v6, v2

    .line 143
    :goto_2
    if-ne v6, v0, :cond_5

    .line 145
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 147
    if-eqz p2, :cond_8

    .line 149
    const-string/jumbo p2, "nextId(): requestId = "

    .line 152
    const-string v0, "RequestId"

    .line 154
    invoke-static {v1, p2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_8
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 159
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 162
    move-result p2

    .line 163
    add-int/2addr p2, v3

    .line 164
    const/16 v0, 0x38b

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v6

    .line 174
    const/16 v7, 0x5ae

    .line 176
    invoke-virtual {v0, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 179
    move-result-object v0

    .line 180
    if-eqz p3, :cond_9

    .line 182
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v6

    .line 186
    const/16 v7, 0x5ac

    .line 188
    invoke-virtual {v0, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 191
    :cond_9
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 193
    invoke-virtual {v6, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 198
    if-eqz v0, :cond_a

    .line 200
    const-string v0, "Requesting structure for request #"

    .line 202
    const-string v6, " ,requestId="

    .line 204
    invoke-static {p2, v1, v0, v6, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object p2

    .line 208
    invoke-static {p2, p3, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 211
    :cond_a
    and-int/lit16 p2, p3, 0x800

    .line 213
    if-eqz p2, :cond_b

    .line 215
    move p2, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_b
    move p2, v2

    .line 218
    :goto_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 220
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 222
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 224
    const/4 v6, 0x6

    .line 225
    invoke-direct {v4, v1, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 228
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 233
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 235
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 237
    const/4 v6, 0x2

    .line 238
    invoke-direct {v4, v6, p2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 241
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 244
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 246
    iget v0, p0, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 248
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 250
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 252
    const/4 v6, 0x0

    .line 253
    invoke-direct {v4, v0, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 256
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 259
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    .line 264
    move-result v0

    .line 265
    iget-object p2, p2, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 267
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 269
    const/4 v6, 0x2

    .line 270
    invoke-direct {v4, v0, v6}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 273
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 276
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 278
    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 280
    new-instance v0, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 282
    const/4 v4, 0x3

    .line 283
    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 286
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 289
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    .line 294
    move-result v0

    .line 295
    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 297
    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 299
    const/4 v6, 0x0

    .line 300
    invoke-direct {v4, v0, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 303
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 306
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    .line 311
    move-result v0

    .line 312
    iget-object p2, p2, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 314
    new-instance v4, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 316
    const/4 v6, 0x6

    .line 317
    invoke-direct {v4, v0, v6}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 320
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 323
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionCommittedEventLogger:Lcom/android/server/autofill/SessionCommittedEventLogger;

    .line 325
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    .line 328
    move-result v0

    .line 329
    iget-object p2, p2, Lcom/android/server/autofill/SessionCommittedEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 331
    new-instance v4, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;

    .line 333
    const/4 v6, 0x5

    .line 334
    invoke-direct {v4, v0, v6}, Lcom/android/server/autofill/SessionCommittedEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 337
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 340
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 342
    iget-boolean p2, p2, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    .line 344
    if-eqz p2, :cond_c

    .line 346
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 348
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 350
    iget v4, p0, Lcom/android/server/autofill/Session;->userId:I

    .line 352
    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 354
    new-instance v6, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;

    .line 356
    invoke-direct {v6, v0, v4}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    .line 359
    invoke-virtual {p2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 362
    :cond_c
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 364
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 366
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 368
    xor-int/2addr v0, v3

    .line 369
    iget-object p2, p2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 371
    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;

    .line 373
    invoke-direct {v4, v0}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 376
    invoke-virtual {p2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 382
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 384
    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isPccClassificationEnabled()Z

    .line 387
    move-result p2

    .line 388
    if-eqz p2, :cond_e

    .line 390
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 392
    iget-object p2, p2, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 394
    if-nez p2, :cond_e

    .line 396
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 398
    if-eqz p2, :cond_d

    .line 400
    const-string/jumbo p2, "triggering field classification"

    .line 403
    invoke-static {v5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_d
    or-int/lit16 p2, p3, 0x200

    .line 408
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    .line 411
    :cond_e
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 413
    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 416
    move-result-object p2

    .line 417
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 419
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    .line 421
    const/4 v4, 0x0

    .line 422
    if-eqz v0, :cond_10

    .line 424
    if-eqz p2, :cond_10

    .line 426
    and-int/lit8 v0, p3, 0x10

    .line 428
    if-nez v0, :cond_f

    .line 430
    goto :goto_4

    .line 431
    :cond_f
    and-int/lit8 v0, p3, 0x40

    .line 433
    if-eqz v0, :cond_10

    .line 435
    :goto_4
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 437
    iput-object v4, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 439
    iput-boolean v3, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 441
    iput-object v4, v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 443
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 445
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 450
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 453
    new-instance v3, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;

    .line 455
    invoke-direct {v3, v2, v0}, Lcom/android/server/autofill/InlineSuggestionRequestConsumer;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 460
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 462
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 465
    new-instance v4, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;

    .line 467
    invoke-direct {v4, v2, v1, v3, v0}, Lcom/android/server/autofill/InlineSuggestionRendorInfoCallbackOnResultListener;-><init>(Ljava/lang/ref/WeakReference;ILcom/android/server/autofill/InlineSuggestionRequestConsumer;Landroid/view/autofill/AutofillId;)V

    .line 470
    new-instance v0, Landroid/os/RemoteCallback;

    .line 472
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 474
    invoke-direct {v0, v4, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 477
    invoke-virtual {p2, v0}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 480
    const/high16 p2, 0x10000

    .line 482
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 485
    goto :goto_5

    .line 486
    :cond_10
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 488
    iput-object v4, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 490
    iput-boolean v2, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mWaitForInlineRequest:Z

    .line 492
    iput-object v4, p1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 494
    :goto_5
    const-string/jumbo p1, "failed to request autofill data for "

    .line 497
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    .line 499
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 502
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    .line 504
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 510
    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 514
    move-result-object v2

    .line 515
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 517
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 519
    invoke-interface {v2, v3, p2, v4, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    .line 522
    move-result p2

    .line 523
    if-nez p2, :cond_11

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    .line 527
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 532
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    move-result-object p0

    .line 539
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    goto :goto_6

    .line 543
    :catchall_0
    move-exception p0

    .line 544
    goto :goto_7

    .line 545
    :cond_11
    :goto_6
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    goto :goto_8

    .line 549
    :goto_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    :catch_0
    :goto_8
    return-void

    .line 554
    :cond_12
    :goto_9
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 556
    if-eqz p1, :cond_13

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    .line 560
    const-string/jumbo p2, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    .line 563
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 568
    iget-boolean p2, p2, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 570
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const-string p2, ")"

    .line 581
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    move-result-object p1

    .line 588
    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_13
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 593
    iput-boolean v3, p1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 595
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 597
    iget-object p1, p1, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 599
    new-instance p2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 601
    const/4 v0, 0x3

    .line 602
    invoke-direct {p2, v3, v0}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 605
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 608
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 610
    iget-object p1, p1, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 612
    new-instance p2, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;

    .line 614
    invoke-direct {p2}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;-><init>()V

    .line 617
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 620
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 622
    invoke-virtual {p1}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 625
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 628
    return-void
.end method

.method public final requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z
    .locals 12

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 3
    const-string v1, "AutofillSession"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 11
    iput-boolean v3, v0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 13
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "Re-starting session on view "

    .line 21
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " and flags "

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const/16 p1, 0x100

    .line 44
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 47
    return v2

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 56
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 62
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 67
    :goto_0
    const-string v5, ": "

    .line 69
    if-nez v4, :cond_3

    .line 71
    if-eqz v0, :cond_a

    .line 73
    iget v0, v0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 75
    const/high16 v4, 0x10000

    .line 77
    and-int/2addr v0, v4

    .line 78
    if-nez v0, :cond_a

    .line 80
    goto/16 :goto_4

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 84
    iget-boolean v0, v0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 86
    if-eqz v0, :cond_4

    .line 88
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 90
    if-eqz v0, :cond_d

    .line 92
    const-string v0, "Starting a new partition because the response has expired."

    .line 94
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto/16 :goto_4

    .line 99
    :cond_4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 102
    move-result v0

    .line 103
    const-class v6, Lcom/android/server/autofill/AutofillManagerService;

    .line 105
    monitor-enter v6

    .line 106
    :try_start_0
    sget v7, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 108
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    if-lt v0, v7, :cond_5

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "Not starting a new partition on "

    .line 115
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, " because session "

    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 128
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string p0, " reached maximum of "

    .line 133
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-class v6, Lcom/android/server/autofill/AutofillManagerService;

    .line 138
    monitor-enter v6

    .line 139
    :try_start_1
    sget p0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 141
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {p3, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 145
    goto :goto_3

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_5
    move v6, v3

    .line 150
    :goto_1
    if-ge v6, v0, :cond_d

    .line 152
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Landroid/service/autofill/FillResponse;

    .line 158
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    .line 161
    move-result-object v8

    .line 162
    invoke-static {v8, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_6

    .line 168
    goto :goto_3

    .line 169
    :cond_6
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 172
    move-result-object v8

    .line 173
    if-eqz v8, :cond_7

    .line 175
    invoke-virtual {v8}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 178
    move-result-object v9

    .line 179
    invoke-static {v9, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    move-result v9

    .line 183
    if-nez v9, :cond_a

    .line 185
    invoke-virtual {v8}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 188
    move-result-object v8

    .line 189
    invoke-static {v8, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_7

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 199
    move-result-object v8

    .line 200
    if-eqz v8, :cond_9

    .line 202
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 205
    move-result v9

    .line 206
    move v10, v3

    .line 207
    :goto_2
    if-ge v10, v9, :cond_9

    .line 209
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v11

    .line 213
    check-cast v11, Landroid/service/autofill/Dataset;

    .line 215
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 218
    move-result-object v11

    .line 219
    if-eqz v11, :cond_8

    .line 221
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 224
    move-result v11

    .line 225
    if-eqz v11, :cond_8

    .line 227
    goto :goto_3

    .line 228
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 230
    goto :goto_2

    .line 231
    :cond_9
    invoke-virtual {v7}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    .line 234
    move-result-object v7

    .line 235
    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_c

    .line 241
    :cond_a
    :goto_3
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 243
    if-eqz p0, :cond_b

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    .line 247
    const-string p3, "Not starting new partition for view "

    .line 249
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_b
    return v3

    .line 273
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 275
    goto :goto_1

    .line 276
    :cond_d
    :goto_4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 278
    if-eqz v0, :cond_e

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    const-string v4, "Starting partition or augmented request for view id "

    .line 284
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_e
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 309
    iput-boolean v3, p1, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 311
    const/16 p1, 0x20

    .line 313
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 316
    return v2

    .line 317
    :catchall_1
    move-exception p0

    .line 318
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    throw p0
.end method

.method public final requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 8
    iget-boolean v3, v2, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 10
    const/4 v13, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 14
    iget-boolean v2, v2, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    .line 16
    if-nez v2, :cond_0

    .line 18
    move v2, v13

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v4

    .line 21
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 22
    if-nez v2, :cond_2

    .line 24
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string v0, "AutofillSession"

    .line 30
    const-string/jumbo v1, "requestShowFillDialog: fill dialog is disabled"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    return v4

    .line 37
    :cond_2
    move/from16 v1, p4

    .line 39
    and-int/lit16 v1, v1, 0x80

    .line 41
    if-eqz v1, :cond_4

    .line 43
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 45
    if-eqz v0, :cond_3

    .line 47
    const-string v0, "AutofillSession"

    .line 49
    const-string/jumbo v1, "requestShowFillDialog: IME is showing"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3
    return v4

    .line 56
    :cond_4
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 58
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 60
    if-eqz v1, :cond_6

    .line 62
    iget-object v2, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    .line 64
    monitor-enter v2

    .line 65
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 67
    if-nez v3, :cond_5

    .line 69
    iget-boolean v1, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeShowing:Z

    .line 71
    if-eqz v1, :cond_5

    .line 73
    move v1, v13

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move v1, v4

    .line 78
    :goto_1
    monitor-exit v2

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw v0

    .line 82
    :cond_6
    move v1, v4

    .line 83
    :goto_3
    if-eqz v1, :cond_7

    .line 85
    return v4

    .line 86
    :cond_7
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 88
    monitor-enter v2

    .line 89
    :try_start_2
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLastFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 91
    if-eqz v1, :cond_c

    .line 93
    move-object/from16 v5, p2

    .line 95
    invoke-static {v1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_8

    .line 101
    goto/16 :goto_7

    .line 103
    :cond_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 106
    monitor-enter v1

    .line 107
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/Session;->getServiceIcon(Landroid/service/autofill/FillResponse;)Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object v7

    .line 111
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 115
    move-result-object v2

    .line 116
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 118
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 124
    iget v1, v0, Lcom/android/server/autofill/Session;->id:I

    .line 126
    iget-boolean v3, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 128
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 130
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 137
    if-eqz v6, :cond_9

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v12, "showFillDialog for "

    .line 144
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 150
    move-result-object v12

    .line 151
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v12, ": "

    .line 156
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-object/from16 v12, p1

    .line 161
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v6

    .line 168
    const-string v14, "AutofillUI"

    .line 170
    invoke-static {v14, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_4

    .line 174
    :cond_9
    move-object/from16 v12, p1

    .line 176
    :goto_4
    const/16 v6, 0x38e

    .line 178
    invoke-static {v6, v9, v8, v1, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 181
    move-result-object v1

    .line 182
    if-nez p3, :cond_a

    .line 184
    move v3, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 189
    move-result v3

    .line 190
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v3

    .line 194
    const/16 v6, 0x38f

    .line 196
    invoke-virtual {v1, v6, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 203
    move-result-object v3

    .line 204
    if-nez v3, :cond_b

    .line 206
    goto :goto_6

    .line 207
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 210
    move-result-object v3

    .line 211
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 214
    move-result v4

    .line 215
    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v3

    .line 219
    const/16 v4, 0x38d

    .line 221
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 224
    move-result-object v14

    .line 225
    iget-object v15, v2, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v6, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;

    .line 229
    move-object v1, v6

    .line 230
    move-object/from16 v3, p0

    .line 232
    move-object/from16 v4, p1

    .line 234
    move-object/from16 v5, p2

    .line 236
    move-object v0, v6

    .line 237
    move-object/from16 v6, p3

    .line 239
    move-object v12, v14

    .line 240
    invoke-direct/range {v1 .. v12}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V

    .line 243
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return v13

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    throw v0

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    goto :goto_8

    .line 252
    :cond_c
    :goto_7
    :try_start_5
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 254
    if-eqz v0, :cond_d

    .line 256
    const-string v0, "AutofillSession"

    .line 258
    const-string v1, "Last fill dialog triggered ids are changed."

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_d
    monitor-exit v2

    .line 264
    return v4

    .line 265
    :goto_8
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 266
    throw v0

    .line 267
    :catchall_3
    move-exception v0

    .line 268
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 269
    throw v0
.end method

.method public final requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 5
    const/4 v9, 0x0

    .line 6
    if-nez v8, :cond_0

    .line 8
    const-string v0, "AutofillSession"

    .line 10
    const-string/jumbo v1, "requestShowInlineSuggestionsLocked(): no view currently focused"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v9

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 19
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 21
    if-eqz v1, :cond_2

    .line 23
    iget-boolean v2, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 25
    if-eqz v2, :cond_1

    .line 27
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 34
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 49
    const-string v0, "AutofillSession"

    .line 51
    const-string v1, "InlineSuggestionsRequest unavailable"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v9

    .line 57
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 59
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_4

    .line 65
    const-string v0, "AutofillSession"

    .line 67
    const-string v1, "RemoteInlineSuggestionRenderService not found"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v9

    .line 73
    :cond_4
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 75
    monitor-enter v2

    .line 76
    :try_start_0
    iput-boolean v9, v0, Lcom/android/server/autofill/Session;->mLoggedInlineDatasetShown:Z

    .line 78
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    new-instance v10, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    .line 81
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    move-object v11, v1

    .line 86
    check-cast v11, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 88
    iget v6, v0, Lcom/android/server/autofill/Session;->userId:I

    .line 90
    iget v7, v0, Lcom/android/server/autofill/Session;->id:I

    .line 92
    move-object v1, v10

    .line 93
    move-object v2, v11

    .line 94
    move-object v3, v8

    .line 95
    move-object/from16 v4, p2

    .line 97
    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    .line 100
    new-instance v1, Lcom/android/server/autofill/Session$3;

    .line 102
    move-object/from16 v2, p1

    .line 104
    invoke-direct {v1, v0, v2, v8}, Lcom/android/server/autofill/Session$3;-><init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    .line 107
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 109
    iget-object v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 111
    check-cast v3, Lcom/android/server/autofill/AutofillManagerService;

    .line 113
    iget-object v4, v3, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 115
    monitor-enter v4

    .line 116
    :try_start_1
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    .line 118
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 122
    move-result-object v4

    .line 123
    const-string v5, "android:autofill"

    .line 125
    const/4 v6, 0x1

    .line 126
    if-eqz v4, :cond_6

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_6

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 141
    move-result v7

    .line 142
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_5

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 151
    move-result v8

    .line 152
    and-int/lit8 v8, v8, 0x8

    .line 154
    if-eqz v8, :cond_5

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    move v6, v9

    .line 158
    :goto_1
    new-instance v8, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;

    .line 160
    invoke-direct {v8, v1, v7}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/Session$3;I)V

    .line 163
    invoke-static {v11, v9, v4, v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    .line 166
    move-result-object v4

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    .line 170
    move-result-object v2

    .line 171
    invoke-static {v11, v10, v5, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    .line 174
    move-result-object v18

    .line 175
    const-string v14, "android:autofill"

    .line 177
    const-string v16, "android:autofill:action"

    .line 179
    new-instance v2, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 181
    invoke-virtual {v4}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v4}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    .line 188
    move-result-object v15

    .line 189
    invoke-virtual {v4}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    .line 192
    move-result v17

    .line 193
    move-object v12, v2

    .line 194
    invoke-direct/range {v12 .. v18}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 197
    new-instance v5, Landroid/view/inputmethod/InlineSuggestion;

    .line 199
    new-instance v6, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 201
    invoke-direct {v6, v10, v4, v8, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 204
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    .line 206
    const/4 v4, 0x0

    .line 207
    invoke-direct {v1, v6, v4}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 210
    invoke-direct {v5, v2, v1}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 213
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 215
    invoke-direct {v1, v10, v5, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;I)V

    .line 218
    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 222
    move-result-object v4

    .line 223
    if-eqz v4, :cond_8

    .line 225
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    .line 234
    move-result v4

    .line 235
    and-int/lit8 v4, v4, 0x8

    .line 237
    if-eqz v4, :cond_7

    .line 239
    move v9, v6

    .line 240
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 243
    move-result-object v2

    .line 244
    invoke-static {v10, v5, v2, v1, v9}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;

    .line 247
    move-result-object v1

    .line 248
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 250
    invoke-direct {v2, v10, v1, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V

    .line 253
    move-object v1, v2

    .line 254
    goto :goto_2

    .line 255
    :cond_8
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 257
    new-instance v2, Landroid/util/SparseArray;

    .line 259
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 262
    invoke-direct {v1, v10, v2, v3}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;I)V

    .line 265
    :goto_2
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 267
    iput-object v1, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 269
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 272
    move-result v0

    .line 273
    return v0

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    throw v0

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    throw v0
.end method

.method public final requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "AutofillSession"

    .line 14
    const-string v0, "Error sending input show up notification"

    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V
    .locals 6

    .line 1
    const-string v0, "Error sending credential response to activity: "

    .line 3
    const-string v1, "Skipping sending credential response to view: "

    .line 5
    const-string v2, "Call to Session#sendCredentialManagerResponseToApp() rejected - session: "

    .line 7
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 12
    if-eqz v4, :cond_0

    .line 14
    const-string p1, "AutofillSession"

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p0, " destroyed"

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_3

    .line 43
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 51
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 53
    iget-object v4, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 55
    check-cast v4, Lcom/android/server/autofill/AutofillManagerService;

    .line 57
    iget-object v5, v4, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 59
    monitor-enter v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mIsFillFieldsFromCurrentSessionOnly:Z

    .line 62
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    if-eqz v4, :cond_1

    .line 65
    if-eqz v2, :cond_1

    .line 67
    :try_start_3
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 69
    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getSessionId()I

    .line 72
    move-result v2

    .line 73
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    .line 75
    if-eq v2, v4, :cond_1

    .line 77
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 79
    if-eqz v2, :cond_1

    .line 81
    const-string v2, "AutofillSession"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, " as it isn\'t part of the current session: "

    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 112
    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 126
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 128
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p2, p0, p3, v1, p1}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialException(ILandroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p3}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 148
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/autofill/Session;->sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 154
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 156
    invoke-interface {p1, p0, p3, p2}, Landroid/view/autofill/IAutoFillManagerClient;->onGetCredentialResponse(ILandroid/view/autofill/AutofillId;Landroid/credentials/GetCredentialResponse;)V

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    const-string p0, "AutofillSession"

    .line 162
    const-string/jumbo p1, "sendCredentialManagerResponseToApp called with null responseand exception"

    .line 165
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    goto :goto_2

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    :goto_1
    :try_start_6
    const-string p1, "AutofillSession"

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_2
    monitor-exit v3

    .line 190
    return-void

    .line 191
    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    throw p0
.end method

.method public final sendResponseToViewNode(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/service/autofill/FillContext;

    .line 19
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v2, v3, p3}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-static {v1, v2}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_1
    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 48
    new-instance p0, Landroid/os/Bundle;

    .line 50
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 53
    if-eqz p2, :cond_2

    .line 55
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    .line 63
    move-result-object p1

    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-virtual {p1, p2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    const-string p2, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 85
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getPendingCredentialCallback()Landroid/os/ResultReceiver;

    .line 91
    move-result-object p1

    .line 92
    const/4 p2, -0x1

    .line 93
    invoke-virtual {p1, p2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string p0, "AutofillSession"

    .line 99
    const-string p1, "View node not found after GetCredentialResponse"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_4
    :goto_2
    return-void
.end method

.method public final setAuthenticationResultLocked(ILandroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-boolean v3, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 9
    const-string v4, "AutofillSession"

    .line 11
    if-eqz v3, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget v1, v1, Lcom/android/server/autofill/Session;->id:I

    .line 22
    const-string v2, " destroyed"

    .line 24
    invoke-static {v0, v1, v2, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    :cond_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 30
    if-eqz v3, :cond_1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v5, "setAuthenticationResultLocked(): id= "

    .line 37
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v5, ", data="

    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    .line 61
    move-result v3

    .line 62
    const-string v5, "android.view.autofill.extra.CLIENT_STATE"

    .line 64
    const-string v6, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    .line 66
    const/4 v7, 0x1

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    if-ne v3, v7, :cond_e

    .line 71
    if-nez v2, :cond_2

    .line 73
    move-object v3, v8

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-class v3, Landroid/service/autofill/Dataset;

    .line 77
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/service/autofill/Dataset;

    .line 83
    :goto_0
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 85
    if-eqz v6, :cond_3

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    const-string v10, "Auth result for augmented autofill: sessionId="

    .line 91
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget v10, v1, Lcom/android/server/autofill/Session;->id:I

    .line 96
    const-string v11, ", authId="

    .line 98
    const-string v12, ", dataset="

    .line 100
    invoke-static {v10, v0, v11, v12, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 122
    move-result v0

    .line 123
    if-ne v0, v7, :cond_4

    .line 125
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 135
    move-object v6, v0

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    move-object v6, v8

    .line 138
    :goto_1
    if-eqz v3, :cond_5

    .line 140
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v0

    .line 148
    if-ne v0, v7, :cond_5

    .line 150
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroid/view/autofill/AutofillValue;

    .line 160
    move-object v9, v0

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    move-object v9, v8

    .line 163
    :goto_2
    if-eqz v3, :cond_6

    .line 165
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    .line 168
    move-result-object v0

    .line 169
    move-object v10, v0

    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move-object v10, v8

    .line 172
    :goto_3
    if-eqz v6, :cond_c

    .line 174
    if-nez v9, :cond_7

    .line 176
    if-nez v10, :cond_7

    .line 178
    goto/16 :goto_6

    .line 180
    :cond_7
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 182
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mRemoteAugmentedAutofillService:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 184
    if-nez v0, :cond_8

    .line 186
    const-string v0, "Can\'t fill after auth: RemoteAugmentedAutofillService is null"

    .line 188
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 193
    iget-object v11, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 195
    monitor-enter v11

    .line 196
    :try_start_0
    iput-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 198
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 202
    goto/16 :goto_7

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    throw v0

    .line 207
    :cond_8
    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    .line 209
    invoke-virtual {v6, v8}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 212
    iput-object v6, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 214
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 217
    move-result-object v2

    .line 218
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 220
    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    .line 222
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v5, v8, v11, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 229
    if-eqz v10, :cond_9

    .line 231
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 234
    move-result-object v0

    .line 235
    iget-object v2, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 237
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 239
    iget v8, v1, Lcom/android/server/autofill/Session;->userId:I

    .line 241
    invoke-virtual {v0, v2, v5, v8, v10}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 244
    :cond_9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 246
    const-string v2, ", content="

    .line 248
    const-string v5, ", value="

    .line 250
    if-eqz v0, :cond_a

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    const-string v8, "Filling after auth: fieldId="

    .line 256
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 278
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_a
    if-eqz v10, :cond_b

    .line 283
    :try_start_2
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 285
    iget v3, v1, Lcom/android/server/autofill/Session;->id:I

    .line 287
    invoke-interface {v0, v3, v6, v10}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    .line 290
    goto :goto_5

    .line 291
    :catch_0
    move-exception v0

    .line 292
    goto :goto_4

    .line 293
    :cond_b
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 295
    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    .line 297
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 300
    move-result-object v11

    .line 301
    invoke-virtual {v3}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v0, v8, v11, v3, v7}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    goto :goto_5

    .line 309
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    const-string v7, "Error filling after auth: fieldId="

    .line 313
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v2

    .line 335
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    :goto_5
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 340
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 342
    invoke-direct {v2, v6}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 345
    iput-object v2, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 350
    goto :goto_7

    .line 351
    :cond_c
    :goto_6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 353
    if-eqz v0, :cond_d

    .line 355
    const-string v0, "Rejecting empty/invalid auth result"

    .line 357
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_d
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 362
    iget-object v10, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 364
    monitor-enter v10

    .line 365
    :try_start_3
    iput-object v8, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 367
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 371
    :goto_7
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 373
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 376
    return-void

    .line 377
    :catchall_1
    move-exception v0

    .line 378
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    throw v0

    .line 380
    :cond_e
    iget-object v10, v1, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 382
    const/4 v11, 0x2

    .line 383
    if-nez v10, :cond_f

    .line 385
    const-string/jumbo v2, "setAuthenticationResultLocked("

    .line 388
    const-string v3, "): no responses"

    .line 390
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 395
    invoke-virtual {v0, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 398
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 400
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 406
    return-void

    .line 407
    :cond_f
    rem-int/lit8 v12, v3, 0x2

    .line 409
    if-ne v12, v7, :cond_10

    .line 411
    iget-object v10, v1, Lcom/android/server/autofill/Session;->mSecondaryResponses:Landroid/util/SparseArray;

    .line 413
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 416
    move-result-object v10

    .line 417
    check-cast v10, Landroid/service/autofill/FillResponse;

    .line 419
    goto :goto_8

    .line 420
    :cond_10
    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 423
    move-result-object v10

    .line 424
    check-cast v10, Landroid/service/autofill/FillResponse;

    .line 426
    :goto_8
    if-eqz v10, :cond_11

    .line 428
    if-nez v2, :cond_12

    .line 430
    :cond_11
    move v2, v11

    .line 431
    goto/16 :goto_13

    .line 433
    :cond_12
    invoke-static/range {p1 .. p1}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    .line 436
    move-result v12

    .line 437
    const v13, 0xffff

    .line 440
    if-eq v12, v13, :cond_13

    .line 442
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 445
    move-result-object v14

    .line 446
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 449
    move-result-object v14

    .line 450
    check-cast v14, Landroid/service/autofill/Dataset;

    .line 452
    if-nez v14, :cond_14

    .line 454
    const-string/jumbo v0, "no dataset with index "

    .line 457
    const-string v2, " on fill response"

    .line 459
    invoke-static {v12, v0, v2, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 464
    invoke-virtual {v0, v11}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 467
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 469
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 475
    return-void

    .line 476
    :cond_13
    move-object v14, v8

    .line 477
    :cond_14
    iget-object v15, v1, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 479
    iput-boolean v9, v15, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 481
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 484
    move-result-object v6

    .line 485
    const-string v15, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 487
    const-class v11, Landroid/credentials/GetCredentialException;

    .line 489
    invoke-virtual {v2, v15, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 492
    move-result-object v11

    .line 493
    check-cast v11, Landroid/credentials/GetCredentialException;

    .line 495
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 498
    move-result-object v5

    .line 499
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 501
    if-eqz v15, :cond_15

    .line 503
    new-instance v15, Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v13, "setAuthenticationResultLocked(): result="

    .line 508
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    const-string v13, ", clientState="

    .line 516
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    const-string v13, ", authenticationId="

    .line 524
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v15, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 530
    :cond_15
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanDevIntegration()Z

    .line 533
    move-result v13

    .line 534
    if-eqz v13, :cond_18

    .line 536
    if-eqz v11, :cond_18

    .line 538
    invoke-virtual {v11}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 541
    move-result-object v13

    .line 542
    const-string v15, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 544
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    move-result v13

    .line 548
    if-nez v13, :cond_18

    .line 550
    if-eqz v14, :cond_17

    .line 552
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 559
    move-result v0

    .line 560
    if-ne v0, v7, :cond_17

    .line 562
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 564
    if-eqz v0, :cond_16

    .line 566
    const-string/jumbo v0, "setAuthenticationResultLocked(): result returns withCredential Manager Exception"

    .line 569
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_16
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 579
    move-result-object v0

    .line 580
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 582
    invoke-virtual {v1, v11, v8, v0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 585
    :cond_17
    return-void

    .line 586
    :cond_18
    instance-of v11, v6, Landroid/service/autofill/FillResponse;

    .line 588
    const/16 v13, 0x5ad

    .line 590
    if-eqz v11, :cond_1a

    .line 592
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 594
    if-eqz v0, :cond_19

    .line 596
    const-string/jumbo v0, "setAuthenticationResultLocked(): received FillResponse from authentication flow"

    .line 599
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_19
    const/16 v0, 0x390

    .line 604
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v1, v3, v13, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 611
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 613
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 616
    check-cast v6, Landroid/service/autofill/FillResponse;

    .line 618
    invoke-virtual {v1, v10, v7, v7, v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V

    .line 621
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 624
    move-result v0

    .line 625
    invoke-virtual {v6, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 628
    invoke-virtual {v1, v6, v5, v9}, Lcom/android/server/autofill/Session;->processResponseLockedForPcc(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 631
    goto/16 :goto_12

    .line 633
    :cond_1a
    instance-of v11, v6, Landroid/credentials/GetCredentialResponse;

    .line 635
    if-eqz v11, :cond_20

    .line 637
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 639
    if-eqz v0, :cond_1b

    .line 641
    const-string v0, "Received GetCredentialResponse from authentication flow"

    .line 643
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1b
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanDevIntegration()Z

    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_1d

    .line 652
    check-cast v6, Landroid/credentials/GetCredentialResponse;

    .line 654
    if-eqz v14, :cond_31

    .line 656
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 663
    move-result v0

    .line 664
    if-ne v0, v7, :cond_31

    .line 666
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 673
    move-result-object v0

    .line 674
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 676
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 678
    if-eqz v2, :cond_1c

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    const-string v3, "Received GetCredentialResponse from authentication flow,for autofillId: "

    .line 684
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    move-result-object v2

    .line 694
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1c
    invoke-virtual {v1, v8, v6, v0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    .line 700
    goto/16 :goto_12

    .line 702
    :cond_1d
    invoke-static {}, Landroid/service/autofill/Flags;->autofillCredmanIntegration()Z

    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_31

    .line 708
    check-cast v6, Landroid/credentials/GetCredentialResponse;

    .line 710
    if-nez v6, :cond_1e

    .line 712
    :goto_9
    move-object v4, v8

    .line 713
    goto :goto_a

    .line 714
    :cond_1e
    invoke-virtual {v6}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    .line 721
    move-result-object v0

    .line 722
    if-nez v0, :cond_1f

    .line 724
    goto :goto_9

    .line 725
    :cond_1f
    const-string v2, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    .line 727
    const-class v4, Landroid/service/autofill/Dataset;

    .line 729
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 732
    move-result-object v0

    .line 733
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 735
    move-object v4, v0

    .line 736
    :goto_a
    if-eqz v4, :cond_31

    .line 738
    const/4 v5, 0x0

    .line 739
    const/4 v6, 0x0

    .line 740
    move-object/from16 v1, p0

    .line 742
    move v2, v3

    .line 743
    move v3, v12

    .line 744
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    .line 747
    goto/16 :goto_12

    .line 749
    :cond_20
    instance-of v8, v6, Landroid/service/autofill/Dataset;

    .line 751
    if-eqz v8, :cond_2f

    .line 753
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 755
    if-eqz v8, :cond_21

    .line 757
    const-string/jumbo v8, "setAuthenticationResultLocked(): received Dataset from authentication flow"

    .line 760
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_21
    const v8, 0xffff

    .line 766
    if-eq v12, v8, :cond_2e

    .line 768
    const/16 v0, 0x466

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v1, v3, v13, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 777
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 779
    invoke-virtual {v0, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 782
    if-eqz v5, :cond_23

    .line 784
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 786
    if-eqz v0, :cond_22

    .line 788
    const-string v0, "Updating client state from auth dataset"

    .line 790
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_22
    iput-object v5, v1, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 795
    :cond_23
    check-cast v6, Landroid/service/autofill/Dataset;

    .line 797
    new-instance v0, Landroid/service/autofill/FillResponse$Builder;

    .line 799
    invoke-direct {v0}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    .line 802
    invoke-virtual {v0, v6}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v1, v0}, Lcom/android/server/autofill/Session;->getEffectiveFillResponse(Landroid/service/autofill/FillResponse;)Landroid/service/autofill/FillResponse;

    .line 813
    move-result-object v0

    .line 814
    if-eqz v0, :cond_28

    .line 816
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 819
    move-result-object v5

    .line 820
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 823
    move-result v5

    .line 824
    if-nez v5, :cond_24

    .line 826
    goto/16 :goto_c

    .line 828
    :cond_24
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 831
    move-result-object v4

    .line 832
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 835
    move-result-object v0

    .line 836
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 839
    move-result-object v0

    .line 840
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 842
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 845
    move-result v5

    .line 846
    if-le v5, v7, :cond_27

    .line 848
    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    .line 850
    invoke-direct {v0}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    .line 853
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 856
    move-result-object v4

    .line 857
    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 860
    move-result v5

    .line 861
    if-eqz v5, :cond_26

    .line 863
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 866
    move-result-object v5

    .line 867
    check-cast v5, Landroid/service/autofill/Dataset;

    .line 869
    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 872
    move-result-object v8

    .line 873
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 876
    move-result v8

    .line 877
    if-nez v8, :cond_25

    .line 879
    move v8, v9

    .line 880
    :goto_b
    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 883
    move-result-object v11

    .line 884
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 887
    move-result v11

    .line 888
    if-ge v8, v11, :cond_25

    .line 890
    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 893
    move-result-object v11

    .line 894
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 897
    move-result-object v11

    .line 898
    check-cast v11, Landroid/view/autofill/AutofillId;

    .line 900
    new-instance v13, Landroid/service/autofill/Field$Builder;

    .line 902
    invoke-direct {v13}, Landroid/service/autofill/Field$Builder;-><init>()V

    .line 905
    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 908
    move-result-object v14

    .line 909
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 912
    move-result-object v14

    .line 913
    check-cast v14, Landroid/view/autofill/AutofillValue;

    .line 915
    invoke-virtual {v13, v14}, Landroid/service/autofill/Field$Builder;->setValue(Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Field$Builder;

    .line 918
    move-result-object v13

    .line 919
    invoke-virtual {v13}, Landroid/service/autofill/Field$Builder;->build()Landroid/service/autofill/Field;

    .line 922
    move-result-object v13

    .line 923
    invoke-virtual {v0, v11, v13}, Landroid/service/autofill/Dataset$Builder;->setField(Landroid/view/autofill/AutofillId;Landroid/service/autofill/Field;)Landroid/service/autofill/Dataset$Builder;

    .line 926
    add-int/lit8 v8, v8, 0x1

    .line 928
    goto :goto_b

    .line 929
    :cond_26
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 932
    move-result-object v4

    .line 933
    invoke-virtual {v0, v4}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    .line 936
    move-result-object v0

    .line 937
    invoke-virtual {v0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    .line 940
    move-result-object v0

    .line 941
    :cond_27
    move-object v4, v0

    .line 942
    goto :goto_e

    .line 943
    :cond_28
    :goto_c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 945
    const-string v8, "No datasets in fill response on authentication. response = "

    .line 947
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    if-nez v0, :cond_29

    .line 952
    const-string/jumbo v0, "null"

    .line 955
    goto :goto_d

    .line 956
    :cond_29
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->toString()Ljava/lang/String;

    .line 959
    move-result-object v0

    .line 960
    :goto_d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    move-result-object v0

    .line 967
    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object v4, v6

    .line 971
    :goto_e
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 974
    move-result-object v0

    .line 975
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 978
    move-result-object v0

    .line 979
    check-cast v0, Landroid/service/autofill/Dataset;

    .line 981
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT_EPHEMERAL_DATASET"

    .line 983
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 986
    move-result v6

    .line 987
    if-eqz v6, :cond_2a

    .line 989
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 992
    move-result v0

    .line 993
    goto :goto_11

    .line 994
    :cond_2a
    if-eqz v0, :cond_2c

    .line 996
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 999
    move-result-object v2

    .line 1000
    if-eqz v2, :cond_2c

    .line 1002
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 1005
    move-result-object v2

    .line 1006
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1009
    move-result v2

    .line 1010
    move v5, v9

    .line 1011
    :goto_f
    if-ge v5, v2, :cond_2c

    .line 1013
    invoke-virtual {v0, v5}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    .line 1016
    move-result-object v6

    .line 1017
    if-eqz v6, :cond_2b

    .line 1019
    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    .line 1022
    move-result v6

    .line 1023
    if-eqz v6, :cond_2b

    .line 1025
    goto :goto_10

    .line 1026
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 1028
    goto :goto_f

    .line 1029
    :cond_2c
    move v7, v9

    .line 1030
    :goto_10
    move v0, v7

    .line 1031
    :goto_11
    if-nez v0, :cond_2d

    .line 1033
    invoke-virtual {v10}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 1036
    move-result-object v0

    .line 1037
    invoke-interface {v0, v12, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :cond_2d
    const/4 v5, 0x0

    .line 1041
    const/4 v6, 0x0

    .line 1042
    move-object/from16 v1, p0

    .line 1044
    move v2, v3

    .line 1045
    move v3, v12

    .line 1046
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    .line 1049
    goto :goto_12

    .line 1050
    :cond_2e
    const-string/jumbo v2, "invalid index ("

    .line 1053
    const-string v5, ") for authentication id "

    .line 1055
    invoke-static {v12, v0, v2, v5, v4}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const/16 v0, 0x467

    .line 1060
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1063
    move-result-object v0

    .line 1064
    invoke-virtual {v1, v3, v13, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 1067
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1069
    const/4 v1, 0x2

    .line 1070
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 1073
    goto :goto_12

    .line 1074
    :cond_2f
    if-eqz v6, :cond_30

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1078
    const-string/jumbo v2, "service returned invalid auth type: "

    .line 1081
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    move-result-object v0

    .line 1091
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_30
    const/16 v0, 0x468

    .line 1096
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {v1, v3, v13, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 1103
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1105
    const/4 v2, 0x2

    .line 1106
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 1109
    invoke-virtual {v1, v3, v9}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1112
    :cond_31
    :goto_12
    return-void

    .line 1113
    :goto_13
    const-string/jumbo v0, "no authenticated response"

    .line 1116
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1121
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetAuthenticationResult(I)V

    .line 1124
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1126
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->removeFromService()V

    .line 1132
    return-void
.end method

.method public final setClientLocked(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 4
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 10
    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/Session;)V

    .line 15
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 17
    :try_start_0
    invoke-interface {p1}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string/jumbo v0, "could not set binder death listener on autofill client: "

    .line 32
    const-string v1, "AutofillSession"

    .line 34
    invoke-static {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 40
    :goto_0
    return-void
.end method

.method public final setFillDialogDisabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 6
    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->notifyClientFillDialogTriggerIds(Ljava/util/List;)V

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p0
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;IZZ)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/service/autofill/Dataset;

    if-nez v7, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring null dataset on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutofillSession"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move v9, p3

    move v10, p4

    .line 6
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 9
    invoke-virtual {p0, v5, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    .line 10
    iput-object p1, v5, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    .line 11
    :cond_2
    iput-object p1, v5, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 12
    iput-object v1, v5, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_3

    .line 13
    :cond_4
    iput-object v1, v5, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 15
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 16
    array-length v0, p4

    move v3, v2

    :goto_4
    if-ge v3, v0, :cond_6

    aget-object v4, p4, v3

    .line 17
    invoke-virtual {p0, v4, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 19
    array-length p4, p3

    move v0, v2

    :goto_5
    if-ge v0, p4, :cond_7

    aget-object v3, p3, v0

    .line 20
    invoke-virtual {p0, v3, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 21
    :cond_7
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    array-length p3, p1

    :goto_6
    if-ge v2, p3, :cond_8

    aget-object p4, p1, v2

    .line 23
    invoke-virtual {p0, p4, p2, v1}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public final setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZZ)V
    .locals 5

    .line 24
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 29
    invoke-virtual {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v3

    .line 30
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 31
    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_2

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    .line 32
    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    .line 33
    :cond_1
    iput-object v4, v3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 34
    iput-object p1, v3, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    goto :goto_1

    .line 35
    :cond_3
    iput-object p1, v3, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final shouldRequestSecondaryProvider(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 5
    check-cast v0, Lcom/android/server/autofill/AutofillManagerService;

    .line 7
    iget-object v1, v0, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCredmanIntegrationEnabled:Z

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mSecondaryProviderHandler:Lcom/android/server/autofill/SecondaryProviderHandler;

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 23
    const/4 v0, 0x1

    .line 24
    if-eqz p0, :cond_2

    .line 26
    and-int/lit16 p0, p1, 0x800

    .line 28
    if-nez p0, :cond_1

    .line 30
    move v1, v0

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    and-int/lit16 p0, p1, 0x800

    .line 34
    if-eqz p0, :cond_3

    .line 36
    move v1, v0

    .line 37
    :cond_3
    :goto_0
    return v1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 6
    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    .line 8
    move v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move v6, p4

    .line 12
    invoke-interface/range {v1 .. v6}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "AutofillSession"

    .line 23
    const-string p2, "Error launching auth intent"

    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_0
    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "Call to Session#startIntentSender() rejected - session: "

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string p1, "AutofillSession"

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget p0, p0, Lcom/android/server/autofill/Session;->id:I

    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p0, " destroyed"

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-nez p2, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 43
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v1, v2}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;-><init>(I)V

    .line 52
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void

    .line 60
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final startNewEventForPresentationStatsEventLogger()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 6
    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->startNewEvent()V

    .line 9
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getDetectionPreferenceForLogging()I

    .line 14
    move-result v2

    .line 15
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 17
    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 19
    const/16 v4, 0xc

    .line 21
    invoke-direct {v3, v2, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 24
    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 27
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getAutofillServiceUid()I

    .line 32
    move-result p0

    .line 33
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 35
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Session: [id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", component="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", state="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/server/autofill/Session;->mSessionState:I

    .line 30
    invoke-static {p0}, Lcom/android/server/autofill/Session;->sessionStateAsString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p0, "]"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .locals 12

    .line 1
    and-int/lit8 v0, p1, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 9
    iget-object v2, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 11
    check-cast v2, Lcom/android/server/autofill/AutofillManagerService;

    .line 13
    iget v2, v2, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 15
    const-string v3, "AutofillSession"

    .line 17
    if-nez v2, :cond_2

    .line 19
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 21
    if-eqz p0, :cond_1

    .line 23
    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no supported modes"

    .line 26
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    return-object v1

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_4

    .line 36
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 38
    if-eqz p0, :cond_3

    .line 40
    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no service for user"

    .line 43
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_3
    return-object v1

    .line 47
    :cond_4
    and-int/lit8 v4, v2, 0x1

    .line 49
    if-eqz v4, :cond_11

    .line 51
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 53
    if-nez v2, :cond_5

    .line 55
    const-string/jumbo p0, "triggerAugmentedAutofillLocked(): no view currently focused"

    .line 58
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v1

    .line 62
    :cond_5
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 64
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 66
    iget-object v5, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 68
    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    .line 70
    iget-object v5, v5, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 72
    iget v2, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 74
    invoke-virtual {v5, v2, v4}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    .line 77
    move-result v10

    .line 78
    const/4 v7, 0x1

    .line 79
    if-nez v10, :cond_7

    .line 81
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 83
    if-eqz p1, :cond_6

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v2, "triggerAugmentedAutofillLocked(): "

    .line 90
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 95
    invoke-static {v2}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " not whitelisted "

    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    .line 117
    move-result-object v8

    .line 118
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 120
    const/4 v11, 0x0

    .line 121
    move-object v6, p0

    .line 122
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 125
    return-object v1

    .line 126
    :cond_7
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 128
    if-eqz v2, :cond_8

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v4, "calling Augmented Autofill Service ("

    .line 135
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    .line 141
    move-result-object v4

    .line 142
    invoke-static {v4}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v4, ") on view "

    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v4, " using suggestion mode "

    .line 161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {v7}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, " when server returned null for session "

    .line 173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    .line 178
    invoke-static {v2, v4, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 181
    :cond_8
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 183
    invoke-virtual {v2}, Lcom/android/server/autofill/FillRequestEventLogger;->startLogForNewRequest()V

    .line 186
    iget v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 188
    const/4 v4, 0x1

    .line 189
    add-int/2addr v2, v4

    .line 190
    iput v2, p0, Lcom/android/server/autofill/Session;->mRequestCount:I

    .line 192
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 194
    iget v5, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 196
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 198
    new-instance v6, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 200
    const/4 v7, 0x1

    .line 201
    invoke-direct {v6, v5, v7}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 204
    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 207
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 209
    iget v5, p0, Lcom/android/server/autofill/Session;->mFlags:I

    .line 211
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 213
    new-instance v6, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 215
    const/4 v7, 0x4

    .line 216
    invoke-direct {v6, v5, v7}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 219
    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 224
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 226
    new-instance v5, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;

    .line 228
    const/4 v6, 0x3

    .line 229
    invoke-direct {v5, v4, v6}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda0;-><init>(II)V

    .line 232
    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 235
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 237
    iget-object v2, v2, Lcom/android/server/autofill/FillRequestEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 239
    new-instance v4, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;

    .line 241
    invoke-direct {v4}, Lcom/android/server/autofill/FillRequestEventLogger$$ExternalSyntheticLambda2;-><init>()V

    .line 244
    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 247
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mFillRequestEventLogger:Lcom/android/server/autofill/FillRequestEventLogger;

    .line 249
    invoke-virtual {v2}, Lcom/android/server/autofill/FillRequestEventLogger;->logAndEndEvent()V

    .line 252
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 254
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 256
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 262
    const/16 v4, 0x1000

    .line 264
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 267
    iget-object v2, v2, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 269
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 271
    if-nez v4, :cond_9

    .line 273
    new-instance v4, Ljava/util/ArrayList;

    .line 275
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iput-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 280
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 287
    move-result-object v4

    .line 288
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 290
    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    .line 292
    iget-boolean v7, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 294
    const/16 v8, 0x65e

    .line 296
    invoke-static {v8, v5, v4, v6, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 299
    move-result-object v4

    .line 300
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 307
    new-instance v5, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;

    .line 309
    invoke-direct {v5, p0, v4, v10, v2}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;)V

    .line 312
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 314
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 317
    move-result-object v2

    .line 318
    if-eqz v2, :cond_d

    .line 320
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 322
    iget-boolean v7, v6, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 324
    if-nez v7, :cond_a

    .line 326
    iget-boolean v7, v6, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    .line 328
    if-eqz v7, :cond_a

    .line 330
    iget-boolean v6, v6, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 332
    if-eqz v6, :cond_d

    .line 334
    :cond_a
    and-int/lit8 v6, p1, 0x10

    .line 336
    if-nez v6, :cond_b

    .line 338
    goto :goto_0

    .line 339
    :cond_b
    and-int/lit8 p1, p1, 0x40

    .line 341
    if-eqz p1, :cond_d

    .line 343
    :goto_0
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 345
    if-eqz p1, :cond_c

    .line 347
    const-string p1, "Create inline request for augmented autofill"

    .line 349
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_c
    new-instance p1, Landroid/os/RemoteCallback;

    .line 354
    new-instance v1, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;

    .line 356
    invoke-direct {v1, p0, v4, v5}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRendererOnResultListener;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;)V

    .line 359
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 361
    invoke-direct {p1, v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 364
    invoke-virtual {v2, p1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 367
    goto :goto_2

    .line 368
    :cond_d
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 370
    iget-object p1, p1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 372
    if-eqz p1, :cond_f

    .line 374
    iget-boolean v2, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 376
    if-eqz v2, :cond_e

    .line 378
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 381
    move-result-object p1

    .line 382
    goto :goto_1

    .line 383
    :cond_e
    iget-object p1, p1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 385
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 388
    move-result-object p1

    .line 389
    goto :goto_1

    .line 390
    :cond_f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 393
    move-result-object p1

    .line 394
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 400
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->accept(Ljava/lang/Object;)V

    .line 403
    :goto_2
    iget-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 405
    if-nez p1, :cond_10

    .line 407
    new-instance p1, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    .line 409
    invoke-direct {p1, v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    .line 412
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 414
    :cond_10
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 416
    return-object p0

    .line 417
    :cond_11
    const-string p0, "Unsupported Smart Suggestion mode: "

    .line 419
    invoke-static {v2, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    return-object v1
.end method

.method public final unlinkClientVultureLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v1, "unlinking vulture from death failed for "

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "AutofillSession"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda3;

    .line 47
    :cond_1
    return-void
.end method

.method public final unregisterDelayedFillBroadcastLocked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "AutofillSession"

    .line 7
    const-string/jumbo v1, "unregisterDelayedFillBroadcastLocked()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 15
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiver:Lcom/android/server/autofill/Session$1;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mDelayedFillBroadcastReceiverRegistered:Z

    .line 23
    :cond_0
    return-void
.end method

.method public final updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    iget-boolean v6, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 15
    if-eqz v6, :cond_0

    .line 17
    const-string v0, "AutofillSession"

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "Call to Session#updateLocked() rejected - session: "

    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " destroyed"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 42
    :cond_0
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x5

    .line 45
    if-ne v4, v8, :cond_3

    .line 47
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 49
    iput-boolean v7, v1, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 51
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 53
    if-eqz v1, :cond_1

    .line 55
    const-string v1, "AutofillSession"

    .line 57
    const-string v2, "Set the response has expired."

    .line 59
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 64
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 66
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 68
    invoke-direct {v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>()V

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 74
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 76
    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 79
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 81
    iput-object v6, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 83
    iget-object v0, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 85
    if-eqz v0, :cond_2

    .line 87
    iput-object v6, v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 89
    :cond_2
    return-void

    .line 90
    :cond_3
    iget v9, v0, Lcom/android/server/autofill/Session;->id:I

    .line 92
    invoke-virtual {v1, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 95
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 97
    const/4 v10, 0x3

    .line 98
    const/4 v11, 0x4

    .line 99
    const/4 v12, 0x2

    .line 100
    if-eqz v9, :cond_9

    .line 102
    const-string v9, "AutofillSession"

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v14, "updateLocked("

    .line 109
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget v14, v0, Lcom/android/server/autofill/Session;->id:I

    .line 114
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v14, "): id="

    .line 119
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v14, ", action="

    .line 127
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eq v4, v7, :cond_8

    .line 132
    if-eq v4, v12, :cond_7

    .line 134
    if-eq v4, v10, :cond_6

    .line 136
    if-eq v4, v11, :cond_5

    .line 138
    if-eq v4, v8, :cond_4

    .line 140
    const-string v14, "UNKNOWN_"

    .line 142
    invoke-static {v4, v14}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v14

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    const-string v14, "RESPONSE_EXPIRED"

    .line 149
    goto :goto_0

    .line 150
    :cond_5
    const-string v14, "VALUE_CHANGED"

    .line 152
    goto :goto_0

    .line 153
    :cond_6
    const-string v14, "VIEW_EXITED"

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    const-string v14, "VIEW_ENTERED"

    .line 158
    goto :goto_0

    .line 159
    :cond_8
    const-string v14, "START_SESSION"

    .line 161
    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v14, ", flags="

    .line 166
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v13

    .line 176
    invoke-static {v9, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_9
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 181
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-result-object v9

    .line 185
    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 187
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 189
    if-eqz v13, :cond_a

    .line 191
    const-string v13, "AutofillSession"

    .line 193
    new-instance v14, Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v15, "updateLocked("

    .line 198
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget v15, v0, Lcom/android/server/autofill/Session;->id:I

    .line 203
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v15, "): mCurrentViewId="

    .line 208
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 213
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v15, ", mExpiredResponse="

    .line 218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 223
    iget-boolean v15, v15, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    .line 225
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 228
    const-string v15, ", viewState="

    .line 230
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v14

    .line 240
    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_a
    const/4 v13, 0x0

    .line 244
    if-nez v9, :cond_13

    .line 246
    if-eq v4, v7, :cond_d

    .line 248
    if-eq v4, v11, :cond_d

    .line 250
    if-ne v4, v12, :cond_b

    .line 252
    goto :goto_1

    .line 253
    :cond_b
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 255
    if-eqz v0, :cond_c

    .line 257
    const-string v0, "AutofillSession"

    .line 259
    const-string v1, "Ignoring specific action when viewState=null"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_c
    return-void

    .line 265
    :cond_d
    :goto_1
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 267
    if-eqz v9, :cond_e

    .line 269
    const-string v9, "AutofillSession"

    .line 271
    new-instance v14, Ljava/lang/StringBuilder;

    .line 273
    const-string v15, "Creating viewState for "

    .line 275
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v14

    .line 285
    invoke-static {v9, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 291
    move-result-object v9

    .line 292
    if-nez v9, :cond_f

    .line 294
    move v9, v13

    .line 295
    goto :goto_2

    .line 296
    :cond_f
    invoke-virtual {v9}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    .line 299
    move-result-object v9

    .line 300
    invoke-static {v9, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    move-result v9

    .line 304
    :goto_2
    new-instance v14, Lcom/android/server/autofill/ViewState;

    .line 306
    if-eqz v9, :cond_10

    .line 308
    const/16 v15, 0x80

    .line 310
    goto :goto_3

    .line 311
    :cond_10
    move v15, v7

    .line 312
    :goto_3
    iget-boolean v8, v0, Lcom/android/server/autofill/Session;->mIsPrimaryCredential:Z

    .line 314
    invoke-direct {v14, v1, v0, v15, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V

    .line 317
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 319
    invoke-virtual {v8, v1, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    if-eqz v9, :cond_12

    .line 324
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 326
    if-eqz v0, :cond_11

    .line 328
    const-string v0, "AutofillSession"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v2, "updateLocked(): ignoring view "

    .line 335
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_11
    return-void

    .line 349
    :cond_12
    move-object v9, v14

    .line 350
    :cond_13
    and-int/lit16 v8, v5, 0x100

    .line 352
    if-eqz v8, :cond_15

    .line 354
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 356
    if-eqz v8, :cond_14

    .line 358
    const-string v8, "AutofillSession"

    .line 360
    const-string/jumbo v14, "force to reset fill dialog state"

    .line 363
    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_14
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 368
    iput-boolean v13, v8, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 370
    :cond_15
    and-int/lit16 v8, v5, 0x200

    .line 372
    if-eqz v8, :cond_16

    .line 374
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->requestAssistStructureForPccLocked(I)V

    .line 377
    return-void

    .line 378
    :cond_16
    and-int/lit16 v8, v5, 0x400

    .line 380
    if-eqz v8, :cond_17

    .line 382
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 384
    iput-boolean v7, v8, Lcom/android/server/autofill/Session$SessionFlags;->mScreenHasCredmanField:Z

    .line 386
    :cond_17
    if-eq v4, v7, :cond_5f

    .line 388
    if-eq v4, v12, :cond_40

    .line 390
    if-eq v4, v10, :cond_3b

    .line 392
    if-eq v4, v11, :cond_18

    .line 394
    const-string v0, "AutofillSession"

    .line 396
    const-string/jumbo v1, "updateLocked(): unknown action: "

    .line 399
    invoke-static {v4, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    goto/16 :goto_1a

    .line 404
    :cond_18
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 406
    if-eqz v4, :cond_22

    .line 408
    iget v4, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 410
    and-int/lit16 v4, v4, 0x200

    .line 412
    if-eqz v4, :cond_22

    .line 414
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    .line 416
    if-nez v1, :cond_19

    .line 418
    move-object v1, v6

    .line 419
    goto :goto_4

    .line 420
    :cond_19
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    .line 423
    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 431
    move-result-object v1

    .line 432
    :goto_4
    if-nez v1, :cond_1a

    .line 434
    const-string v1, "URL bar value changed, but current value is null"

    .line 436
    new-array v2, v13, [Ljava/lang/Object;

    .line 438
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    return-void

    .line 442
    :cond_1a
    if-eqz v3, :cond_21

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 447
    move-result v2

    .line 448
    if-nez v2, :cond_1b

    .line 450
    goto :goto_5

    .line 451
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 454
    move-result-object v2

    .line 455
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_1d

    .line 465
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 467
    if-eqz v0, :cond_1c

    .line 469
    const-string v0, "AutofillSession"

    .line 471
    const-string v1, "Ignoring change on URL bar as it\'s the same"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1c
    return-void

    .line 477
    :cond_1d
    iget-boolean v1, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 479
    if-eqz v1, :cond_1f

    .line 481
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 483
    if-eqz v0, :cond_1e

    .line 485
    const-string v0, "AutofillSession"

    .line 487
    const-string v1, "Ignoring change on URL because session will finish when views are gone"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1e
    return-void

    .line 493
    :cond_1f
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 495
    if-eqz v1, :cond_20

    .line 497
    const-string v1, "AutofillSession"

    .line 499
    const-string v2, "Finishing session because URL bar changed"

    .line 501
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_20
    const/4 v1, 0x5

    .line 505
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->forceRemoveFromServiceLocked(I)V

    .line 508
    return-void

    .line 509
    :cond_21
    :goto_5
    const-string v1, "URL bar value changed to null or non-text: %s"

    .line 511
    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    return-void

    .line 519
    :cond_22
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 521
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 524
    move-result v4

    .line 525
    if-nez v4, :cond_64

    .line 527
    if-eqz v3, :cond_23

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_25

    .line 535
    :cond_23
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 537
    if-eqz v4, :cond_25

    .line 539
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 542
    move-result v4

    .line 543
    if-eqz v4, :cond_25

    .line 545
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 547
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 550
    move-result-object v4

    .line 551
    if-eqz v4, :cond_25

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 556
    move-result-object v4

    .line 557
    if-eqz v4, :cond_25

    .line 559
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 561
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 564
    move-result-object v4

    .line 565
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 568
    move-result v4

    .line 569
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 571
    if-eqz v10, :cond_24

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    .line 575
    const-string/jumbo v12, "updateLocked("

    .line 578
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    const-string v12, "): resetting value that was "

    .line 586
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    const-string v12, " chars long"

    .line 594
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    move-result-object v10

    .line 601
    const-string v12, "AutofillSession"

    .line 603
    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_24
    const/16 v10, 0x464

    .line 608
    invoke-virtual {v0, v10}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 611
    move-result-object v10

    .line 612
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 615
    move-result-object v4

    .line 616
    const/16 v12, 0x465

    .line 618
    invoke-virtual {v10, v12, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 621
    move-result-object v4

    .line 622
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 624
    invoke-virtual {v10, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 627
    :cond_25
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mIgnoreViewStateResetToEmpty:Z

    .line 629
    const-string v10, "AutofillSession"

    .line 631
    if-eqz v4, :cond_28

    .line 633
    if-eqz v3, :cond_26

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_28

    .line 641
    :cond_26
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 643
    if-eqz v4, :cond_28

    .line 645
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 648
    move-result v4

    .line 649
    if-eqz v4, :cond_28

    .line 651
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 653
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 656
    move-result-object v4

    .line 657
    if-eqz v4, :cond_28

    .line 659
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 661
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 664
    move-result-object v4

    .line 665
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 668
    move-result v4

    .line 669
    if-le v4, v7, :cond_28

    .line 671
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 673
    if-eqz v4, :cond_27

    .line 675
    const-string/jumbo v4, "value is resetting to empty, caching the last non-empty value"

    .line 678
    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_27
    iget-object v4, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 683
    iput-object v4, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 685
    goto :goto_6

    .line 686
    :cond_28
    iput-object v6, v9, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 688
    :goto_6
    if-eqz v3, :cond_2b

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 693
    move-result v4

    .line 694
    if-nez v4, :cond_29

    .line 696
    goto :goto_7

    .line 697
    :cond_29
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 700
    move-result-object v4

    .line 701
    if-nez v4, :cond_2a

    .line 703
    goto :goto_7

    .line 704
    :cond_2a
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 707
    move-result-object v6

    .line 708
    :cond_2b
    :goto_7
    const-string v4, ""

    .line 710
    if-nez v6, :cond_2c

    .line 712
    move-object v12, v4

    .line 713
    goto :goto_8

    .line 714
    :cond_2c
    move-object v12, v6

    .line 715
    :goto_8
    iget-object v14, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 717
    if-eqz v14, :cond_2e

    .line 719
    invoke-virtual {v14}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 722
    move-result v15

    .line 723
    if-nez v15, :cond_2d

    .line 725
    goto :goto_9

    .line 726
    :cond_2d
    invoke-virtual {v14}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 729
    move-result-object v4

    .line 730
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 733
    move-result-object v4

    .line 734
    :cond_2e
    :goto_9
    iget v14, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 736
    const/16 v15, 0x4000

    .line 738
    and-int/2addr v14, v15

    .line 739
    const/4 v13, -0x1

    .line 740
    if-nez v14, :cond_30

    .line 742
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 745
    move-result-object v4

    .line 746
    array-length v14, v4

    .line 747
    move/from16 v16, v13

    .line 749
    const/4 v11, 0x0

    .line 750
    :goto_a
    if-ge v11, v14, :cond_32

    .line 752
    aget-char v8, v4, v11

    .line 754
    add-int/lit8 v2, v16, 0x1

    .line 756
    invoke-static {v12, v8, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 759
    move-result v2

    .line 760
    if-ne v2, v13, :cond_2f

    .line 762
    invoke-virtual {v9, v15}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 765
    goto :goto_c

    .line 766
    :cond_2f
    add-int/lit8 v11, v11, 0x1

    .line 768
    move/from16 v16, v2

    .line 770
    goto :goto_a

    .line 771
    :cond_30
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    .line 774
    move-result-object v2

    .line 775
    array-length v8, v2

    .line 776
    move v12, v13

    .line 777
    const/4 v11, 0x0

    .line 778
    :goto_b
    if-ge v11, v8, :cond_32

    .line 780
    aget-char v14, v2, v11

    .line 782
    add-int/2addr v12, v7

    .line 783
    invoke-static {v4, v14, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 786
    move-result v12

    .line 787
    if-ne v12, v13, :cond_31

    .line 789
    const v14, 0x8000

    .line 792
    invoke-virtual {v9, v14}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 795
    goto :goto_c

    .line 796
    :cond_31
    add-int/lit8 v11, v11, 0x1

    .line 798
    goto :goto_b

    .line 799
    :cond_32
    :goto_c
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 801
    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 803
    if-eqz v2, :cond_36

    .line 805
    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_34

    .line 811
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 813
    if-eqz v2, :cond_33

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    .line 817
    const-string/jumbo v3, "ignoring autofilled change on id "

    .line 820
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    move-result-object v1

    .line 830
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_33
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 835
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 837
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 840
    const/16 v0, 0x8

    .line 842
    invoke-virtual {v9, v0}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 845
    goto/16 :goto_1a

    .line 847
    :cond_34
    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 849
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 851
    invoke-virtual {v2, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_36

    .line 857
    iget v2, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 859
    const/4 v3, 0x4

    .line 860
    and-int/2addr v2, v3

    .line 861
    if-eqz v2, :cond_36

    .line 863
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 865
    if-eqz v2, :cond_35

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    .line 869
    const-string/jumbo v3, "field changed after autofill on id "

    .line 872
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    move-result-object v1

    .line 882
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_35
    const/4 v1, 0x4

    .line 886
    invoke-virtual {v9, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 889
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 891
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 893
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 899
    invoke-virtual {v1, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 902
    :cond_36
    if-eqz v6, :cond_37

    .line 904
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 906
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 909
    move-result v2

    .line 910
    iget-object v3, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 912
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;

    .line 914
    invoke-direct {v4, v1, v9, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;I)V

    .line 917
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 920
    :cond_37
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 922
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 924
    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 927
    move-result v1

    .line 928
    if-eqz v1, :cond_3a

    .line 930
    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 932
    and-int/lit16 v2, v1, 0x2000

    .line 934
    if-eqz v2, :cond_3a

    .line 936
    const v2, 0x8000

    .line 939
    and-int/2addr v1, v2

    .line 940
    if-eqz v1, :cond_38

    .line 942
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 944
    iget-object v2, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 946
    iget-object v3, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 948
    if-eqz v3, :cond_38

    .line 950
    iget-object v3, v3, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 952
    invoke-virtual {v3, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 955
    move-result v2

    .line 956
    if-eqz v2, :cond_38

    .line 958
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 960
    iput-boolean v7, v1, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    .line 962
    :cond_38
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 964
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 966
    iget-object v3, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 968
    if-eqz v3, :cond_39

    .line 970
    iget-object v3, v3, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 972
    invoke-virtual {v3, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 975
    move-result v2

    .line 976
    if-eqz v2, :cond_39

    .line 978
    iget-object v2, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 980
    iput-object v6, v2, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    .line 982
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    .line 985
    :cond_39
    :goto_d
    const/16 v1, 0x8

    .line 987
    goto :goto_e

    .line 988
    :cond_3a
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 990
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 992
    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 995
    move-result v1

    .line 996
    if-eqz v1, :cond_39

    .line 998
    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 1000
    const/16 v2, 0x1000

    .line 1002
    and-int/2addr v1, v2

    .line 1003
    if-eqz v1, :cond_39

    .line 1005
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1008
    move-result v1

    .line 1009
    if-nez v1, :cond_39

    .line 1011
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 1013
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1015
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 1018
    goto :goto_d

    .line 1019
    :goto_e
    invoke-virtual {v9, v1}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1025
    move-result-object v1

    .line 1026
    iget-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 1028
    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    .line 1030
    invoke-direct {v3, v1, v0, v6}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    goto/16 :goto_1a

    .line 1038
    :cond_3b
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1040
    iget-object v3, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1042
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1045
    move-result v2

    .line 1046
    if-eqz v2, :cond_64

    .line 1048
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1050
    if-eqz v2, :cond_3c

    .line 1052
    const-string v2, "AutofillSession"

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1056
    const-string v4, "Exiting view "

    .line 1058
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1067
    move-result-object v1

    .line 1068
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_3c
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1073
    iget-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 1075
    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 1077
    const/4 v4, 0x3

    .line 1078
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 1081
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1084
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1086
    iget-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 1088
    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    .line 1090
    const/4 v4, 0x1

    .line 1091
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 1094
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1097
    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 1099
    const/16 v2, 0x1000

    .line 1101
    and-int/2addr v1, v2

    .line 1102
    if-eqz v1, :cond_3d

    .line 1104
    invoke-virtual {v9, v2}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 1110
    :cond_3d
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 1112
    iput-object v6, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 1114
    iget-object v1, v1, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 1116
    if-eqz v1, :cond_3e

    .line 1118
    iput-object v6, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 1120
    :cond_3e
    iget v1, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 1122
    const/high16 v2, 0x10000

    .line 1124
    and-int/2addr v1, v2

    .line 1125
    if-eqz v1, :cond_3f

    .line 1127
    goto :goto_f

    .line 1128
    :cond_3f
    iput-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1130
    :goto_f
    iget-object v0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1132
    invoke-virtual {v0, v12}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1135
    goto/16 :goto_1a

    .line 1137
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1140
    move-result-wide v10

    .line 1141
    iput-wide v10, v0, Lcom/android/server/autofill/Session;->mLatencyBaseTime:J

    .line 1143
    iget-boolean v4, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 1145
    const/4 v6, 0x0

    .line 1146
    iput-boolean v6, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 1148
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 1150
    if-eqz v6, :cond_41

    .line 1152
    if-eqz v2, :cond_41

    .line 1154
    const-string v6, "AutofillSession"

    .line 1156
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1158
    const-string/jumbo v10, "entered on virtual child "

    .line 1161
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1167
    const-string v10, ": "

    .line 1169
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    move-result-object v8

    .line 1179
    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_41
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1184
    iget-object v8, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1186
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1189
    move-result v6

    .line 1190
    iget-object v8, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1192
    iput-object v8, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1194
    if-eqz v3, :cond_42

    .line 1196
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1198
    :cond_42
    if-nez v6, :cond_44

    .line 1200
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    .line 1202
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1205
    move-result v8

    .line 1206
    if-eqz v8, :cond_43

    .line 1208
    goto :goto_10

    .line 1209
    :cond_43
    const/4 v8, 0x0

    .line 1210
    goto :goto_11

    .line 1211
    :cond_44
    :goto_10
    move v8, v7

    .line 1212
    :goto_11
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1214
    if-eqz v10, :cond_45

    .line 1216
    iput-object v10, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    .line 1218
    :cond_45
    and-int/lit16 v10, v5, 0x800

    .line 1220
    if-eqz v10, :cond_46

    .line 1222
    move v10, v7

    .line 1223
    goto :goto_12

    .line 1224
    :cond_46
    const/4 v10, 0x0

    .line 1225
    :goto_12
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->shouldRequestSecondaryProvider(I)Z

    .line 1228
    move-result v11

    .line 1229
    if-eqz v11, :cond_4b

    .line 1231
    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z

    .line 1234
    move-result v1

    .line 1235
    if-eqz v1, :cond_47

    .line 1237
    const-string v0, "AutofillSession"

    .line 1239
    const-string v1, "Started a new fill request for secondary provider."

    .line 1241
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-void

    .line 1245
    :cond_47
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1247
    if-eqz v1, :cond_48

    .line 1249
    invoke-virtual {v0, v1, v10}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    .line 1252
    :cond_48
    if-eqz v3, :cond_49

    .line 1254
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1256
    :cond_49
    if-eqz v2, :cond_4a

    .line 1258
    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1260
    :cond_4a
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 1263
    return-void

    .line 1264
    :cond_4b
    iget-boolean v11, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1266
    if-eqz v11, :cond_4d

    .line 1268
    iget v11, v9, Lcom/android/server/autofill/ViewState;->mState:I

    .line 1270
    and-int/lit16 v11, v11, 0x200

    .line 1272
    if-eqz v11, :cond_4d

    .line 1274
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1276
    if-eqz v0, :cond_4c

    .line 1278
    const-string v0, "AutofillSession"

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1282
    const-string v3, "Ignoring VIEW_ENTERED on URL BAR (id="

    .line 1284
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v1, ")"

    .line 1292
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    move-result-object v1

    .line 1299
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_4c
    return-void

    .line 1303
    :cond_4d
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 1305
    monitor-enter v11

    .line 1306
    :try_start_0
    iget-boolean v13, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 1308
    if-nez v13, :cond_4e

    .line 1310
    iget-object v13, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1312
    iget v14, v0, Lcom/android/server/autofill/Session;->id:I

    .line 1314
    invoke-virtual {v13, v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logViewEntered(I)V

    .line 1317
    goto :goto_13

    .line 1318
    :catchall_0
    move-exception v0

    .line 1319
    goto/16 :goto_17

    .line 1321
    :cond_4e
    :goto_13
    iput-boolean v7, v0, Lcom/android/server/autofill/Session;->mLogViewEntered:Z

    .line 1323
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    if-nez v4, :cond_4f

    .line 1326
    if-nez v8, :cond_4f

    .line 1328
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1330
    invoke-virtual {v7, v12}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1333
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1335
    invoke-virtual {v7}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1338
    :cond_4f
    and-int/lit8 v7, v5, 0x1

    .line 1340
    if-nez v7, :cond_55

    .line 1342
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 1344
    if-eqz v7, :cond_53

    .line 1346
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1349
    move-result v7

    .line 1350
    if-eqz v7, :cond_53

    .line 1352
    if-nez v6, :cond_51

    .line 1354
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1356
    if-eqz v1, :cond_50

    .line 1358
    const-string v1, "AutofillSession"

    .line 1360
    const-string/jumbo v2, "trigger augmented autofill."

    .line 1363
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_50
    invoke-virtual {v0, v5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 1369
    goto :goto_14

    .line 1370
    :cond_51
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1372
    if-eqz v0, :cond_52

    .line 1374
    const-string v0, "AutofillSession"

    .line 1376
    const-string/jumbo v1, "skip augmented autofill for same view: same view entered"

    .line 1379
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_52
    :goto_14
    return-void

    .line 1383
    :cond_53
    iget-object v7, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1385
    iget-boolean v7, v7, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    .line 1387
    if-eqz v7, :cond_55

    .line 1389
    if-eqz v6, :cond_55

    .line 1391
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1393
    if-eqz v0, :cond_54

    .line 1395
    const-string v0, "AutofillSession"

    .line 1397
    const-string/jumbo v1, "skip augmented autofill for same view: standard autofill disabled."

    .line 1400
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_54
    return-void

    .line 1404
    :cond_55
    if-nez v4, :cond_56

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 1409
    :cond_56
    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z

    .line 1412
    move-result v1

    .line 1413
    if-eqz v1, :cond_58

    .line 1415
    if-eqz v4, :cond_57

    .line 1417
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1419
    invoke-virtual {v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 1425
    :cond_57
    return-void

    .line 1426
    :cond_58
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 1428
    if-eqz v1, :cond_59

    .line 1430
    invoke-virtual {v0, v1, v10}, Lcom/android/server/autofill/Session;->logPresentationStatsOnViewEnteredLocked(Landroid/service/autofill/FillResponse;Z)V

    .line 1433
    :cond_59
    if-eqz v6, :cond_5c

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 1438
    move-result-object v1

    .line 1439
    iget-object v1, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 1441
    if-nez v1, :cond_5a

    .line 1443
    const/4 v13, 0x0

    .line 1444
    goto :goto_15

    .line 1445
    :cond_5a
    iget-object v1, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    .line 1447
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 1450
    move-result v13

    .line 1451
    :goto_15
    if-eqz v13, :cond_5b

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 1456
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 1458
    monitor-enter v1

    .line 1459
    :try_start_1
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1461
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1462
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 1465
    goto :goto_16

    .line 1466
    :catchall_1
    move-exception v0

    .line 1467
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1468
    throw v0

    .line 1469
    :cond_5b
    :goto_16
    return-void

    .line 1470
    :cond_5c
    if-eqz v3, :cond_5d

    .line 1472
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1474
    :cond_5d
    if-eqz v2, :cond_5e

    .line 1476
    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1478
    :cond_5e
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 1481
    goto :goto_1a

    .line 1482
    :goto_17
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1483
    throw v0

    .line 1484
    :cond_5f
    iget-object v1, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1486
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1488
    iput-object v1, v0, Lcom/android/server/autofill/Session;->mPreviousNonNullEnteredViewId:Landroid/view/autofill/AutofillId;

    .line 1490
    if-eqz v3, :cond_60

    .line 1492
    iput-object v3, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 1494
    :cond_60
    if-eqz v2, :cond_61

    .line 1496
    iput-object v2, v9, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 1498
    :cond_61
    invoke-virtual {v9, v5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 1501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->startNewEventForPresentationStatsEventLogger()V

    .line 1504
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1506
    iget-object v1, v1, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 1508
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;

    .line 1510
    const/4 v3, 0x1

    .line 1511
    invoke-direct {v2, v3}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1514
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1517
    and-int/lit8 v1, v5, 0x40

    .line 1519
    if-eqz v1, :cond_62

    .line 1521
    move v6, v7

    .line 1522
    goto :goto_18

    .line 1523
    :cond_62
    const/4 v6, 0x0

    .line 1524
    :goto_18
    if-nez v6, :cond_63

    .line 1526
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSessionFlags:Lcom/android/server/autofill/Session$SessionFlags;

    .line 1528
    iput-boolean v7, v1, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    .line 1530
    const/4 v1, 0x0

    .line 1531
    iput-boolean v1, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 1533
    goto :goto_19

    .line 1534
    :cond_63
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 1536
    const/16 v2, 0x8

    .line 1538
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 1541
    iput-boolean v7, v0, Lcom/android/server/autofill/Session;->mPreviouslyFillDialogPotentiallyStarted:Z

    .line 1543
    :goto_19
    const/16 v1, 0x10

    .line 1545
    invoke-virtual {v0, v9, v1, v5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 1548
    :cond_64
    :goto_1a
    return-void
.end method

.method public final updateTrackedIdsLocked()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "AutofillSession"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 9
    move-result-object v3

    .line 10
    if-nez v3, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v4, 0x0

    .line 14
    iput-boolean v4, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 16
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x1

    .line 22
    if-eqz v5, :cond_7

    .line 24
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    .line 27
    move-result-object v8

    .line 28
    if-eqz v8, :cond_1

    .line 30
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 32
    const/16 v10, 0x4cc

    .line 34
    invoke-virtual {v0, v10}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v9, v10}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 41
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 43
    iget-object v9, v9, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 45
    new-instance v10, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 47
    const/4 v11, 0x3

    .line 48
    const/4 v12, 0x3

    .line 49
    invoke-direct {v10, v11, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 52
    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 55
    :cond_1
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getFlags()I

    .line 58
    move-result v9

    .line 59
    and-int/lit8 v10, v9, 0x1

    .line 61
    if-eqz v10, :cond_2

    .line 63
    move v10, v7

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v10, v4

    .line 66
    :goto_0
    iput-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 68
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mFillResponseEventLogger:Lcom/android/server/autofill/FillResponseEventLogger;

    .line 70
    iget-object v10, v10, Lcom/android/server/autofill/FillResponseEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 72
    new-instance v11, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;

    .line 74
    invoke-direct {v11}, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda0;-><init>()V

    .line 77
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 80
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 82
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 85
    move-result v11

    .line 86
    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 88
    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 90
    const/4 v13, 0x2

    .line 91
    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 94
    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 97
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 99
    iget v11, v0, Lcom/android/server/autofill/Session;->uid:I

    .line 101
    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 103
    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 105
    const/4 v13, 0x0

    .line 106
    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 109
    invoke-virtual {v10, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 112
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 114
    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 116
    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 118
    invoke-direct {v11}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>()V

    .line 121
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 124
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 126
    iget-object v10, v10, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 128
    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 130
    const/4 v12, 0x1

    .line 131
    invoke-direct {v11, v9, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 134
    invoke-virtual {v10, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 137
    iget-boolean v10, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 139
    if-eqz v10, :cond_4

    .line 141
    new-instance v10, Landroid/util/ArraySet;

    .line 143
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 146
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 149
    move-result-object v11

    .line 150
    if-eqz v11, :cond_3

    .line 152
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    .line 155
    move-result-object v11

    .line 156
    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 159
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 161
    iget-object v11, v11, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 163
    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 165
    const/4 v13, 0x3

    .line 166
    invoke-direct {v12, v7, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 169
    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 172
    :cond_3
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 175
    move-result-object v11

    .line 176
    if-eqz v11, :cond_5

    .line 178
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    .line 181
    move-result-object v11

    .line 182
    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 185
    iget-object v11, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 187
    iget-object v11, v11, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 189
    new-instance v12, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 191
    const/4 v13, 0x3

    .line 192
    invoke-direct {v12, v6, v13}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 195
    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 198
    goto :goto_1

    .line 199
    :cond_4
    move-object v10, v2

    .line 200
    :cond_5
    :goto_1
    and-int/lit8 v6, v9, 0x2

    .line 202
    if-eqz v6, :cond_6

    .line 204
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 206
    iget-object v6, v6, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 208
    new-instance v11, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;

    .line 210
    const/4 v12, 0x3

    .line 211
    invoke-direct {v11, v4, v12}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 214
    invoke-virtual {v6, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 217
    iget-object v6, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 219
    const/16 v11, 0x8

    .line 221
    invoke-virtual {v6, v11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 224
    move v13, v4

    .line 225
    :goto_2
    move-object v15, v8

    .line 226
    goto :goto_3

    .line 227
    :cond_6
    move v13, v7

    .line 228
    goto :goto_2

    .line 229
    :cond_7
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 231
    invoke-virtual {v8, v6}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 234
    move-object v10, v2

    .line 235
    move-object v15, v10

    .line 236
    move v9, v4

    .line 237
    move v13, v7

    .line 238
    :goto_3
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 241
    move-result-object v3

    .line 242
    move-object v8, v2

    .line 243
    if-eqz v3, :cond_c

    .line 245
    move v6, v4

    .line 246
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 249
    move-result v11

    .line 250
    if-ge v6, v11, :cond_c

    .line 252
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v11

    .line 256
    check-cast v11, Landroid/service/autofill/Dataset;

    .line 258
    invoke-virtual {v11}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 261
    move-result-object v11

    .line 262
    if-nez v11, :cond_8

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    move v12, v4

    .line 266
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 269
    move-result v14

    .line 270
    if-ge v12, v14, :cond_b

    .line 272
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v14

    .line 276
    check-cast v14, Landroid/view/autofill/AutofillId;

    .line 278
    if-eqz v14, :cond_a

    .line 280
    if-eqz v10, :cond_9

    .line 282
    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 285
    move-result v16

    .line 286
    if-nez v16, :cond_a

    .line 288
    :cond_9
    invoke-static {v8, v14}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 291
    move-result-object v8

    .line 292
    :cond_a
    add-int/lit8 v12, v12, 0x1

    .line 294
    goto :goto_5

    .line 295
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 297
    goto :goto_4

    .line 298
    :cond_c
    :try_start_0
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 300
    if-eqz v3, :cond_e

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string/jumbo v6, "updateTrackedIdsLocked(): trackedViews: "

    .line 310
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const-string v6, " fillableIds: "

    .line 318
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const-string v6, " triggerId: "

    .line 326
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    const-string v6, " saveOnFinish:"

    .line 334
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 340
    const-string v6, " flags: "

    .line 342
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v6, " hasSaveInfo: "

    .line 350
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    if-eqz v5, :cond_d

    .line 355
    goto :goto_7

    .line 356
    :cond_d
    move v7, v4

    .line 357
    :goto_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v3

    .line 364
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    goto :goto_8

    .line 368
    :catch_0
    move-exception v0

    .line 369
    goto :goto_d

    .line 370
    :cond_e
    :goto_8
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 372
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 374
    if-nez v10, :cond_f

    .line 376
    move-object v11, v2

    .line 377
    goto :goto_a

    .line 378
    :cond_f
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 381
    move-result v5

    .line 382
    new-array v5, v5, [Landroid/view/autofill/AutofillId;

    .line 384
    move v6, v4

    .line 385
    :goto_9
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 388
    move-result v7

    .line 389
    if-ge v6, v7, :cond_10

    .line 391
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 394
    move-result-object v7

    .line 395
    check-cast v7, Landroid/view/autofill/AutofillId;

    .line 397
    aput-object v7, v5, v6

    .line 399
    add-int/lit8 v6, v6, 0x1

    .line 401
    goto :goto_9

    .line 402
    :cond_10
    move-object v11, v5

    .line 403
    :goto_a
    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 405
    if-nez v8, :cond_12

    .line 407
    :cond_11
    move-object v14, v2

    .line 408
    goto :goto_c

    .line 409
    :cond_12
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 412
    move-result v0

    .line 413
    new-array v2, v0, [Landroid/view/autofill/AutofillId;

    .line 415
    :goto_b
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 418
    move-result v0

    .line 419
    if-ge v4, v0, :cond_11

    .line 421
    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 427
    aput-object v0, v2, v4

    .line 429
    add-int/lit8 v4, v4, 0x1

    .line 431
    goto :goto_b

    .line 432
    :goto_c
    move v10, v3

    .line 433
    invoke-interface/range {v9 .. v15}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_e

    .line 437
    :goto_d
    const-string v2, "Cannot set tracked ids"

    .line 439
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    :goto_e
    return-void
.end method

.method public final updateValuesForSaveLocked()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_a

    .line 19
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/service/autofill/FillContext;

    .line 27
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 32
    move-result v5

    .line 33
    new-array v6, v5, [Landroid/view/autofill/AutofillId;

    .line 35
    move v7, v2

    .line 36
    :goto_1
    if-ge v7, v5, :cond_0

    .line 38
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 46
    iget-object v8, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 48
    aput-object v8, v6, v7

    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v4, v6}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    .line 56
    move-result-object v5

    .line 57
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 59
    const-string/jumbo v7, "updateValuesForSaveLocked(): updating "

    .line 62
    const-string v8, "AutofillSession"

    .line 64
    if-eqz v6, :cond_1

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    move v6, v2

    .line 82
    :goto_2
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 84
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 87
    move-result v9

    .line 88
    if-ge v6, v9, :cond_8

    .line 90
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 92
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 98
    iget-object v10, v9, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 100
    iget-object v11, v9, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 102
    if-nez v11, :cond_2

    .line 104
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 106
    if-eqz v9, :cond_7

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v11, "updateValuesForSaveLocked(): skipping "

    .line 113
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v9

    .line 123
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    aget-object v12, v5, v6

    .line 129
    if-nez v12, :cond_3

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v11, "callSaveLocked(): did not find node with id "

    .line 136
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v9

    .line 146
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 152
    if-eqz v13, :cond_4

    .line 154
    new-instance v13, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v14, " to "

    .line 164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v13

    .line 174
    invoke-static {v8, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_4
    iget-object v9, v9, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 179
    if-nez v9, :cond_5

    .line 181
    invoke-virtual {p0, v0, v10, v11}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    .line 184
    move-result-object v9

    .line 185
    :cond_5
    if-eqz v9, :cond_6

    .line 187
    invoke-virtual {v12, v9}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 193
    if-eqz v9, :cond_7

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v11, "updateValuesForSaveLocked(): not updating field "

    .line 200
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const-string v10, " because it failed sanitization"

    .line 208
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v9

    .line 215
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 220
    goto/16 :goto_2

    .line 222
    :cond_8
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 229
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 231
    if-eqz v5, :cond_9

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v6, "updateValuesForSaveLocked(): dumping structure of "

    .line 238
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    const-string v6, " before calling service.save()"

    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v5

    .line 253
    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v4}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4, v2}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 263
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 265
    goto/16 :goto_0

    .line 267
    :cond_a
    return-void
.end method

.method public final varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter p3

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 10
    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 13
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const-string p0, "AutofillSession"

    .line 18
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "AutofillSession"

    .line 24
    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method
