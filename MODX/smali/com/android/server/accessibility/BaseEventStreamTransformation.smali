.class public abstract Lcom/android/server/accessibility/BaseEventStreamTransformation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# virtual methods
.method public final getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    return-object p0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    return-void
.end method
