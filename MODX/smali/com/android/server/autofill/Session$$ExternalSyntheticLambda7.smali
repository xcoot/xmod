.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Landroid/content/IntentSender;

    .line 11
    check-cast p4, Landroid/content/Intent;

    .line 13
    check-cast p5, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p0, p3, p4, p2}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 22
    return-void
.end method
