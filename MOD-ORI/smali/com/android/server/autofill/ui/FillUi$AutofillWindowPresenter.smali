.class public final Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final hide(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 0

    .line 1
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p2, "AutofillWindowPresenter.show(): fit="

    .line 6
    .line 7
    const-string p4, ", params="

    .line 8
    .line 9
    invoke-static {p2, p4, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 p4, 0x19

    .line 16
    .line 17
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "FillUi"

    .line 35
    .line 36
    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance p3, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {p3, p0, p1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
