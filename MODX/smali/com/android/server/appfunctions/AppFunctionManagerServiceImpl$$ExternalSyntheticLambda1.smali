.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    check-cast p2, Ljava/lang/Throwable;

    .line 5
    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 13
    :cond_0
    const-string p0, "AppFunctionManagerServiceImpl"

    .line 15
    const-string p1, "Sync was not successful"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_1
    return-void
.end method
