.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    move-object p0, p1

    .line 2
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result p1

    .line 10
    check-cast p3, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p2

    .line 16
    move-object p3, p4

    .line 17
    check-cast p3, Landroid/service/autofill/Dataset;

    .line 19
    check-cast p5, Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    move-result p4

    .line 25
    check-cast p6, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p5

    .line 31
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;ZI)V

    .line 34
    return-void
.end method
