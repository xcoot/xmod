.class public final synthetic Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/autofill/ui/SaveUi$2;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/service/autofill/SaveInfo;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/autofill/ui/SaveUi$2;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->semGetNegativeSecondActionListener()Landroid/content/IntentSender;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/service/autofill/InternalOnClickAction;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Applying "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, " after "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " was clicked"

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "SaveUi"

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {v0, p0}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
