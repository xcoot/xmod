.class public final Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFilterText:Ljava/lang/String;

.field public final mFocusedId:Landroid/view/autofill/AutofillId;

.field public final mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public final mSessionId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    .line 5
    .line 6
    iput p6, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 15
    .line 16
    return-void
.end method
