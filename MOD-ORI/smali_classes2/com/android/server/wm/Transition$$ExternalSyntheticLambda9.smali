.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;->f$1:Landroid/util/ArraySet;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
