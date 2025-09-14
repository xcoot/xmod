.class public final synthetic Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppNotRespondingDialog;

    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppNotRespondingDialog;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const-string p0, ""

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 12
    :goto_0
    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog;

    .line 14
    const/4 v0, 0x2

    .line 15
    new-array v1, v0, [I

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "<GATE-M>APP_ANR:"

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, ","

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/4 v3, 0x0

    .line 41
    aget v3, v1, v3

    .line 43
    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    .line 46
    move-result v4

    .line 47
    div-int/2addr v4, v0

    .line 48
    add-int/2addr v4, v3

    .line 49
    int-to-float v3, v4

    .line 50
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/4 p0, 0x1

    .line 61
    aget p0, v1, p0

    .line 63
    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    .line 66
    move-result v1

    .line 67
    div-int/2addr v1, v0

    .line 68
    add-int/2addr v1, p0

    .line 69
    int-to-float p0, v1

    .line 70
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 73
    move-result p0

    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string p0, "</GATE-M>"

    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    const-string v0, "GATE"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string p0, "<GATE-M>APP_ANR:Storing dumpstate at /data/log/, dumpstate_app_anr</GATE-M>"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    .line 99
    return-void
.end method
