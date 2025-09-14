.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 33
    .line 34
    div-float/2addr v1, p0

    .line 35
    const p0, 0x3f99999a    # 1.2f

    .line 36
    .line 37
    .line 38
    cmpl-float v2, v0, p0

    .line 39
    .line 40
    if-lez v2, :cond_0

    .line 41
    .line 42
    move v0, p0

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    mul-float/2addr v1, v0

    .line 45
    invoke-virtual {p1, p0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
