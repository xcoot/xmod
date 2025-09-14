.class public final Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mIsAllowlisted:Z

.field public final mMode:I

.field public final mSessionWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 11
    iput-object p2, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 13
    iput-boolean p3, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    .line 15
    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    .line 18
    iput-object p4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 4
    iget-object p1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 12
    const-string v0, "AugmentedAutofillInlineSuggestionRequestConsumer:"

    .line 14
    invoke-static {p1, v0}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v6, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 23
    iget-boolean v4, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mIsAllowlisted:Z

    .line 25
    iget v1, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mMode:I

    .line 27
    iget-object v7, p0, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionRequestConsumer;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 29
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 34
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 37
    move-result-object v9

    .line 38
    invoke-virtual {v9}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    .line 41
    move-result-object v2

    .line 42
    if-eqz v8, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v5

    .line 51
    move-object v0, p1

    .line 52
    move-object v3, v6

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 56
    iget v1, p1, Lcom/android/server/autofill/Session;->id:I

    .line 58
    iget-object v2, p1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 60
    iget v3, p1, Lcom/android/server/autofill/Session;->taskId:I

    .line 62
    iget-object v4, p1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 64
    iget-object v5, p1, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 66
    invoke-static {v6}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    .line 69
    move-result-object v6

    .line 70
    new-instance v10, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;

    .line 72
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    iput-object v0, v10, Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 82
    new-instance v11, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;

    .line 84
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 89
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 92
    iput-object v0, v11, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 94
    iget-object v0, p1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 96
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 99
    move-result-object v12

    .line 100
    iget p1, p1, Lcom/android/server/autofill/Session;->userId:I

    .line 102
    move-object v0, v9

    .line 103
    move-object v9, v10

    .line 104
    move-object v10, v11

    .line 105
    move-object v11, v12

    .line 106
    move v12, p1

    .line 107
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    .line 110
    monitor-exit p0

    .line 111
    :goto_1
    return-void

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1
.end method
