.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field public final synthetic f$1:Landroid/widget/ScrollView;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ScrollView;

    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$2:Landroid/view/View;

    .line 10
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$1:Landroid/widget/ScrollView;

    .line 5
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;->f$2:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x4

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method
