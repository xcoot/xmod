.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    const-string p2, "Ignoring click on "

    .line 9
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const-string p1, "FillUi"

    .line 21
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method
