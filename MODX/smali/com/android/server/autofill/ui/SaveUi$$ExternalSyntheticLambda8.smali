.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    .line 3
    check-cast p1, Landroid/view/View;

    .line 5
    instance-of v0, p1, Landroid/widget/TextView;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Landroid/widget/TextView;

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
