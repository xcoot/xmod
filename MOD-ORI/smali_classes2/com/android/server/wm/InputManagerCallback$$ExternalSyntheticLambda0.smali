.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
