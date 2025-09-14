.class public final Lcom/android/server/autofill/ui/SaveUi$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic val$info:Landroid/service/autofill/SaveInfo;

.field public final synthetic val$isUpdate:Z

.field public final synthetic val$yesButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/TextView;Landroid/service/autofill/SaveInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    .line 10
    iput-boolean p4, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 9
    const p2, 0x104020e

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 17
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$info:Landroid/service/autofill/SaveInfo;

    .line 19
    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$isUpdate:Z

    .line 31
    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 35
    const p2, 0x1040224

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 44
    const p2, 0x104021d

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$2;->val$yesButton:Landroid/widget/TextView;

    .line 52
    new-instance p2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-direct {p2, v0, p0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :goto_1
    return-void
.end method
