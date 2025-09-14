.class public final synthetic Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

.field public final synthetic f$1:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManager$LayoutParams;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;->f$1:Landroid/view/WindowManager$LayoutParams;

    .line 5
    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 7
    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 9
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 13
    iput-object p0, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 15
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 17
    const-string v3, "FillUi"

    .line 19
    if-eqz v2, :cond_0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v4, "show(): showing="

    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget-boolean v4, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v4, ", params="

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    const/16 v5, 0x19

    .line 43
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    invoke-virtual {p0, v4}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :try_start_0
    const-string v2, "android"

    .line 65
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 67
    const-string v2, "Autofill UI"

    .line 69
    invoke-virtual {p0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-boolean v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 74
    if-nez v2, :cond_2

    .line 76
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v2

    .line 82
    const v4, 0x1040208

    .line 85
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 91
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    .line 93
    iget-object v4, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 95
    invoke-interface {v2, v4, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 104
    const/4 v2, 0x1

    .line 105
    iput-boolean v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 107
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 109
    if-nez v0, :cond_1

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 115
    move-result v4

    .line 116
    :goto_0
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 118
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 120
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 122
    if-eqz v0, :cond_4

    .line 124
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 126
    invoke-virtual {v0, v2, v4}, Lcom/android/server/autofill/Session;->onShown(II)V

    .line 129
    goto :goto_2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    .line 134
    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 136
    invoke-interface {v2, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_2

    .line 140
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    const-string v4, "Exception showing window "

    .line 144
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-static {v3, p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    iget-object p0, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDestroy()V

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 165
    if-eqz v0, :cond_3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    const-string v2, "Filed with with token "

    .line 171
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string p0, " gone."

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 188
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_3
    iget-object p0, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDestroy()V

    .line 196
    :cond_4
    :goto_2
    return-void
.end method
