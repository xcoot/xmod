.class public final synthetic Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 7
    iget v1, p1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 9
    if-ne v1, v0, :cond_0

    .line 11
    iget-object p1, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
