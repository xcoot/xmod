.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    .line 3
    check-cast p2, Ljava/lang/Throwable;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    .line 10
    :cond_0
    return-void
.end method
