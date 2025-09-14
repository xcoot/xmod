.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-string p3, "SaveUi"

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const-string/jumbo p1, "isValidLink(): custom description without pending intent"

    .line 19
    .line 20
    .line 21
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string/jumbo p1, "isValidLink(): pending intent not for activity"

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string/jumbo p1, "isValidLink(): no intent"

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 49
    .line 50
    iget p2, p2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 51
    .line 52
    iget-boolean p3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v1, 0x46c

    .line 57
    .line 58
    invoke-static {v1, p1, v0, p2, p3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/16 p3, 0x46a

    .line 69
    .line 70
    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/autofill/ui/SaveUi;->startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    const/4 p2, 0x1

    .line 88
    :goto_1
    return p2
.end method
