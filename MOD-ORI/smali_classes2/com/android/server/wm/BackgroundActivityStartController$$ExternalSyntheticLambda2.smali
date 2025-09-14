.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 31
    :goto_1
    return p0
.end method
