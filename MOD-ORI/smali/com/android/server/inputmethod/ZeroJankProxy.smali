.class public final Lcom/android/server/inputmethod/ZeroJankProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    .line 1
    :try_start_0
    new-instance v7, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v7, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v8}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final dismissAndShowAgainInputMethodPicker()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->dismissAndShowAgainInputMethodPicker()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final getCurTokenDisplayId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getCurrentFocusDisplayID()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentFocusDisplayID()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getImeTrackerService()Lcom/android/server/inputmethod/ImeTrackerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getInputMethodListLegacy(II)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLegacy(II)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getWACOMPen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 8
    .line 9
    return p0
.end method

.method public final handleVoiceHWKey()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleVoiceHWKey()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    if-eqz p7, :cond_0

    .line 3
    .line 4
    new-instance v10, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;

    .line 5
    .line 6
    move-object v0, v10

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move v5, p4

    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move/from16 v7, p6

    .line 15
    .line 16
    move/from16 v8, p7

    .line 17
    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_0
    new-instance v10, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;

    .line 27
    .line 28
    move-object v0, v10

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v4, p3

    .line 33
    move v5, p4

    .line 34
    move-object/from16 v6, p5

    .line 35
    .line 36
    move/from16 v7, p6

    .line 37
    .line 38
    move/from16 v8, p7

    .line 39
    .line 40
    invoke-direct/range {v0 .. v8}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v10, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    const-wide/16 v2, 0x1

    .line 55
    .line 56
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method

.method public final hideSoftInputFromServerForTest()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInputFromServerForTest()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final isAccessoryKeyboard()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isAccessoryKeyboard()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isCurrentInputMethodAsSamsungKeyboard()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isImeTraceEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeTraceEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isInputMethodPickerShownForTest()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodPickerShownForTest()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isInputMethodShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodShown()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingAvailableAsUser(IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final offloadInner(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;

    .line 8
    .line 9
    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    move-object v7, p7

    .line 13
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final removeImeSurface()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeImeSurface()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendResultReceiverFailure(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final showInputMethodPickerFromSystem(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    if-eqz p8, :cond_0

    .line 3
    .line 4
    new-instance v11, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;

    .line 5
    .line 6
    move-object v0, v11

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move/from16 v5, p4

    .line 12
    .line 13
    move/from16 v6, p5

    .line 14
    .line 15
    move-object/from16 v7, p6

    .line 16
    .line 17
    move/from16 v8, p7

    .line 18
    .line 19
    move/from16 v9, p8

    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    new-instance v11, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;

    .line 30
    .line 31
    move-object v0, v11

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-object v3, p2

    .line 35
    move-object v4, p3

    .line 36
    move/from16 v5, p4

    .line 37
    .line 38
    move/from16 v6, p5

    .line 39
    .line 40
    move-object/from16 v7, p6

    .line 41
    .line 42
    move/from16 v8, p7

    .line 43
    .line 44
    move/from16 v9, p8

    .line 45
    .line 46
    invoke-direct/range {v0 .. v9}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v11, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    const-wide/16 v2, 0x1

    .line 61
    .line 62
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    return v0
.end method

.method public final startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v8}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final startImeTrace()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->startImeTrace()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;I)V
    .locals 16

    .line 1
    new-instance v15, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;

    .line 2
    .line 3
    move-object v0, v15

    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    move/from16 v2, p1

    .line 7
    .line 8
    move-object/from16 v3, p2

    .line 9
    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    move/from16 v5, p4

    .line 13
    .line 14
    move/from16 v6, p5

    .line 15
    .line 16
    move/from16 v7, p6

    .line 17
    .line 18
    move-object/from16 v8, p7

    .line 19
    .line 20
    move-object/from16 v9, p8

    .line 21
    .line 22
    move-object/from16 v10, p9

    .line 23
    .line 24
    move/from16 v11, p10

    .line 25
    .line 26
    move/from16 v12, p11

    .line 27
    .line 28
    move-object/from16 v13, p12

    .line 29
    .line 30
    move/from16 v14, p13

    .line 31
    .line 32
    invoke-direct/range {v0 .. v14}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;I)V

    .line 33
    .line 34
    .line 35
    move-object/from16 v0, p0

    .line 36
    .line 37
    invoke-virtual {v0, v15}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final startProtoDump([BILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->startProtoDump([BILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stopImeTrace()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->stopImeTrace()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final undoMinimizeSoftInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->undoMinimizeSoftInput()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
