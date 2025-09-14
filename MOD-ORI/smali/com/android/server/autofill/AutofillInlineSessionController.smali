.class public final Lcom/android/server/autofill/AutofillInlineSessionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mHandler:Landroid/os/Handler;

.field public mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

.field public final mUiCallback:Lcom/android/server/autofill/Session$2;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/Session$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/Session$2;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 13
    .line 14
    iget-object v12, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v13, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 19
    .line 20
    iget v14, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v11, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/Session$2;

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    move-object v3, v13

    .line 28
    move v4, v14

    .line 29
    move-object v5, v12

    .line 30
    move-object/from16 v8, p1

    .line 31
    .line 32
    move-object/from16 v9, p2

    .line 33
    .line 34
    move-object/from16 v10, p3

    .line 35
    .line 36
    invoke-direct/range {v2 .. v11}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/Session$2;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 43
    .line 44
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "onCreateInlineSuggestionsRequestLocked called: "

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "AutofillInlineSuggestionsRequestSession"

    .line 66
    .line 67
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    new-instance v0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 71
    .line 72
    iget-object v2, v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 73
    .line 74
    move-object/from16 v3, p3

    .line 75
    .line 76
    invoke-direct {v0, v12, v2, v3}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;-><init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    .line 80
    .line 81
    invoke-direct {v2, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13, v14, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final requestImeToShowInlineSuggestionsLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
