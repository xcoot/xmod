.class public final Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# instance fields
.field public mDone:Z

.field public final mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/IntentSender;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "OneTimeListener.onCancel(): "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 14
    const-string v2, "SaveUi"

    .line 16
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 26
    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onCancel(Landroid/content/IntentSender;)V

    .line 29
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "OneTimeListener.onDestroy(): "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 14
    const-string v2, "SaveUi"

    .line 16
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 27
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 29
    invoke-interface {p0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onDestroy()V

    .line 32
    return-void
.end method

.method public final onSave()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "OneTimeListener.onSave(): "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 14
    const-string v2, "SaveUi"

    .line 16
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 26
    invoke-interface {p0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onSave()V

    .line 29
    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "OneTimeListener.startIntentSender(): "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v1, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 14
    const-string v2, "SaveUi"

    .line 16
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 26
    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 29
    return-void
.end method
