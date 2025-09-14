.class public final Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    .line 10
    return-void
.end method
